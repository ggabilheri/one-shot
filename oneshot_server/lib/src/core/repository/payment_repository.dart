import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de pagamentos.
abstract class IPaymentRepository {
  Future<Payment> create(Session session, Payment payment);
  Future<List<Payment>> findByInvoiceId(Session session, UuidValue invoiceId);
  Future<List<Payment>> list(Session session, {int? limit, int? offset});
}

class PaymentRepository implements IPaymentRepository {
  @override
  Future<Payment> create(Session session, Payment payment) async {
    return await session.db.transaction((transaction) async {
      // 1. Inserir o pagamento
      final createdPayment = await Payment.db.insertRow(
        session, 
        payment,
        transaction: transaction
      );

      // 2. Atualizar o status da fatura se estiver vinculada
      if (payment.invoiceId != null) {
        final invoice = await Invoice.db.findById(
          session, 
          payment.invoiceId!,
          transaction: transaction
        );
        
        if (invoice != null) {
          // Lógica simplificada: Se houver pagamento, calculamos se quitou
          final payments = await Payment.db.find(
            session,
            where: (t) => t.invoiceId.equals(payment.invoiceId!),
            transaction: transaction,
          );
          
          double totalPaid = payments.fold(0, (sum, p) => sum + p.amountPaid);
          
          if (totalPaid >= invoice.finalAmount) {
            invoice.status = InvoiceStatus.paid;
          } else if (totalPaid > 0) {
            invoice.status = InvoiceStatus.partiallyPaid;
          }
          
          await Invoice.db.updateRow(
            session, 
            invoice, 
            transaction: transaction
          );
        }
      }

      return createdPayment;
    });
  }

  @override
  Future<List<Payment>> findByInvoiceId(
      Session session, UuidValue invoiceId) async {
    return await Payment.db.find(
      session,
      where: (t) => t.invoiceId.equals(invoiceId),
      orderBy: (t) => t.paymentDate,
    );
  }

  @override
  Future<List<Payment>> list(Session session, {int? limit, int? offset}) async {
    return await Payment.db.find(
      session,
      limit: limit,
      offset: offset,
      orderBy: (t) => t.paymentDate,
      orderDescending: true,
      include: Payment.include(invoice: Invoice.include()),
    );
  }
}
