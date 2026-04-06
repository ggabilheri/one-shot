import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_webhook_config_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_webhook_config_service.dart';

class AsaasWebhookConfigEndpoint extends Endpoint {
  AsaasWebhookConfigService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasWebhookConfigRepositoryImpl(client);
    return AsaasWebhookConfigService(repository);
  }

  Future<Map<String, dynamic>> createWebhook(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasWebhookConfigRequest(
      name: requestData['name'] as String,
      url: requestData['url'] as String,
      email: requestData['email'] as String?,
      enabled: requestData['enabled'] as bool? ?? true,
      events: (requestData['events'] as List<dynamic>).map((e) => e.toString()).toList(),
      sendType: requestData['sendType'] as String? ?? 'SEQUENTIALLY',
      authToken: requestData['authToken'] as String?,
    );
    final result = await _service(session).createWebhook(request);
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listWebhooks(Session session) async {
    final result = await _service(session).listWebhooks();
    return result.map((w) => w.toJson()).toList();
  }

  Future<Map<String, dynamic>> updateWebhook(
      Session session, String id, Map<String, dynamic> requestData) async {
    final request = AsaasWebhookConfigRequest(
      name: requestData['name'] as String,
      url: requestData['url'] as String,
      email: requestData['email'] as String?,
      enabled: requestData['enabled'] as bool? ?? true,
      events: (requestData['events'] as List<dynamic>).map((e) => e.toString()).toList(),
      sendType: requestData['sendType'] as String? ?? 'SEQUENTIALLY',
    );
    final result = await _service(session).updateWebhook(id, request);
    return result.toJson();
  }

  Future<void> deleteWebhook(Session session, String id) async {
    await _service(session).deleteWebhook(id);
  }
}
