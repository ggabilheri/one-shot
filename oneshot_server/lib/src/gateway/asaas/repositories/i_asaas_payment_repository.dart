import 'package:oneshot_server/src/gateway/asaas/models/asaas_credit_card_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_qr_code_response.dart';

abstract class IAsaasPaymentRepository {
  Future<AsaasPaymentResponse> create(AsaasPaymentRequest request);
  Future<List<AsaasPaymentResponse>> list({String? customer, String? status, int? limit, int? offset});
  Future<AsaasPaymentResponse> captureAuthorized(String id);
  Future<AsaasPaymentResponse> payWithCreditCard(String id, AsaasCreditCardPaymentRequest request);
  Future<Map<String, dynamic>> getBillingInfo(String id);
  Future<String> getStatus(String id);
  Future<AsaasPaymentResponse> refund(String id);
  Future<AsaasPixQrCodeResponse> getPixQrCode(String id);
}
