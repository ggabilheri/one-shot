import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para acesso a dados de Empresas.
abstract class ICompanyRepository {
  Future<Company> create(Session session, Company company);
  Future<Company?> findById(Session session, UuidValue id);
  Future<List<Company>> findByOwner(
      Session session, UuidValue ownerId, CompanyType? type);
  Future<List<Company>> listAll(Session session, {UuidValue? parentCompanyId});
  Future<Company> update(Session session, Company company);
  Future<Company?> delete(Session session, UuidValue id);
}

/// Interface para acesso a dados de Filiação (Membership).
abstract class IMembershipRepository {
  Future<Membership> create(Session session, Membership membership);
  Future<Membership?> findByUserAndCompany(
      Session session, UuidValue userId, UuidValue companyId);
  Future<List<Membership>> listByCompany(Session session, UuidValue companyId);
  Future<List<Membership>> listByUser(Session session, UuidValue userId);
  Future<Membership> update(Session session, Membership membership);
}

/// Interface para acesso a dados de Visitas ao Estande (RangeVisit).
abstract class IRangeVisitRepository {
  Future<RangeVisit> create(Session session, RangeVisit visit);
  Future<RangeVisit?> findActiveVisitByUser(Session session, UuidValue userId);
  Future<List<RangeVisit>> listByCompany(Session session, UuidValue companyId);
  Future<List<RangeVisit>> listByUser(Session session, UuidValue userId);
  Future<RangeVisit> update(Session session, RangeVisit visit);
}
