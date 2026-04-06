import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_transaction_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_pix_repository.dart';

class AsaasPixRepositoryImpl implements IAsaasPixRepository {
  final AsaasHttpClient _client;

  AsaasPixRepositoryImpl(this._client);

  @override
  Future<AsaasPixKeyResponse> createKey(AsaasPixKeyRequest request) async {
    try {
      final json = await _client.post('/v3/pix/addressKeys', body: request.toJson());
      return AsaasPixKeyResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar chave Pix: $e');
    }
  }

  @override
  Future<List<AsaasPixKeyResponse>> listKeys() async {
    try {
      final json = await _client.get('/v3/pix/addressKeys');
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasPixKeyResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar chaves Pix: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> createStaticQrCode(Map<String, dynamic> request) async {
    try {
      return await _client.post('/v3/pix/qrCodes/static', body: request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar QR Code estático Pix: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> payQrCode(Map<String, dynamic> request) async {
    try {
      return await _client.post('/v3/pix/qrCodes/pay', body: request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao pagar QR Code Pix: $e');
    }
  }

  @override
  Future<List<AsaasPixTransactionResponse>> listTransactions({int? limit, int? offset, String? startDate, String? endDate}) async {
    try {
      final params = <String, String>{
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
      };
      final json = await _client.get('/v3/pix/transactions', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasPixTransactionResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar transações Pix: $e');
    }
  }
}
