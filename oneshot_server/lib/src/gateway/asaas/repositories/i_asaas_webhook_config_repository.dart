import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_response.dart';

abstract class IAsaasWebhookConfigRepository {
  Future<AsaasWebhookConfigResponse> create(AsaasWebhookConfigRequest request);
  Future<List<AsaasWebhookConfigResponse>> list();
  Future<AsaasWebhookConfigResponse> update(String id, AsaasWebhookConfigRequest request);
  Future<void> delete(String id);
}
