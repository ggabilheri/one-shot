import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

/// Handler responsável por processar eventos de pagamento recebidos via webhook do Asaas.
/// Atualiza o modelo local [Payment] e [Invoice] conforme o evento recebido.
class PaymentEventHandler {
  Future<void> handlePaymentConfirmed(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      if (asaasId == null) return;

      final payments = await Payment.db.find(
        session,
        where: (t) => t.asaasPaymentId.equals(asaasId),
        limit: 1,
      );
      if (payments.isEmpty) return;

      final payment = payments.first.copyWith(
        status: PaymentStatus.confirmed,
        paymentDate: DateTime.now().toUtc(),
        asaasNetValue: (payload['payment']?['netValue'] as num?)?.toDouble(),
      );
      await Payment.db.updateRow(session, payment);

      // Atualiza Invoice associada
      if (payment.invoiceId != null) {
        final invoices = await Invoice.db.find(
          session,
          where: (t) => t.id.equals(payment.invoiceId!),
          limit: 1,
        );
        if (invoices.isNotEmpty) {
          final invoice = invoices.first.copyWith(status: InvoiceStatus.paid);
          await Invoice.db.updateRow(session, invoice);
        }
      }
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentConfirmed error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handlePaymentReceived(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      if (asaasId == null) return;

      final payments = await Payment.db.find(
        session,
        where: (t) => t.asaasPaymentId.equals(asaasId),
        limit: 1,
      );
      if (payments.isEmpty) return;

      final payment = payments.first.copyWith(
        status: PaymentStatus.received,
        paymentDate: DateTime.now().toUtc(),
      );
      await Payment.db.updateRow(session, payment);
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentReceived error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handlePaymentOverdue(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      if (asaasId == null) return;

      final payments = await Payment.db.find(
        session,
        where: (t) => t.asaasPaymentId.equals(asaasId),
        limit: 1,
      );
      if (payments.isEmpty) return;

      final payment = payments.first.copyWith(status: PaymentStatus.overdue);
      await Payment.db.updateRow(session, payment);

      if (payment.invoiceId != null) {
        final invoices = await Invoice.db.find(
          session,
          where: (t) => t.id.equals(payment.invoiceId!),
          limit: 1,
        );
        if (invoices.isNotEmpty) {
          final invoice = invoices.first.copyWith(status: InvoiceStatus.overdue);
          await Invoice.db.updateRow(session, invoice);
        }
      }
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentOverdue error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handlePaymentRefunded(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      if (asaasId == null) return;

      final payments = await Payment.db.find(
        session,
        where: (t) => t.asaasPaymentId.equals(asaasId),
        limit: 1,
      );
      if (payments.isEmpty) return;

      final payment = payments.first.copyWith(
        status: PaymentStatus.refunded,
        asaasRefundedAt: DateTime.now().toUtc(),
      );
      await Payment.db.updateRow(session, payment);
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentRefunded error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handlePaymentCreated(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      final externalRef = payload['payment']?['externalReference'] as String?;
      if (asaasId == null || externalRef == null) return;

      // Se o pagamento tiver externalReference vinculado ao nosso ID local, atualizar
      session.log('PaymentEventHandler.handlePaymentCreated: payment $asaasId criado no Asaas', level: LogLevel.info);
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentCreated error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handlePaymentPartiallyRefunded(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final asaasId = payload['payment']?['id'] as String?;
      if (asaasId == null) return;

      final payments = await Payment.db.find(
        session,
        where: (t) => t.asaasPaymentId.equals(asaasId),
        limit: 1,
      );
      if (payments.isEmpty) return;

      final payment = payments.first.copyWith(status: PaymentStatus.partiallyRefunded);
      await Payment.db.updateRow(session, payment);
    } catch (e) {
      session.log('PaymentEventHandler.handlePaymentPartiallyRefunded error: $e', level: LogLevel.error);
      rethrow;
    }
  }
}
