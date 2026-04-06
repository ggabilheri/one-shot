import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';

abstract class IAsaasInstallmentRepository {
  Future<AsaasInstallmentResponse> create(AsaasInstallmentRequest request);
  Future<List<AsaasInstallmentResponse>> list({int? limit, int? offset});
  Future<AsaasInstallmentResponse> findById(String id);
  Future<void> delete(String id);
  Future<List<AsaasPaymentResponse>> listPayments(String id);
}
