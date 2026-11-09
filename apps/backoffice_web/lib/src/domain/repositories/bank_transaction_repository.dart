import 'package:backoffice_web/main.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IBankTransactionRepository {
  Future<OfxPreviewResult> previewOfx(UuidValue bankAccountId, String ofxContent);
  Future<List<BankTransaction>> importOfx(UuidValue bankAccountId, String ofxContent);
  Future<List<BankTransaction>> listTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  });
  Future<int> countTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  });
  Future<BankTransaction> reconcile(UuidValue transactionId, UuidValue financialEntryId);
}

class BankTransactionRepository implements IBankTransactionRepository {
  @override
  Future<OfxPreviewResult> previewOfx(UuidValue bankAccountId, String ofxContent) async {
    try {
      return await client.bankTransaction.previewOfx(bankAccountId, ofxContent);
    } catch (e) {
      throw Exception('Falha ao gerar prévia do arquivo OFX: $e');
    }
  }

  @override
  Future<List<BankTransaction>> importOfx(UuidValue bankAccountId, String ofxContent) async {
    try {
      return await client.bankTransaction.importOfx(bankAccountId, ofxContent);
    } catch (e) {
      throw Exception('Falha ao importar movimentações bancárias: $e');
    }
  }

  @override
  Future<List<BankTransaction>> listTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    try {
      return await client.bankTransaction.listTransactions(
        bankAccountId,
        isReconciled: isReconciled,
        startDate: startDate,
        endDate: endDate,
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      throw Exception('Falha ao listar transações bancárias: $e');
    }
  }

  @override
  Future<int> countTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      return await client.bankTransaction.countTransactions(
        bankAccountId,
        isReconciled: isReconciled,
        startDate: startDate,
        endDate: endDate,
      );
    } catch (e) {
      throw Exception('Falha ao contar transações bancárias: $e');
    }
  }

  @override
  Future<BankTransaction> reconcile(
    UuidValue transactionId,
    UuidValue financialEntryId,
  ) async {
    try {
      return await client.bankTransaction.reconcile(transactionId, financialEntryId);
    } catch (e) {
      throw Exception('Falha ao conciliar transação bancária: $e');
    }
  }
}

