import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_response.dart';

abstract class IAsaasTransferService {
  Future<AsaasTransferResponse> createTransfer(AsaasTransferRequest request);
  Future<List<AsaasTransferResponse>> listTransfers({int? limit, int? offset});
  Future<List<AsaasFinancialTransactionResponse>> getExtract({String? startDate, String? endDate, int? limit, int? offset});
  Future<AsaasBalanceResponse> getBalance();
}
