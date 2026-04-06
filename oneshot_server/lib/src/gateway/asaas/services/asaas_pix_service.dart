import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_key_response.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_pix_transaction_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_pix_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/i_asaas_pix_service.dart';

class AsaasPixService implements IAsaasPixService {
  final IAsaasPixRepository _repository;

  AsaasPixService(this._repository);

  @override
  Future<AsaasPixKeyResponse> createKey(AsaasPixKeyRequest request) async {
    try {
      return await _repository.createKey(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar chave Pix: $e');
    }
  }

  @override
  Future<List<AsaasPixKeyResponse>> listKeys() async {
    try {
      return await _repository.listKeys();
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar chaves Pix: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> createStaticQrCode(Map<String, dynamic> request) async {
    try {
      return await _repository.createStaticQrCode(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao criar QR Code estático Pix: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> payQrCode(Map<String, dynamic> request) async {
    try {
      return await _repository.payQrCode(request);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao pagar QR Code Pix: $e');
    }
  }

  @override
  Future<List<AsaasPixTransactionResponse>> listTransactions({int? limit, int? offset, String? startDate, String? endDate}) async {
    try {
      return await _repository.listTransactions(limit: limit, offset: offset, startDate: startDate, endDate: endDate);
    } on AsaasException {
      rethrow;
    } catch (e) {
      throw AsaasGatewayException('Erro ao listar transações Pix: $e');
    }
  }
}
