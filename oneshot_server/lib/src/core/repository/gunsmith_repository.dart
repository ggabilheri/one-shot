import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de armaria.
/// Gerencia Estabelecimentos (Gunsmith), Clientes, Ordens de Serviço e Vinculação com Estoque.
abstract class IGunsmithRepository {
  // Estabelecimentos (Gunsmith)
  Future<Gunsmith> createGunsmith(Session session, Gunsmith gunsmith);
  Future<Gunsmith?> findGunsmithById(Session session, UuidValue id);
  Future<Gunsmith?> findGunsmithByOwner(Session session, UuidValue ownerId);
  Future<List<Gunsmith>> listGunsmiths(Session session, {int? limit, int? offset});
  Future<Gunsmith> updateGunsmith(Session session, Gunsmith gunsmith);

  // Clientes
  Future<GunsmithClient> createClient(Session session, GunsmithClient client);
  Future<GunsmithClient?> findClientByCpf(Session session, String cpf);
  Future<List<GunsmithClient>> listClients(Session session, int gunsmithUserId);

  // Ordens de Serviço
  Future<ServiceOrder> createServiceOrder(
      Session session, ServiceOrder order, List<ServiceOrderItem> items);
  Future<ServiceOrder?> findOrderById(Session session, UuidValue id);
  Future<List<ServiceOrder>> listOrdersByClient(
      Session session, UuidValue clientId);
  Future<ServiceOrder> updateOrderStatus(
      Session session, UuidValue id, String status);

  // Itens de Ordem de Serviço
  Future<List<ServiceOrderItem>> getOrderItems(
      Session session, UuidValue serviceOrderId);
}

/// Implementação do Repositório de Armaria utilizando o driver de DB do Serverpod.
/// Segue o padrão de interface e implementação no mesmo arquivo.
class GunsmithRepository implements IGunsmithRepository {
  // --- Métodos de Estabelecimento (Gunsmith) ---

  @override
  Future<Gunsmith> createGunsmith(Session session, Gunsmith gunsmith) async {
    return await Gunsmith.db.insertRow(session, gunsmith);
  }

  @override
  Future<Gunsmith?> findGunsmithById(Session session, UuidValue id) async {
    return await Gunsmith.db.findById(
      session,
      id,
      include: Gunsmith.include(
        address: Address.include(),
        owner: UserProfile.include(),
      ),
    );
  }

  @override
  Future<Gunsmith?> findGunsmithByOwner(Session session, UuidValue ownerId) async {
    return await Gunsmith.db.findFirstRow(
      session,
      where: (t) => t.ownerId.equals(ownerId),
      include: Gunsmith.include(
        address: Address.include(),
        owner: UserProfile.include(),
      ),
    );
  }

  @override
  Future<List<Gunsmith>> listGunsmiths(Session session, {int? limit, int? offset}) async {
    return await Gunsmith.db.find(
      session,
      limit: limit,
      offset: offset,
      orderBy: (t) => t.name,
      include: Gunsmith.include(
        address: Address.include(),
        owner: UserProfile.include(),
      ),
    );
  }

  @override
  Future<Gunsmith> updateGunsmith(Session session, Gunsmith gunsmith) async {
    return await Gunsmith.db.updateRow(session, gunsmith);
  }

  // --- Métodos Originais (Mantidos para retrocompatibilidade) ---

  @override
  Future<GunsmithClient> createClient(
      Session session, GunsmithClient client) async {
    return await GunsmithClient.db.insertRow(session, client);
  }

  @override
  Future<GunsmithClient?> findClientByCpf(Session session, String cpf) async {
    return await GunsmithClient.db.findFirstRow(
      session,
      where: (t) => t.cpf.equals(cpf),
    );
  }

  @override
  Future<List<GunsmithClient>> listClients(
      Session session, int gunsmithUserId) async {
    return await GunsmithClient.db.find(
      session,
      where: (t) => t.gunsmithUserInfoId.equals(gunsmithUserId),
    );
  }

  @override
  Future<ServiceOrder> createServiceOrder(
      Session session, ServiceOrder order, List<ServiceOrderItem> items) async {
    return await session.db.transaction<ServiceOrder>((transaction) async {
      final savedOrder = await ServiceOrder.db
          .insertRow(session, order, transaction: transaction);

      for (var item in items) {
        item.serviceOrderId = savedOrder.id;
        await ServiceOrderItem.db
            .insertRow(session, item, transaction: transaction);
      }

      return savedOrder;
    });
  }

  @override
  Future<ServiceOrder?> findOrderById(Session session, UuidValue id) async {
    return await ServiceOrder.db.findById(session, id);
  }

  @override
  Future<List<ServiceOrder>> listOrdersByClient(
      Session session, UuidValue clientId) async {
    return await ServiceOrder.db.find(
      session,
      where: (t) => t.clientId.equals(clientId),
      orderBy: (t) => t.entryDate,
      orderDescending: true,
    );
  }

  @override
  Future<ServiceOrder> updateOrderStatus(
      Session session, UuidValue id, String status) async {
    final order = await ServiceOrder.db.findById(session, id);
    if (order == null) throw Exception('Ordem de serviço não encontrada.');
    // AtualmenteServiceOrder não tem campo status, mas mantemos para a interface.
    return order;
  }

  @override
  Future<List<ServiceOrderItem>> getOrderItems(
      Session session, UuidValue serviceOrderId) async {
    return await ServiceOrderItem.db.find(
      session,
      where: (t) => t.serviceOrderId.equals(serviceOrderId),
    );
  }
}
