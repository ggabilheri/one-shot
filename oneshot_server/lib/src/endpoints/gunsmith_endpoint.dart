import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_onboarding_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GunsmithEndpoint extends Endpoint {
  // --- Gestão de Estabelecimento (Armaria) ---

  /// Registra uma nova armaria no sistema e cria uma subconta Asaas para ela.
  /// A criação da subconta Asaas é não-bloqueante: em caso de falha, o armeiro
  /// é cadastrado normalmente e [asaasAccountId] permanece nulo.
  Future<Gunsmith> createGunsmith(Session session, Gunsmith gunsmith) async {
    // 1. Obtém o perfil do proprietário (usuário autenticado)
    final ownerProfile = await sl.getOrCreateProfileUseCase.execute(session);
    gunsmith.ownerId = ownerProfile.id;

    // 2. Persiste o armeiro localmente
    var createdGunsmith =
        await sl.gunsmithRepository.createGunsmith(session, gunsmith);

    // 3. Garante que o endereço seja carregado para o onboarding
    if (createdGunsmith.addressId != null && createdGunsmith.address == null) {
      final full = await sl.gunsmithRepository
          .findGunsmithById(session, createdGunsmith.id);
      createdGunsmith = full ?? createdGunsmith;
    }

    // 4. Cria subconta no Asaas (não-bloqueante)
    try {
      final onboarding = AsaasOnboardingService();
      final asaasResponse = await onboarding.createSubaccountForGunsmith(
        session,
        createdGunsmith,
        ownerProfile,
      );

      // 5. Persiste os IDs retornados ou o motivo da falha
      if (asaasResponse != null) {
        createdGunsmith = createdGunsmith.copyWith(
          asaasAccountId: asaasResponse.id,
          asaasWalletId: asaasResponse.walletId,
          asaasApiKey: asaasResponse.apiKey,
          asaasOnboardingFailureReason: null,
        );
      } else {
        createdGunsmith = createdGunsmith.copyWith(
          asaasOnboardingFailureReason:
              'Dados insuficientes para criar subconta (email, endereço ou telefone ausente).',
        );
      }
      createdGunsmith =
          await sl.gunsmithRepository.updateGunsmith(session, createdGunsmith);
    } catch (e) {
      session.log(
        'GunsmithEndpoint.createGunsmith: erro não tratado no onboarding Asaas: $e',
        level: LogLevel.error,
      );
      try {
        createdGunsmith = createdGunsmith.copyWith(
          asaasOnboardingFailureReason: e.toString(),
        );
        createdGunsmith =
            await sl.gunsmithRepository.updateGunsmith(session, createdGunsmith);
      } catch (_) {}
    }

    return createdGunsmith;
  }

  /// Busca os detalhes de uma armaria pelo ID.
  Future<Gunsmith?> getGunsmith(Session session, UuidValue id) async {
    return await sl.gunsmithRepository.findGunsmithById(session, id);
  }

  /// Busca a armaria de um proprietário específico.
  Future<Gunsmith?> findGunsmithByOwner(
      Session session, UuidValue ownerId) async {
    return await sl.gunsmithRepository.findGunsmithByOwner(session, ownerId);
  }

  /// Lista todas as armarias cadastradas.
  Future<List<Gunsmith>> listGunsmiths(Session session,
      {int? limit, int? offset}) async {
    return await sl.gunsmithRepository
        .listGunsmiths(session, limit: limit, offset: offset);
  }

  /// Atualiza os dados de uma armaria.
  Future<Gunsmith> updateGunsmith(Session session, Gunsmith gunsmith) async {
    return await sl.gunsmithRepository.updateGunsmith(session, gunsmith);
  }

  // --- Clientes ---

  /// Cria um novo cliente para o armeiro logado.
  Future<GunsmithClient> createClient(
      Session session, GunsmithClient client) async {
    return await sl.gunsmithRepository.createClient(session, client);
  }

  /// Busca um cliente pelo CPF.
  Future<GunsmithClient?> findClientByCpf(Session session, String cpf) async {
    return await sl.gunsmithRepository.findClientByCpf(session, cpf);
  }

  /// Lista todos os clientes de um armeiro específico.
  Future<List<GunsmithClient>> getMyClients(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.gunsmithRepository
        .listClients(session, profile.userInfoId!);
  }

  // --- Ordens de Serviço ---

  /// Registra uma nova Ordem de Serviço com seus itens.
  Future<ServiceOrder> registerServiceOrder(
      Session session, ServiceOrder order, List<ServiceOrderItem> items) async {
    return await sl.registerServiceOrderUseCase.execute(session, order, items);
  }

  /// Lista as ordens de serviço de um cliente.
  Future<List<ServiceOrder>> getOrdersByClient(
      Session session, UuidValue clientId) async {
    return await sl.gunsmithRepository.listOrdersByClient(session, clientId);
  }

  /// Busca os itens de uma ordem específica.
  Future<List<ServiceOrderItem>> getOrderItems(
      Session session, UuidValue serviceOrderId) async {
    return await sl.gunsmithRepository.getOrderItems(session, serviceOrderId);
  }
}
