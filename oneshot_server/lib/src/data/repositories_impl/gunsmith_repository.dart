import 'package:oneshot_server/src/domain/repositories/i_gunsmith_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Armaria utilizando o driver de DB do Serverpod.
class GunsmithRepository implements IGunsmithRepository {
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
      where: (t) => t.gunsmithUserInfo.id.equals(gunsmithUserId),
    );
  }

  @override
  Future<ServiceOrder> createServiceOrder(
      Session session, ServiceOrder order, List<ServiceOrderItem> items) async {
    return await session.db.transaction<ServiceOrder>((transaction) async {
      // 1. Salvar a Ordem de Serviço
      final savedOrder = await ServiceOrder.db
          .insertRow(session, order, transaction: transaction);

      // 2. Salvar os Itens da Ordem vinculando ao ID da Ordem
      for (var item in items) {
        item.serviceOrderId = savedOrder.id!;
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

    // Supondo que temos um campo status ou via notas.
    // Como no modelo atual não definimos um enum de status explicitamente,
    // poderíamos usar o campo notes ou adicionar o campo no futuro.
    // Por enquanto, apenas retornamos a ordem para manter a interface.
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
