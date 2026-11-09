import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de transações bancárias.
abstract class IBankTransactionRepository {
  Future<List<BankTransaction>> findByAccountId(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  });

  Future<int> countByAccountId(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Set<String>> findExistingFitIds(
    Session session,
    UuidValue bankAccountId,
    List<String> fitIds,
  );

  Future<List<BankTransaction>> insertBatch(
    Session session,
    List<BankTransaction> transactions, {
    Transaction? dbTransaction,
  });

  Future<BankTransaction?> findById(
    Session session,
    UuidValue id, {
    Transaction? dbTransaction,
  });

  Future<BankTransaction> update(
    Session session,
    BankTransaction bankTransaction, {
    Transaction? dbTransaction,
  });
}

class BankTransactionRepository implements IBankTransactionRepository {
  @override
  Future<List<BankTransaction>> findByAccountId(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    try {
      return await BankTransaction.db.find(
        session,
        where: (t) {
          Expression whereClause = t.bankAccountId.equals(bankAccountId);
          if (isReconciled != null) {
            whereClause = whereClause & t.isReconciled.equals(isReconciled);
          }
          if (startDate != null) {
            whereClause = whereClause & (t.date >= startDate);
          }
          if (endDate != null) {
            whereClause = whereClause & (t.date <= endDate);
          }
          return whereClause;
        },
        orderByList: (t) => [t.date.desc()],
        limit: limit,
        offset: offset,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao buscar transações bancárias: $e',
        code: 'BANK_TRANSACTION_FIND_ERROR',
      );
    }
  }

  @override
  Future<int> countByAccountId(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      return await BankTransaction.db.count(
        session,
        where: (t) {
          Expression whereClause = t.bankAccountId.equals(bankAccountId);
          if (isReconciled != null) {
            whereClause = whereClause & t.isReconciled.equals(isReconciled);
          }
          if (startDate != null) {
            whereClause = whereClause & (t.date >= startDate);
          }
          if (endDate != null) {
            whereClause = whereClause & (t.date <= endDate);
          }
          return whereClause;
        },
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao contar transações bancárias: $e',
        code: 'BANK_TRANSACTION_COUNT_ERROR',
      );
    }
  }

  @override
  Future<Set<String>> findExistingFitIds(
    Session session,
    UuidValue bankAccountId,
    List<String> fitIds,
  ) async {
    try {
      if (fitIds.isEmpty) return {};
      final rows = await BankTransaction.db.find(
        session,
        where: (t) =>
            t.bankAccountId.equals(bankAccountId) & t.fitId.inSet(fitIds.toSet()),
      );
      return rows.map((r) => r.fitId).toSet();
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao verificar duplicidade de FITID: $e',
        code: 'BANK_TRANSACTION_FITID_CHECK_ERROR',
      );
    }
  }

  @override
  Future<List<BankTransaction>> insertBatch(
    Session session,
    List<BankTransaction> transactions, {
    Transaction? dbTransaction,
  }) async {
    try {
      if (transactions.isEmpty) return [];
      return await BankTransaction.db.insert(
        session,
        transactions,
        transaction: dbTransaction,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao persistir lote de transações bancárias: $e',
        code: 'BANK_TRANSACTION_BATCH_INSERT_ERROR',
      );
    }
  }

  @override
  Future<BankTransaction?> findById(
    Session session,
    UuidValue id, {
    Transaction? dbTransaction,
  }) async {
    try {
      return await BankTransaction.db.findById(
        session,
        id,
        transaction: dbTransaction,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao buscar transação bancária por ID: $e',
        code: 'BANK_TRANSACTION_FIND_BY_ID_ERROR',
      );
    }
  }

  @override
  Future<BankTransaction> update(
    Session session,
    BankTransaction bankTransaction, {
    Transaction? dbTransaction,
  }) async {
    try {
      return await BankTransaction.db.updateRow(
        session,
        bankTransaction,
        transaction: dbTransaction,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao atualizar transação bancária: $e',
        code: 'BANK_TRANSACTION_UPDATE_ERROR',
      );
    }
  }
}
