import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_onboarding_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CompanyEndpoint extends Endpoint {
  // -- Empresas --

  /// Cria uma nova empresa no sistema e uma subconta Asaas correspondente.
  /// A criação é bloqueante: se a subconta Asaas falhar, a empresa não é criada.
  Future<Company> createCompany(Session session, Company company) async {
    return await session.db.transaction((transaction) async {
      // 1. Obtém/cria o perfil do proprietário
      final ownerProfile = await sl.getOrCreateProfileUseCase.execute(session);
      company.ownerId = ownerProfile.id;

      // 2. Persiste a empresa localmente (dentro da transação)
      var createdCompany = await sl.companyRepository.create(session, company);

      // 3. Garante que o endereço da empresa seja carregado para o onboarding
      if (createdCompany.addressId != null && createdCompany.address == null) {
        final fullCompany =
            await sl.companyRepository.findById(session, createdCompany.id);
        createdCompany = fullCompany ?? createdCompany;
      }

      // 4. Cria subconta no Asaas (BLOQUEANTE)
      // Se lançar AppException, a transação sofrerá rollback automaticamente.
      final onboarding = AsaasOnboardingService();
      final asaasResponse = await onboarding.createSubaccountForCompany(
        session,
        createdCompany,
        ownerProfile,
      );

      // 5. Atualiza a empresa com os IDs retornados
      createdCompany = createdCompany.copyWith(
        asaasAccountId: asaasResponse.id,
        asaasWalletId: asaasResponse.walletId,
        asaasApiKey: asaasResponse.apiKey,
        asaasOnboardingFailureReason: null,
      );
      
      return await sl.companyRepository.update(session, createdCompany);
    });
  }

  /// Lista todas as empresas ativas.
  Future<List<Company>> listCompanies(Session session) async {
    return await sl.companyRepository.listAll(session);
  }

  /// Atualiza uma empresa existente.
  Future<Company> updateCompany(Session session, Company company) async {
    return await sl.companyRepository.update(session, company);
  }

  /// Exclui uma empresa (Soft Delete) definindo active = false.
  Future<Company> deleteCompany(Session session, UuidValue companyId) async {
    final company = await sl.companyRepository.findById(session, companyId);
    if (company == null) throw Exception('Empresa não encontrada.');
    company.active = false;
    return await sl.companyRepository.update(session, company);
  }

  // -- Filiação (Membership) --

  /// Solicita filiação a uma empresa (Clube).
  Future<Membership> requestMembership(
      Session session, UuidValue companyId) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);

    // Validar se já existe.
    final authInfo = await session.authenticated;
    if (authInfo == null) throw Exception('Não autorizado.');
    final existing = await sl.membershipRepository
        .findByUserAndCompany(session, profile.id, companyId);
    if (existing != null) return existing;

    final membership = Membership(
      userId: profile.id,
      companyId: companyId,
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
      Session session, UuidValue companyId, UuidValue? firearmId) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);

    final visit = RangeVisit(
      userId: profile.id!,
      companyId: companyId,
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
