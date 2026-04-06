import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_credit_card_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_qr_code_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_payment_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_payment_service.dart';

class AsaasPaymentService implements IAsaasPaymentService {
  final IAsaasPaymentRepository _repository;

  AsaasPaymentService(this._repository);

  @override
  Future<AsaasPaymentResponse> createPayment(AsaasPaymentRequest request) async {
    try {
      return await _repository.create(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar pagamento no Asaas: $e');
    }
  }

  @override
  Future<List<AsaasPaymentResponse>> listPayments({String? customer, String? status, int? limit, int? offset}) async {
    try {
      return await _repository.list(customer: customer, status: status, limit: limit, offset: offset);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar pagamentos no Asaas: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> captureAuthorizedPayment(String id) async {
    try {
      return await _repository.captureAuthorized(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao capturar pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> payWithCreditCard(String id, AsaasCreditCardPaymentRequest request) async {
    try {
      return await _repository.payWithCreditCard(id, request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao pagar com cartão: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getBillingInfo(String id) async {
    try {
      return await _repository.getBillingInfo(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter billing info de $id: $e');
    }
  }

  @override
  Future<String> getPaymentStatus(String id) async {
    try {
      return await _repository.getStatus(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter status do pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPaymentResponse> refundPayment(String id) async {
    try {
      return await _repository.refund(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao estornar pagamento $id: $e');
    }
  }

  @override
  Future<AsaasPixQrCodeResponse> getPixQrCode(String id) async {
    try {
      return await _repository.getPixQrCode(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter QR Code Pix de $id: $e');
    }
  }
}
