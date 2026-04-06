import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_credit_card_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_qr_code_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_payment_repository.dart';

class AsaasPaymentRepositoryImpl implements IAsaasPaymentRepository {
  final AsaasHttpClient _client;

  AsaasPaymentRepositoryImpl(this._client);

  @override
  Future<AsaasPaymentResponse> create(AsaasPaymentRequest request) async {
    try {
      final json = await _client.post('/v3/payments', body: request.toJson());
      return AsaasPaymentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar pagamento: $e');
    }
  }

  @override
  Future<List<AsaasPaymentResponse>> list({String? customer, String? status, int? limit, int? offset}) async {
    try {
      final params = <String, String>{
        if (customer != null) 'customer': customer,
        if (status != null) 'status': status,
        if (limit != null) 'limit': '$limit',
        if (offset != null) 'offset': '$offset',
      };
      final json = await _client.get('/v3/payments', queryParams: params);
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasPaymentResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar pagamentos: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> captureAuthorized(String id) async {
    try {
      final json = await _client.post('/v3/payments/$id/captureAuthorizedPayment');
      return AsaasPaymentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao capturar pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> payWithCreditCard(String id, AsaasCreditCardPaymentRequest request) async {
    try {
      final json = await _client.post('/v3/payments/$id/payWithCreditCard', body: request.toJson());
      return AsaasPaymentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao pagar com cartão: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getBillingInfo(String id) async {
    try {
      return await _client.get('/v3/payments/$id/billingInfo');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter billing info de $id: $e');
    }
  }

  @override
  Future<String> getStatus(String id) async {
    try {
      final json = await _client.get('/v3/payments/$id/status');
      return json['status'] as String? ?? '';
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter status do pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> refund(String id) async {
    try {
      final json = await _client.post('/v3/payments/$id/refund');
      return AsaasPaymentResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao estornar pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPixQrCodeResponse> getPixQrCode(String id) async {
    try {
      final json = await _client.get('/v3/payments/$id/pixQrCode');
      return AsaasPixQrCodeResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao obter QR Code Pix do pagamento $id: $e');
    }
  }
}
