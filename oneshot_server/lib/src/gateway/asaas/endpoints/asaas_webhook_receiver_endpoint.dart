import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_webhook_event_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_webhook_processor_service.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/account_event_handler.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/payment_event_handler.dart';
import 'package:oneshot_server/src/gateway/asaas/services/handlers/transfer_event_handler.dart';

/// Endpoint público que recebe notificações de eventos enviados pelo Asaas via webhook.
/// A URL deste endpoint deve ser configurada no painel do Asaas como URL de webhook.
/// Não requer autenticação de usuário Serverpod (server-to-server).
class AsaasWebhookReceiverEndpoint extends Endpoint {
  AsaasWebhookProcessorService _processor() {
    return AsaasWebhookProcessorService(
      eventRepository: AsaasWebhookEventRepositoryImpl(),
      paymentHandler: PaymentEventHandler(),
      transferHandler: TransferEventHandler(),
      accountHandler: AccountEventHandler(),
    );
  }

  /// Recebe e processa um evento de webhook enviado pelo Asaas.
  Future<void> handleEvent(Session session, Map<String, dynamic> payload) async {
    await _processor().receive(session, payload);
  }
}
