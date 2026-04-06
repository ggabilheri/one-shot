import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_installment_repository.dart';

class AsaasInstallmentRepositoryImpl implements IAsaasInstallmentRepository {
  final AsaasHttpClient _client;

  AsaasInstallmentRepositoryImpl(this._client);

  @override
  Future<AsaasInstallmentResponse> create(AsaasInstallmentRequest request) async {
    try {
      final json = await _client.post('/v3/installments', body: request.toJson());
      return AsaasInstallmentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar parcelamento: $e');
    }
  }

  @override
  Future<List<AsaasInstallmentResponse>> list({int? limit, int? offset}) async {
    try {
      final params = <String, String>{
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
      };
      final json = await _client.get('/v3/installments', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasInstallmentResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar parcelamentos: $e');
    }
  }

  @override
  Future<AsaasInstallmentResponse> findById(String id) async {
    try {
      final json = await _client.get('/v3/installments/$id');
      return AsaasInstallmentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao buscar parcelamento $id: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _client.delete('/v3/installments/$id');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao remover parcelamento $id: $e');
    }
  }

  @override
  Future<List<AsaasPaymentResponse>> listPayments(String id) async {
    try {
      final json = await _client.get('/v3/installments/$id/payments');
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasPaymentResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar pagamentos do parcelamento $id: $e');
    }
  }
}
