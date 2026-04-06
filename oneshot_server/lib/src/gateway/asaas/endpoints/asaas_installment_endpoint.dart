import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_installment_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_installment_service.dart';

class AsaasInstallmentEndpoint extends Endpoint {
  AsaasInstallmentService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasInstallmentRepositoryImpl(client);
    return AsaasInstallmentService(repository);
  }

  Future<Map<String, dynamic>> createInstallment(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasInstallmentRequest(
      customer: requestData['customer'] as String,
      billingType: requestData['billingType'] as String,
      value: (requestData['value'] as num).toDouble(),
      dueDate: requestData['dueDate'] as String,
      installmentCount: requestData['installmentCount'] as int,
      description: requestData['description'] as String?,
      externalReference: requestData['externalReference'] as String?,
    );
    final result = await _service(session).createInstallment(request);
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listInstallments(
      Session session, {int? limit, int? offset}) async {
    final result = await _service(session).listInstallments(limit: limit, offset: offset);
    return result.map((i) => i.toJson()).toList();
  }

  Future<Map<String, dynamic>> getInstallment(Session session, String id) async {
    final result = await _service(session).getInstallment(id);
    return result.toJson();
  }

  Future<void> deleteInstallment(Session session, String id) async {
    await _service(session).deleteInstallment(id);
  }

  Future<List<Map<String, dynamic>>> listInstallmentPayments(Session session, String id) async {
    final result = await _service(session).listInstallmentPayments(id);
    return result.map((p) => p.toJson()).toList();
  }
}
