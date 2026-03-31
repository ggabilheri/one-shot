import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de armaria.
/// Gerencia Clientes, Ordens de Serviço e Vinculação com Estoque.
abstract class IGunsmithRepository {
  // Clientes
  Future<GunsmithClient> createClient(Session session, GunsmithClient client);
  Future<GunsmithClient?> findClientByCpf(Session session, String cpf);
  Future<List<GunsmithClient>> listClients(Session session, UuidValue gunsmithUserId);

  // Ordens de Serviço
  Future<ServiceOrder> createServiceOrder(Session session, ServiceOrder order, List<ServiceOrderItem> items);
  Future<ServiceOrder?> findOrderById(Session session, UuidValue id);
  Future<List<ServiceOrder>> listOrdersByClient(Session session, UuidValue clientId);
  Future<ServiceOrder> updateOrderStatus(Session session, UuidValue id, String status);

  // Itens de Ordem de Serviço
  Future<List<ServiceOrderItem>> getOrderItems(Session session, UuidValue serviceOrderId);
}
