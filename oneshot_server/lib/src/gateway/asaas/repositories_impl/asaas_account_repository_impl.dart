import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_account.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_account_repository.dart';

class AsaasAccountRepositoryImpl implements IAsaasAccountRepository {
  final AsaasHttpClient _client;

  AsaasAccountRepositoryImpl(this._client);

  @override
  Future<AsaasAccountResponse> createSubaccount(AsaasAccountRequest request) async {
    try {
      final json = await _client.post('/v3/accounts', body: request.toJson());
      return AsaasAccountResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar subconta: $e');
    }
  }

  @override
  Future<List<AsaasAccountResponse>> listSubaccounts({int? limit, int? offset}) async {
    try {
      final params = <String, String>{
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
      };
      final json = await _client.get('/v3/accounts', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasAccountResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar subcontas: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getAccountNumber() async {
    try {
      return await _client.get('/v3/myAccount/accountNumber');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter número da conta: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getAccountStatus() async {
    try {
      return await _client.get('/v3/myAccount/status');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter status da conta: $e');
    }
  }
}
