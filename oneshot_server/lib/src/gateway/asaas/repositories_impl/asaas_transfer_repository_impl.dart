import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_transfer_repository.dart';

class AsaasTransferRepositoryImpl implements IAsaasTransferRepository {
  final AsaasHttpClient _client;

  AsaasTransferRepositoryImpl(this._client);

  @override
  Future<AsaasTransferResponse> create(AsaasTransferRequest request) async {
    try {
      final json = await _client.post('/v3/transfers', body: request.toJson());
      return AsaasTransferResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar transferência: $e');
    }
  }

  @override
  Future<List<AsaasTransferResponse>> list({int? limit, int? offset}) async {
    try {
      final params = <String, String>{
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
      };
      final json = await _client.get('/v3/transfers', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasTransferResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar transferências: $e');
    }
  }

  @override
  Future<List<AsaasFinancialTransactionResponse>> getExtract({String? startDate, String? endDate, int? limit, int? offset}) async {
    try {
      final params = <String, String>{
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
      };
      final json = await _client.get('/v3/financialTransactions', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasFinancialTransactionResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter extrato financeiro: $e');
    }
  }

  @override
  Future<AsaasBalanceResponse> getBalance() async {
    try {
      final json = await _client.get('/v3/finance/balance');
      return AsaasBalanceResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter saldo: $e');
    }
  }
}
