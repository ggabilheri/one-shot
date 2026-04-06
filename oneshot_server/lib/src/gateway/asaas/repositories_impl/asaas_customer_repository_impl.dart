import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_customer_repository.dart';

class AsaasCustomerRepositoryImpl implements IAsaasCustomerRepository {
  final AsaasHttpClient _client;

  AsaasCustomerRepositoryImpl(this._client);

  @override
  Future<AsaasCustomerResponse> create(AsaasCustomerRequest request) async {
    try {
      final json = await _client.post('/v3/customers', body: request.toJson());
      return AsaasCustomerResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar cliente: $e');
    }
  }

  @override
  Future<AsaasCustomerListResponse> list({int? limit, int? offset, String? name, String? cpfCnpj}) async {
    try {
      final params = <String, String>{
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
        if (name != null) 'name': name,
        if (cpfCnpj != null) 'cpfCnpj': cpfCnpj,
      };
      final json = await _client.get('/v3/customers', queryParams: params);
      return AsaasCustomerListResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar clientes: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> findById(String id) async {
    try {
      final json = await _client.get('/v3/customers/$id');
      return AsaasCustomerResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao buscar cliente $id: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> update(String id, AsaasCustomerRequest request) async {
    try {
      final json = await _client.put('/v3/customers/$id', body: request.toJson());
      return AsaasCustomerResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao atualizar cliente $id: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _client.delete('/v3/customers/$id');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao remover cliente $id: $e');
    }
  }

  @override
  Future<AsaasCustomerResponse> restore(String id) async {
    try {
      final json = await _client.post('/v3/customers/$id/restore');
      return AsaasCustomerResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao restaurar cliente $id: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getNotifications(String id) async {
    try {
      return await _client.get('/v3/customers/$id/notifications');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter notificações do cliente $id: $e');
    }
  }
}
