import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_pix_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_pix_service.dart';

class AsaasPixEndpoint extends Endpoint {
  AsaasPixService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasPixRepositoryImpl(client);
    return AsaasPixService(repository);
  }

  Future<Map<String, dynamic>> createKey(Session session, String type) async {
    final result = await _service(session).createKey(AsaasPixKeyRequest(type: type));
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listKeys(Session session) async {
    final result = await _service(session).listKeys();
    return result.map((k) => k.toJson()).toList();
  }

  Future<Map<String, dynamic>> createStaticQrCode(
      Session session, Map<String, dynamic> request) async {
    return await _service(session).createStaticQrCode(request);
  }

  Future<Map<String, dynamic>> payQrCode(
      Session session, Map<String, dynamic> request) async {
    return await _service(session).payQrCode(request);
  }

  Future<List<Map<String, dynamic>>> listTransactions(
      Session session, {int? limit, int? offset, String? startDate, String? endDate}) async {
    final result = await _service(session).listTransactions(
      limit: limit, offset: offset, startDate: startDate, endDate: endDate,
    );
    return result.map((t) => t.toJson()).toList();
  }
}
