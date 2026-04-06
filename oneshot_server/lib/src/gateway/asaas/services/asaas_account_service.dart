import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_account.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_account_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_account_service.dart';

class AsaasAccountService implements IAsaasAccountService {
  final IAsaasAccountRepository _repository;

  AsaasAccountService(this._repository);

  @override
  Future<AsaasAccountResponse> createSubaccount(AsaasAccountRequest request) async {
    try {
      return await _repository.createSubaccount(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar subconta: $e');
    }
  }

  @override
  Future<List<AsaasAccountResponse>> listSubaccounts({int? limit, int? offset}) async {
    try {
      return await _repository.listSubaccounts(limit: limit, offset: offset);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar subcontas: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getAccountNumber() async {
    try {
      return await _repository.getAccountNumber();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter número da conta: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getAccountStatus() async {
    try {
      return await _repository.getAccountStatus();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao obter status da conta: $e');
    }
  }
}
