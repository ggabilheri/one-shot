import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_transfer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_transfer_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_transfer_service.dart';

class AsaasTransferService implements IAsaasTransferService {
  final IAsaasTransferRepository _repository;

  AsaasTransferService(this._repository);

  @override
  Future<AsaasTransferResponse> createTransfer(AsaasTransferRequest request) async {
    try {
      return await _repository.create(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar transferência: $e');
    }
  }

  @override
  Future<List<AsaasTransferResponse>> listTransfers({int? limit, int? offset}) async {
    try {
      return await _repository.list(limit: limit, offset: offset);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar transferências: $e');
    }
  }

  @override
  Future<List<AsaasFinancialTransactionResponse>> getExtract({String? startDate, String? endDate, int? limit, int? offset}) async {
    try {
      return await _repository.getExtract(startDate: startDate, endDate: endDate, limit: limit, offset: offset);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter extrato financeiro: $e');
    }
  }

  @override
  Future<AsaasBalanceResponse> getBalance() async {
    try {
      return await _repository.getBalance();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter saldo da conta: $e');
    }
  }
}
