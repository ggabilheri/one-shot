import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_webhook_event_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/account_event_handler.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/payment_event_handler.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/transfer_event_handler.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_webhook_processor_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

class AsaasWebhookProcessorService implements IAsaasWebhookProcessorService {
  final IAsaasWebhookEventRepository _eventRepository;
  final PaymentEventHandler _paymentHandler;
  final TransferEventHandler _transferHandler;
  final AccountEventHandler _accountHandler;

  AsaasWebhookProcessorService({
    required IAsaasWebhookEventRepository eventRepository,
    required PaymentEventHandler paymentHandler,
    required TransferEventHandler transferHandler,
    required AccountEventHandler accountHandler,
  })  : _eventRepository = eventRepository,
        _paymentHandler = paymentHandler,
        _transferHandler = transferHandler,
        _accountHandler = accountHandler;

  @override
  Future<void> receive(Session session, Map<String, dynamic> payload) async {
    final eventType = payload['event'] as String?;
    final eventId = payload['id'] as String? ?? DateTime.now().millisecondsSinceEpoch.toString();

    // Idempotência: ignorar eventos já recebidos
    final existing = await _eventRepository.findByEventId(session, eventId);
    if (existing != null) {
      session.log('AsaasWebhookProcessorService: evento $eventId já recebido, ignorando.', level: LogLevel.info);
      return;
    }

    // Persistir o evento bruto
    final event = await _eventRepository.create(
      session,
      AsaasWebhookEvent(
        eventId: eventId,
        event: eventType ?? 'UNKNOWN',
        payload: jsonEncode(payload),
        processed: false,
        receivedAt: DateTime.now().toUtc(),
      ),
    );

    // Processar imediatamente
    await processEvent(session, event);
  }

  @override
  Future<void> processEvent(Session session, AsaasWebhookEvent event) async {
    try {
      await _dispatch(session, event);
      await _eventRepository.markAsProcessed(session, event);
    } catch (e) {
      await _eventRepository.markAsError(session, event, e.toString());
      session.log('AsaasWebhookProcessorService: erro ao processar evento ${event.event}: $e', level: LogLevel.error);
    }
  }

  Future<void> _dispatch(Session session, AsaasWebhookEvent event) async {
    switch (event.event) {
      // Pagamentos — confirmação
      case 'PAYMENT_CONFIRMED':
        await _paymentHandler.handlePaymentConfirmed(session, event);
      case 'PAYMENT_RECEIVED':
        await _paymentHandler.handlePaymentReceived(session, event);

      // Pagamentos — vencimento
      case 'PAYMENT_OVERDUE':
        await _paymentHandler.handlePaymentOverdue(session, event);

      // Pagamentos — estorno
      case 'PAYMENT_REFUNDED':
        await _paymentHandler.handlePaymentRefunded(session, event);
      case 'PAYMENT_PARTIALLY_REFUNDED':
        await _paymentHandler.handlePaymentPartiallyRefunded(session, event);

      // Pagamentos — criação
      case 'PAYMENT_CREATED':
        await _paymentHandler.handlePaymentCreated(session, event);

      // Transferências
      case 'TRANSFER_DONE':
        await _transferHandler.handleTransferDone(session, event);
      case 'TRANSFER_FAILED':
        await _transferHandler.handleTransferFailed(session, event);
      case 'TRANSFER_CANCELLED':
        await _transferHandler.handleTransferCancelled(session, event);

      // Conta — aprovação
      case 'ACCOUNT_STATUS_BANK_ACCOUNT_INFO_APPROVED':
      case 'ACCOUNT_STATUS_COMMERCIAL_INFO_APPROVED':
      case 'ACCOUNT_STATUS_DOCUMENT_APPROVED':
      case 'ACCOUNT_STATUS_GENERAL_APPROVAL_APPROVED':
        await _accountHandler.handleAccountApproved(session, event);

      // Conta — rejeição
      case 'ACCOUNT_STATUS_BANK_ACCOUNT_INFO_REJECTED':
      case 'ACCOUNT_STATUS_COMMERCIAL_INFO_REJECTED':
      case 'ACCOUNT_STATUS_DOCUMENT_REJECTED':
      case 'ACCOUNT_STATUS_GENERAL_APPROVAL_REJECTED':
        await _accountHandler.handleAccountRejected(session, event);

      // Demais eventos: apenas logados (já persistidos para auditoria)
      default:
        session.log(
          'AsaasWebhookProcessorService: evento ${event.event} recebido e persistido sem handler ativo.',
          level: LogLevel.info,
        );
    }
  }
}
