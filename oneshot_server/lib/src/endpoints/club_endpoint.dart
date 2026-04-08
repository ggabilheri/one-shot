import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_onboarding_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ClubEndpoint extends Endpoint {
  // -- Clubes --

  /// Cria um novo clube de tiro no sistema e uma subconta Asaas correspondente.
  /// A criação é bloqueante: se a subconta Asaas falhar, o clube não é criado.
  Future<Club> createClub(Session session, Club club) async {
    return await session.db.transaction((transaction) async {
      // 1. Obtém/cria o perfil do proprietário
      final ownerProfile = await sl.getOrCreateProfileUseCase.execute(session);
      club.ownerId = ownerProfile.id;

      // 2. Persiste o clube localmente (dentro da transação)
      var createdClub = await sl.clubRepository.create(session, club);

      // 3. Garante que o endereço do clube seja carregado para o onboarding
      if (createdClub.addressId != null && createdClub.address == null) {
        final fullClub =
            await sl.clubRepository.findById(session, createdClub.id);
        createdClub = fullClub ?? createdClub;
      }

      // 4. Cria subconta no Asaas (BLOQUEANTE)
      // Se lançar AppException, a transação sofrerá rollback automaticamente.
      final onboarding = AsaasOnboardingService();
      final asaasResponse = await onboarding.createSubaccountForClub(
        session,
        createdClub,
        ownerProfile,
      );

      // 5. Atualiza o clube com os IDs retornados
      createdClub = createdClub.copyWith(
        asaasAccountId: asaasResponse.id,
        asaasWalletId: asaasResponse.walletId,
        asaasApiKey: asaasResponse.apiKey,
        asaasOnboardingFailureReason: null,
      );
      
      return await sl.clubRepository.update(session, createdClub);
    });
  }

  /// Lista todos os clubes ativos.
  Future<List<Club>> listClubs(Session session) async {
    return await sl.clubRepository.listAll(session);
  }

  /// Atualiza um clube existente.
  Future<Club> updateClub(Session session, Club club) async {
    return await sl.clubRepository.update(session, club);
  }

  /// Exclui um clube (Soft Delete) definindo active = false.
  Future<Club> deleteClub(Session session, UuidValue clubId) async {
    final club = await sl.clubRepository.findById(session, clubId);
    if (club == null) throw Exception('Clube não encontrado.');
    club.active = false;
    return await sl.clubRepository.update(session, club);
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
