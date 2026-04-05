import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PaymentEndpoint extends Endpoint {
  /// Registra um novo pagamento vinculado a uma fatura.
  Future<Payment> registerPayment(Session session, Payment payment) async {
    return await sl.paymentRepository.create(session, payment);
  }

  /// Lista pagamentos de uma fatura específica.
  Future<List<Payment>> getPaymentsByInvoice(
      Session session, UuidValue invoiceId) async {
    return await sl.paymentRepository.findByInvoiceId(session, invoiceId);
  }

  /// Lista todos os pagamentos (Geral ou por período).
  Future<List<Payment>> listPayments(Session session,
      {int? limit, int? offset}) async {
    return await sl.paymentRepository.list(session,
        limit: limit, offset: offset);
  }
}
