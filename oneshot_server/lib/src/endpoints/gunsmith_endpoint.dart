import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GunsmithEndpoint extends Endpoint {
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
    final authId = session.authenticated!.authId;

    // Aqui usamos o authId (int) para buscar o perfil do armeiro (UuidValue)
    // No futuro, teremos um UseCase para resolver essa identidade.
    return await sl.gunsmithRepository
        .listClients(session, UuidValue.fromString(authId.toString()));
  }

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
