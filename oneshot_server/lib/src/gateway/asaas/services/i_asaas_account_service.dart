import 'package:oneshot_server/src/gateway/asaas/models/asaas_account.dart';

abstract class IAsaasAccountService {
  Future<AsaasAccountResponse> createSubaccount(AsaasAccountRequest request);
  Future<List<AsaasAccountResponse>> listSubaccounts({int? limit, int? offset});
  Future<Map<String, dynamic>> getAccountNumber();
  Future<Map<String, dynamic>> getAccountStatus();
}
