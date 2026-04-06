import 'package:oneshot_server/src/gateway/asaas/models/asaas_credit_card_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_qr_code_response.dart';

abstract class IAsaasPaymentService {
  Future<AsaasPaymentResponse> createPayment(AsaasPaymentRequest request);
  Future<List<AsaasPaymentResponse>> listPayments({String? customer, String? status, int? limit, int? offset});
  Future<AsaasPaymentResponse> captureAuthorizedPayment(String id);
  Future<AsaasPaymentResponse> payWithCreditCard(String id, AsaasCreditCardPaymentRequest request);
  Future<Map<String, dynamic>> getBillingInfo(String id);
  Future<String> getPaymentStatus(String id);
  Future<AsaasPaymentResponse> refundPayment(String id);
  Future<AsaasPixQrCodeResponse> getPixQrCode(String id);
}
