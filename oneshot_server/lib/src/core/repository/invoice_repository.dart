import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de faturas (Invoices).
abstract class IInvoiceRepository {
  Future<Invoice> create(Session session, Invoice invoice);
  Future<Invoice?> findById(Session session, UuidValue id);
  Future<Invoice> update(Session session, Invoice invoice);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<Invoice>> list(
    Session session, {
    String? originModule,
    String? direction,
    InvoiceStatus? status,
    UuidValue? companyId,
    UuidValue? gunsmithId,
    UuidValue? userId,
    int? limit,
    int? offset,
  });
}

class InvoiceRepository implements IInvoiceRepository {
  @override
  Future<Invoice> create(Session session, Invoice invoice) async {
    return await Invoice.db.insertRow(session, invoice);
  }

  @override
  Future<Invoice?> findById(Session session, UuidValue id) async {
    return await Invoice.db.findById(
      session,
      id,
      include: Invoice.include(
        company: Company.include(),
        gunsmith: Gunsmith.include(),
        user: UserProfile.include(),
        drawee: UserProfile.include(),
      ),
    );
  }

  @override
  Future<Invoice> update(Session session, Invoice invoice) async {
    return await Invoice.db.updateRow(session, invoice);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final invoice = await findById(session, id);
    if (invoice == null) return false;
    await Invoice.db.deleteRow(session, invoice);
    return true;
  }

  @override
  Future<List<Invoice>> list(
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
    return await Invoice.db.find(
      session,
      where: (t) {
        Expression where = Constant.bool(true);
        if (originModule != null) {
          where = where & t.originModule.equals(originModule);
        }
        if (direction != null) {
          where = where & t.direction.equals(direction);
        }
        if (status != null) {
          where = where & t.status.equals(status);
        }
        if (companyId != null) {
          where = where & t.companyId.equals(companyId);
        }
        if (gunsmithId != null) {
          where = where & t.gunsmithId.equals(gunsmithId);
        }
        if (userId != null) {
          where = where & t.userId.equals(userId);
        }
        return where;
      },
      limit: limit,
      offset: offset,
      orderBy: (t) => t.dueDate,
      orderDescending: true,
      include: Invoice.include(
        company: Company.include(),
        gunsmith: Gunsmith.include(),
        user: UserProfile.include(),
        drawee: UserProfile.include(),
      ),
    );
  }
}
