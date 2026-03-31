import 'package:oneshot_server/src/domain/repositories/i_club_repositories.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Clube.
class ClubRepository implements IClubRepository {
  @override
  Future<Club> create(Session session, Club club) async {
    return await Club.db.insertRow(session, club);
  }

  @override
  Future<Club?> findById(Session session, UuidValue id) async {
    return await Club.db.findById(session, id);
  }

  @override
  Future<List<Club>> findByOwner(Session session, UuidValue ownerId) async {
    return await Club.db.find(
      session,
      where: (t) => t.ownerId.equals(ownerId),
    );
  }

  @override
  Future<List<Club>> listAll(Session session) async {
    return await Club.db.find(
      session,
      where: (t) => t.active.equals(true),
    );
  }

  @override
  Future<Club> update(Session session, Club club) async {
    return await Club.db.updateRow(session, club);
  }
}

/// Implementação do Repositório de Filiação (Membership).
class MembershipRepository implements IMembershipRepository {
  @override
  Future<Membership> create(Session session, Membership membership) async {
    return await Membership.db.insertRow(session, membership);
  }

  @override
  Future<Membership?> findByUserAndClub(
      Session session, UuidValue userId, UuidValue clubId) async {
    return await Membership.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.clubId.equals(clubId),
    );
  }

  @override
  Future<List<Membership>> listByClub(Session session, UuidValue clubId) async {
    return await Membership.db.find(
      session,
      where: (t) => t.clubId.equals(clubId),
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
  Future<List<RangeVisit>> listByClub(Session session, UuidValue clubId) async {
    return await RangeVisit.db.find(
      session,
      where: (t) => t.clubId.equals(clubId),
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
