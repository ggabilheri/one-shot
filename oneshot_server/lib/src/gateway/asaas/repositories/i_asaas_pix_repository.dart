import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_transaction_response.dart';

abstract class IAsaasPixRepository {
  Future<AsaasPixKeyResponse> createKey(AsaasPixKeyRequest request);
  Future<List<AsaasPixKeyResponse>> listKeys();
  Future<Map<String, dynamic>> createStaticQrCode(Map<String, dynamic> request);
  Future<Map<String, dynamic>> payQrCode(Map<String, dynamic> request);
  Future<List<AsaasPixTransactionResponse>> listTransactions({int? limit, int? offset, String? startDate, String? endDate});
}
