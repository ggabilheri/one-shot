import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_installment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_installment_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_installment_service.dart';

class AsaasInstallmentService implements IAsaasInstallmentService {
  final IAsaasInstallmentRepository _repository;

  AsaasInstallmentService(this._repository);

  @override
  Future<AsaasInstallmentResponse> createInstallment(AsaasInstallmentRequest request) async {
    try {
      return await _repository.create(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar parcelamento: $e');
    }
  }

  @override
  Future<List<AsaasInstallmentResponse>> listInstallments({int? limit, int? offset}) async {
    try {
      return await _repository.list(limit: limit, offset: offset);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar parcelamentos: $e');
    }
  }

  @override
  Future<AsaasInstallmentResponse> getInstallment(String id) async {
    try {
      return await _repository.findById(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao buscar parcelamento $id: $e');
    }
  }

  @override
  Future<void> deleteInstallment(String id) async {
    try {
      await _repository.delete(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao remover parcelamento $id: $e');
    }
  }

  @override
  Future<List<AsaasPaymentResponse>> listInstallmentPayments(String id) async {
    try {
      return await _repository.listPayments(id);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar pagamentos do parcelamento $id: $e');
    }
  }
}
