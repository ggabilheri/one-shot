import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_response.dart';

abstract class IAsaasCustomerService {
  Future<AsaasCustomerResponse> createCustomer(AsaasCustomerRequest request);
  Future<AsaasCustomerListResponse> listCustomers({int? limit, int? offset, String? name, String? cpfCnpj});
  Future<AsaasCustomerResponse> getCustomer(String id);
  Future<AsaasCustomerResponse> updateCustomer(String id, AsaasCustomerRequest request);
  Future<void> deleteCustomer(String id);
  Future<AsaasCustomerResponse> restoreCustomer(String id);
  Future<Map<String, dynamic>> getCustomerNotifications(String id);
}
