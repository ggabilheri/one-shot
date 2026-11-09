import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class BankTransactionEndpoint extends Endpoint {
  /// Gera a prévia da importação do arquivo OFX para a conta bancária.
  Future<OfxPreviewResult> previewOfx(
    Session session,
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    return await sl.bankTransactionService.preview(
      session,
      bankAccountId,
      ofxContent,
    );
  }

  /// Importa transações de extrato bancário persistindo apenas registros novos.
  Future<List<BankTransaction>> importOfx(
    Session session,
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    return await sl.bankTransactionService.importOfx(
      session,
      bankAccountId,
      ofxContent,
    );
  }

  /// Lista movimentações da conta com suporte a filtros de conciliação, período e paginação.
  Future<List<BankTransaction>> listTransactions(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    return await sl.bankTransactionService.listTransactions(
      session,
      bankAccountId,
      isReconciled: isReconciled,
      startDate: startDate,
      endDate: endDate,
      limit: limit,
      offset: offset,
    );
  }

  /// Retorna o total de transações para cálculo de paginação.
  Future<int> countTransactions(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return await sl.bankTransactionService.countTransactions(
      session,
      bankAccountId,
      isReconciled: isReconciled,
      startDate: startDate,
      endDate: endDate,
    );
  }

  /// Realiza a conciliação atômica entre movimentação bancária e lançamento financeiro.
  Future<BankTransaction> reconcile(
    Session session,
    UuidValue transactionId,
    UuidValue financialEntryId,
  ) async {
    return await sl.bankTransactionService.reconcile(
      session,
      transactionId,
      financialEntryId,
    );
  }
}

