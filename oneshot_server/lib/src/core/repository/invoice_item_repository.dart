import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de itens de fatura.
abstract class IInvoiceItemRepository {
  Future<InvoiceItem> create(Session session, InvoiceItem item);
  Future<List<InvoiceItem>> createMany(Session session, List<InvoiceItem> items);
  Future<List<InvoiceItem>> findByInvoiceId(Session session, UuidValue invoiceId);
  Future<bool> delete(Session session, UuidValue id);
}

class InvoiceItemRepository implements IInvoiceItemRepository {
  @override
  Future<InvoiceItem> create(Session session, InvoiceItem item) async {
    return await InvoiceItem.db.insertRow(session, item);
  }

  @override
  Future<List<InvoiceItem>> createMany(
      Session session, List<InvoiceItem> items) async {
    return await InvoiceItem.db.insert(session, items);
  }

  @override
  Future<List<InvoiceItem>> findByInvoiceId(
      Session session, UuidValue invoiceId) async {
    return await InvoiceItem.db.find(
      session,
      where: (t) => t.invoiceId.equals(invoiceId),
    );
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final item = await InvoiceItem.db.findById(session, id);
    if (item == null) return false;
    await InvoiceItem.db.deleteRow(session, item);
    return true;
  }
}
