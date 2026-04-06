import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_account.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_account_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_account_service.dart';

class AsaasAccountEndpoint extends Endpoint {
  AsaasAccountService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasAccountRepositoryImpl(client);
    return AsaasAccountService(repository);
  }

  Future<Map<String, dynamic>> createSubaccount(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasAccountRequest(
      name: requestData['name'] as String,
      email: requestData['email'] as String,
      cpfCnpj: requestData['cpfCnpj'] as String,
      birthDate: requestData['birthDate'] as String?,
      companyType: requestData['companyType'] as String?,
      phone: requestData['phone'] as String?,
      mobilePhone: requestData['mobilePhone'] as String?,
      address: requestData['address'] as String?,
      addressNumber: requestData['addressNumber'] as String?,
      province: requestData['province'] as String?,
      postalCode: requestData['postalCode'] as String?,
    );
    final result = await _service(session).createSubaccount(request);
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listSubaccounts(
      Session session, {int? limit, int? offset}) async {
    final result = await _service(session).listSubaccounts(limit: limit, offset: offset);
    return result.map((a) => a.toJson()).toList();
  }

  Future<Map<String, dynamic>> getAccountNumber(Session session) async {
    return await _service(session).getAccountNumber();
  }

  Future<Map<String, dynamic>> getAccountStatus(Session session) async {
    return await _service(session).getAccountStatus();
  }
}
