import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_customer_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_customer_service.dart';

class AsaasCustomerService implements IAsaasCustomerService {
  final IAsaasCustomerRepository _repository;

  AsaasCustomerService(this._repository);

  @override
  Future<AsaasCustomerResponse> createCustomer(AsaasCustomerRequest request) async {
    try {
      return await _repository.create(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar cliente no Asaas: $e');
    }
  }

  @override
  Future<AsaasCustomerListResponse> listCustomers({int? limit, int? offset, String? name, String? cpfCnpj}) async {
    try {
      return await _repository.list(limit: limit, offset: offset, name: name, cpfCnpj: cpfCnpj);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar clientes no Asaas: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> getCustomer(String id) async {
    try {
      return await _repository.findById(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao buscar cliente $id no Asaas: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> updateCustomer(String id, AsaasCustomerRequest request) async {
    try {
      return await _repository.update(id, request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao atualizar cliente $id no Asaas: $e');
    }
  }

  @override
  Future<void> deleteCustomer(String id) async {
    try {
      await _repository.delete(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao remover cliente $id no Asaas: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> restoreCustomer(String id) async {
    try {
      return await _repository.restore(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao restaurar cliente $id no Asaas: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getCustomerNotifications(String id) async {
    try {
      return await _repository.getNotifications(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter notificações do cliente $id: $e');
    }
  }
}
