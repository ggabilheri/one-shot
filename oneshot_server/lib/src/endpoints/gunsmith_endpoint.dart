import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_onboarding_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GunsmithEndpoint extends Endpoint {
  // --- Gestão de Estabelecimento (Armaria) ---

  /// Registra uma nova armaria no sistema e cria uma subconta Asaas para ela.
  /// A criação é bloqueante: se a subconta Asaas falhar, a armaria não é criada.
  Future<Gunsmith> createGunsmith(Session session, Gunsmith gunsmith) async {
    return await session.db.transaction((transaction) async {
      // 1. Obtém o perfil do proprietário (usuário autenticado)
      final ownerProfile = await sl.getOrCreateProfileUseCase.execute(session);
      gunsmith.ownerId = ownerProfile.id;

      // 2. Persiste o armeiro localmente (dentro da transação)
      var createdGunsmith =
          await sl.gunsmithRepository.createGunsmith(session, gunsmith);

      // 3. Garante que o endereço seja carregado para o onboarding
      if (createdGunsmith.addressId != null && createdGunsmith.address == null) {
        final full = await sl.gunsmithRepository
            .findGunsmithById(session, createdGunsmith.id);
        createdGunsmith = full ?? createdGunsmith;
      }

      // 4. Cria subconta no Asaas (BLOQUEANTE)
      // Se lançar AppException, a transação sofrerá rollback automaticamente.
      final onboarding = AsaasOnboardingService();
      final asaasResponse = await onboarding.createSubaccountForGunsmith(
        session,
        createdGunsmith,
        ownerProfile,
      );

      // 5. Atualiza o armeiro com os IDs retornados
      createdGunsmith = createdGunsmith.copyWith(
        asaasAccountId: asaasResponse.id,
        asaasWalletId: asaasResponse.walletId,
        asaasApiKey: asaasResponse.apiKey,
        asaasOnboardingFailureReason: null,
      );
      
      return await sl.gunsmithRepository.updateGunsmith(session, createdGunsmith);
    });
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
