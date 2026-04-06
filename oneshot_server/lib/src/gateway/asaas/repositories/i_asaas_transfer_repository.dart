import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_request.dart';

abstract class IAsaasTransferRepository {
  Future<AsaasTransferResponse> create(AsaasTransferRequest request);
  Future<List<AsaasTransferResponse>> list({int? limit, int? offset});
  Future<List<AsaasFinancialTransactionResponse>> getExtract({String? startDate, String? endDate, int? limit, int? offset});
  Future<AsaasBalanceResponse> getBalance();
}
