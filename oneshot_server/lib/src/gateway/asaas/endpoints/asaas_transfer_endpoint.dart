import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_transfer_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_transfer_service.dart';

class AsaasTransferEndpoint extends Endpoint {
  AsaasTransferService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasTransferRepositoryImpl(client);
    return AsaasTransferService(repository);
  }

  Future<Map<String, dynamic>> createTransfer(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasTransferRequest(
      value: (requestData['value'] as num).toDouble(),
      transferType: requestData['transferType'] as String,
      pixAddressKey: requestData['pixAddressKey'] as String?,
      pixAddressKeyType: requestData['pixAddressKeyType'] as String?,
      description: requestData['description'] as String?,
      scheduleDate: requestData['scheduleDate'] as String?,
    );
    final result = await _service(session).createTransfer(request);
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listTransfers(
      Session session, {int? limit, int? offset}) async {
    final result = await _service(session).listTransfers(limit: limit, offset: offset);
    return result.map((t) => t.toJson()).toList();
  }

  Future<List<Map<String, dynamic>>> getExtract(
      Session session, {String? startDate, String? endDate, int? limit, int? offset}) async {
    final result = await _service(session).getExtract(
      startDate: startDate, endDate: endDate, limit: limit, offset: offset,
    );
    return result.map((t) => t.toJson()).toList();
  }

  Future<Map<String, dynamic>> getBalance(Session session) async {
    final result = await _service(session).getBalance();
    return result.toJson();
  }
}
