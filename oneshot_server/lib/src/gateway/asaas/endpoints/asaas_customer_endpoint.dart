import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_customer_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_customer_service.dart';

class AsaasCustomerEndpoint extends Endpoint {
  AsaasCustomerService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasCustomerRepositoryImpl(client);
    return AsaasCustomerService(repository);
  }

  Future<Map<String, dynamic>> createCustomer(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasCustomerRequest(
      name: requestData['name'] as String,
      cpfCnpj: requestData['cpfCnpj'] as String,
      email: requestData['email'] as String?,
      phone: requestData['phone'] as String?,
      mobilePhone: requestData['mobilePhone'] as String?,
      address: requestData['address'] as String?,
      addressNumber: requestData['addressNumber'] as String?,
      complement: requestData['complement'] as String?,
      province: requestData['province'] as String?,
      city: requestData['city'] as String?,
      state: requestData['state'] as String?,
      country: requestData['country'] as String?,
      postalCode: requestData['postalCode'] as String?,
      externalReference: requestData['externalReference'] as String?,
    );
    final result = await _service(session).createCustomer(request);
    return result.toJson();
  }

  Future<Map<String, dynamic>> listCustomers(
      Session session, {int? limit, int? offset, String? name, String? cpfCnpj}) async {
    final result = await _service(session).listCustomers(
      limit: limit, offset: offset, name: name, cpfCnpj: cpfCnpj,
    );
    return {
      'totalCount': result.totalCount,
      'hasMore': result.hasMore,
      'data': result.data.map((c) => c.toJson()).toList(),
    };
  }

  Future<Map<String, dynamic>> getCustomer(Session session, String id) async {
    final result = await _service(session).getCustomer(id);
    return result.toJson();
  }

  Future<Map<String, dynamic>> updateCustomer(
      Session session, String id, Map<String, dynamic> requestData) async {
    final request = AsaasCustomerRequest(
      name: requestData['name'] as String,
      cpfCnpj: requestData['cpfCnpj'] as String,
      email: requestData['email'] as String?,
      phone: requestData['phone'] as String?,
    );
    final result = await _service(session).updateCustomer(id, request);
    return result.toJson();
  }

  Future<void> deleteCustomer(Session session, String id) async {
    await _service(session).deleteCustomer(id);
  }

  Future<Map<String, dynamic>> restoreCustomer(Session session, String id) async {
    final result = await _service(session).restoreCustomer(id);
    return result.toJson();
  }

  Future<Map<String, dynamic>> getCustomerNotifications(Session session, String id) async {
    return await _service(session).getCustomerNotifications(id);
  }
}
