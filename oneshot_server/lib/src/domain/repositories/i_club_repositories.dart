import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para acesso a dados de Clubes.
abstract class IClubRepository {
  Future<Club> create(Session session, Club club);
  Future<Club?> findById(Session session, UuidValue id);
  Future<List<Club>> findByOwner(Session session, UuidValue ownerId);
  Future<List<Club>> listAll(Session session);
  Future<Club> update(Session session, Club club);
}

/// Interface para acesso a dados de Filiação (Membership).
abstract class IMembershipRepository {
  Future<Membership> create(Session session, Membership membership);
  Future<Membership?> findByUserAndClub(Session session, UuidValue userId, UuidValue clubId);
  Future<List<Membership>> listByClub(Session session, UuidValue clubId);
  Future<List<Membership>> listByUser(Session session, UuidValue userId);
  Future<Membership> update(Session session, Membership membership);
}

/// Interface para acesso a dados de Visitas ao Estande (RangeVisit).
abstract class IRangeVisitRepository {
  Future<RangeVisit> create(Session session, RangeVisit visit);
  Future<RangeVisit?> findActiveVisitByUser(Session session, UuidValue userId);
  Future<List<RangeVisit>> listByClub(Session session, UuidValue clubId);
  Future<List<RangeVisit>> listByUser(Session session, UuidValue userId);
  Future<RangeVisit> update(Session session, RangeVisit visit);
}
