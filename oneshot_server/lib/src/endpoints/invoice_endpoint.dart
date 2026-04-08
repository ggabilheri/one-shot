import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class InvoiceEndpoint extends Endpoint {
  /// Cria uma nova fatura com seus itens.
  Future<Invoice> createInvoice(
      Session session, Invoice invoice, List<InvoiceItem> items) async {
    return await session.db.transaction((transaction) async {
      // 1. Salvar fatura
      final savedInvoice = await sl.invoiceRepository.create(session, invoice);

      // 2. Salvar itens vinculados
      for (var item in items) {
        item.invoiceId = savedInvoice.id;
        await sl.invoiceItemRepository.create(session, item);
      }

      return savedInvoice;
    });
  }

  /// Busca uma fatura detalhada pelo ID.
  Future<Invoice?> getInvoice(Session session, UuidValue id) async {
    return await sl.invoiceRepository.findById(session, id);
  }

  /// Lista faturas com filtros dinâmicos.
  Future<List<Invoice>> listInvoices(
    Session session, {
    String? originModule,
    String? direction,
    InvoiceStatus? status,
    UuidValue? companyId,
    UuidValue? gunsmithId,
    UuidValue? userId,
    int? limit,
    int? offset,
  }) async {
    return await sl.invoiceRepository.list(
      session,
      originModule: originModule,
      direction: direction,
      status: status,
      companyId: companyId,
      gunsmithId: gunsmithId,
      userId: userId,
      limit: limit,
      offset: offset,
    );
  }

  /// Atualiza uma fatura.
  Future<Invoice> updateInvoice(Session session, Invoice invoice) async {
    return await sl.invoiceRepository.update(session, invoice);
  }

  /// Remove uma fatura.
  Future<bool> deleteInvoice(Session session, UuidValue id) async {
    return await sl.invoiceRepository.delete(session, id);
  }

  /// Busca itens de uma fatura.
  Future<List<InvoiceItem>> getInvoiceItems(
      Session session, UuidValue invoiceId) async {
    return await sl.invoiceItemRepository.findByInvoiceId(session, invoiceId);
  }
}
