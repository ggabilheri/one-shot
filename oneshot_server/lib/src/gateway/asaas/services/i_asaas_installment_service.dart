import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';

abstract class IAsaasInstallmentService {
  Future<AsaasInstallmentResponse> createInstallment(AsaasInstallmentRequest request);
  Future<List<AsaasInstallmentResponse>> listInstallments({int? limit, int? offset});
  Future<AsaasInstallmentResponse> getInstallment(String id);
  Future<void> deleteInstallment(String id);
  Future<List<AsaasPaymentResponse>> listInstallmentPayments(String id);
}
