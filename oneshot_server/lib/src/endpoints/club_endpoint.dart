import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class ClubEndpoint extends Endpoint {
  // -- Clubes --

  /// Cria um novo clube de tiro no sistema.
  Future<Club> createClub(Session session, Club club) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    club.ownerId = profile.id;
    return await sl.clubRepository.create(session, club);
  }

  /// Lista todos os clubes ativos.
  Future<List<Club>> listClubs(Session session) async {
    return await sl.clubRepository.listAll(session);
  }

  // -- Filiação (Membership) --

  /// Solicita filiação a um clube.
  Future<Membership> requestMembership(
      Session session, UuidValue clubId) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);

    // Validar se já existe.
    final authInfo = await session.authenticated;
    if (authInfo == null) throw Exception('Não autorizado.');
    final existing = await sl.membershipRepository
        .findByUserAndClub(session, profile.id, clubId);
    if (existing != null) return existing;

    final membership = Membership(
      userId: profile.id,
      clubId: clubId,
      startDate: DateTime.now(),
      status: MembershipStatus.active,
      planName: 'Basic',
    );

    return await sl.membershipRepository.create(session, membership);
  }

  /// Lista minhas filiações.
  Future<List<Membership>> getMyMemberships(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.membershipRepository.listByUser(session, profile.id);
  }

  // -- Visitas (Range Visits) --

  /// Registra entrada no estande (Check-in).
  Future<RangeVisit> checkIn(
      Session session, UuidValue clubId, UuidValue? firearmId) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);

    final visit = RangeVisit(
      userId: profile.id!,
      clubId: clubId,
      firearmId: firearmId!,
      checkIn: DateTime.now(),
    );

    return await sl.registerRangeVisitUseCase.checkIn(session, visit);
  }

  /// Registra saída do estande (Check-out).
  Future<RangeVisit> checkOut(
      Session session, UuidValue visitId, int shotsFired) async {
    return await sl.registerRangeVisitUseCase
        .checkOut(session, visitId, shotsFired);
  }

  /// Lista minhas visitas.
  Future<List<RangeVisit>> getMyVisits(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.rangeVisitRepository.listByUser(session, profile.id);
  }
}
