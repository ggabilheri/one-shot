import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_webhook_config_repository.dart';

class AsaasWebhookConfigRepositoryImpl implements IAsaasWebhookConfigRepository {
  final AsaasHttpClient _client;

  AsaasWebhookConfigRepositoryImpl(this._client);

  @override
  Future<AsaasWebhookConfigResponse> create(AsaasWebhookConfigRequest request) async {
    try {
      final json = await _client.post('/v3/webhooks', body: request.toJson());
      return AsaasWebhookConfigResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao criar webhook: $e');
    }
  }

  @override
  Future<List<AsaasWebhookConfigResponse>> list() async {
    try {
      final json = await _client.get('/v3/webhooks');
      final data = json['data'] as List<dynamic>? ?? [];
      return data.whereType<Map<String, dynamic>>().map(AsaasWebhookConfigResponse.fromJson).toList();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao listar webhooks: $e');
    }
  }

  @override
  Future<AsaasWebhookConfigResponse> update(String id, AsaasWebhookConfigRequest request) async {
    try {
      final json = await _client.put('/v3/webhooks/$id', body: request.toJson());
      return AsaasWebhookConfigResponse.fromJson(json);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao atualizar webhook $id: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _client.delete('/v3/webhooks/$id');
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro inesperado ao remover webhook $id: $e');
    }
  }
}
