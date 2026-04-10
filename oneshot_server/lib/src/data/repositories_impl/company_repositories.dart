import 'package:oneshot_server/src/domain/repositories/i_company_repositories.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Empresa.
class CompanyRepository implements ICompanyRepository {
  @override
  Future<Company> create(Session session, Company company) async {
    if (company.address != null) {
      final existing = await Address.db.findById(session, company.address!.id);
      if (existing == null) {
        await Address.db.insertRow(session, company.address!);
      } else {
        await Address.db.updateRow(session, company.address!);
      }
      company.addressId = company.address!.id;
    }
    return await Company.db.insertRow(session, company);
  }

  @override
  Future<Company?> findById(Session session, UuidValue id) async {
    return await Company.db.findById(
      session,
      id,
      include: Company.include(address: Address.include()),
    );
  }

  @override
  Future<List<Company>> findByOwner(
      Session session, UuidValue ownerId, CompanyType? type) async {
    return await Company.db.find(
      session,
      where: (t) => t.ownerId.equals(ownerId) & t.type.equals(type),
      include: Company.include(address: Address.include()),
    );
  }

  @override
  Future<List<Company>> listAll(Session session,
      {UuidValue? parentCompanyId}) async {
    return await Company.db.find(
      session,
      where: (t) {
        var where = t.active.equals(true);
        if (parentCompanyId != null) {
          where = where & t.parentCompanyId.equals(parentCompanyId);
        }
        return where;
      },
      include: Company.include(
          address: Address.include(), parentCompany: Company.include()),
    );
  }

  @override
  Future<Company> update(Session session, Company company) async {
    if (company.address != null) {
      final existing = await Address.db.findById(session, company.address!.id);
      if (existing != null) {
        await Address.db.updateRow(session, company.address!);
      } else {
        await Address.db.insertRow(session, company.address!);
      }
      company.addressId = company.address!.id;
    }
    return await Company.db.updateRow(session, company);
  }

  @override
  Future<Company?> delete(Session session, UuidValue id) async {
    final company = await Company.db.findById(session, id);
    if (company != null) {
      return await Company.db.deleteRow(session, company);
    }
    return null;
  }
}

/// Implementação do Repositório de Filiação (Membership).
class MembershipRepository implements IMembershipRepository {
  @override
  Future<Membership> create(Session session, Membership membership) async {
    return await Membership.db.insertRow(session, membership);
  }

  @override
  Future<Membership?> findByUserAndCompany(
      Session session, UuidValue userId, UuidValue companyId) async {
    return await Membership.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.companyId.equals(companyId),
    );
  }

  @override
  Future<List<Membership>> listByCompany(
      Session session, UuidValue companyId) async {
    return await Membership.db.find(
      session,
      where: (t) => t.companyId.equals(companyId),
    );
  }

  @override
  Future<List<Membership>> listByUser(Session session, UuidValue userId) async {
    return await Membership.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  @override
  Future<Membership> update(Session session, Membership membership) async {
    return await Membership.db.updateRow(session, membership);
  }
}

/// Implementação do Repositório de Visitas ao Estande (RangeVisit).
class RangeVisitRepository implements IRangeVisitRepository {
  @override
  Future<RangeVisit> create(Session session, RangeVisit visit) async {
    return await RangeVisit.db.insertRow(session, visit);
  }

  @override
  Future<RangeVisit?> findActiveVisitByUser(
      Session session, UuidValue userId) async {
    return await RangeVisit.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.checkOut.equals(null),
    );
  }

  @override
  Future<List<RangeVisit>> listByCompany(
      Session session, UuidValue companyId) async {
    return await RangeVisit.db.find(
      session,
      where: (t) => t.companyId.equals(companyId),
    );
  }

  @override
  Future<List<RangeVisit>> listByUser(Session session, UuidValue userId) async {
    return await RangeVisit.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  @override
  Future<RangeVisit> update(Session session, RangeVisit visit) async {
    return await RangeVisit.db.updateRow(session, visit);
  }
}
