import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_response.dart';

abstract class IAsaasCustomerRepository {
  Future<AsaasCustomerResponse> create(AsaasCustomerRequest request);
  Future<AsaasCustomerListResponse> list({int? limit, int? offset, String? name, String? cpfCnpj});
  Future<AsaasCustomerResponse> findById(String id);
  Future<AsaasCustomerResponse> update(String id, AsaasCustomerRequest request);
  Future<void> delete(String id);
  Future<AsaasCustomerResponse> restore(String id);
  Future<Map<String, dynamic>> getNotifications(String id);
}
