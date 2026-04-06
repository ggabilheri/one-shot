import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_response.dart';

abstract class IAsaasWebhookConfigService {
  Future<AsaasWebhookConfigResponse> createWebhook(AsaasWebhookConfigRequest request);
  Future<List<AsaasWebhookConfigResponse>> listWebhooks();
  Future<AsaasWebhookConfigResponse> updateWebhook(String id, AsaasWebhookConfigRequest request);
  Future<void> deleteWebhook(String id);
}
