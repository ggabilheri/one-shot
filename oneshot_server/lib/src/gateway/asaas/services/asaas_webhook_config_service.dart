import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_webhook_config_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_webhook_config_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_webhook_config_service.dart';

class AsaasWebhookConfigService implements IAsaasWebhookConfigService {
  final IAsaasWebhookConfigRepository _repository;

  AsaasWebhookConfigService(this._repository);

  @override
  Future<AsaasWebhookConfigResponse> createWebhook(AsaasWebhookConfigRequest request) async {
    try {
      return await _repository.create(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar webhook: $e');
    }
  }

  @override
  Future<List<AsaasWebhookConfigResponse>> listWebhooks() async {
    try {
      return await _repository.list();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar webhooks: $e');
    }
  }

  @override
  Future<AsaasWebhookConfigResponse> updateWebhook(String id, AsaasWebhookConfigRequest request) async {
    try {
      return await _repository.update(id, request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao atualizar webhook $id: $e');
    }
  }

  @override
  Future<void> deleteWebhook(String id) async {
    try {
      await _repository.delete(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao remover webhook $id: $e');
    }
  }
}
