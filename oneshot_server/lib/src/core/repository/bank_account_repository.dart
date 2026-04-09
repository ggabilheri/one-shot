import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de contas bancárias.
abstract class IBankAccountRepository {
  Future<BankAccount> create(Session session, BankAccount account);
  Future<BankAccount?> findById(Session session, UuidValue id);
  Future<BankAccount> update(Session session, BankAccount account);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<BankAccount>> list(
    Session session, {
    required String originModule,
    String? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  });
}

class BankAccountRepositoryImpl implements IBankAccountRepository {
  @override
  Future<BankAccount> create(Session session, BankAccount account) async {
    try {
      return await BankAccount.db.insertRow(session, account);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao criar conta bancária.',
        code: 'BANK_ACCOUNT_CREATE_ERROR',
      );
    }
  }

  @override
  Future<BankAccount?> findById(Session session, UuidValue id) async {
    try {
      return await BankAccount.db.findById(session, id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao buscar conta bancária.',
        code: 'BANK_ACCOUNT_FIND_ERROR',
      );
    }
  }

  @override
  Future<BankAccount> update(Session session, BankAccount account) async {
    try {
      return await BankAccount.db.updateRow(session, account);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao atualizar conta bancária.',
        code: 'BANK_ACCOUNT_UPDATE_ERROR',
      );
    }
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    try {
      final account = await findById(session, id);
      if (account == null) return false;
      await BankAccount.db.deleteRow(session, account);
      return true;
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao remover conta bancária.',
        code: 'BANK_ACCOUNT_DELETE_ERROR',
      );
    }
  }

  @override
  Future<List<BankAccount>> list(
    Session session, {
    required String originModule,
    String? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    try {
      return await BankAccount.db.find(
        session,
        where: (t) {
          Expression where = t.originModule.equals(originModule);
          if (status != null) {
            where = where & t.status.equals(status);
          }
          if (companyId != null) {
            where = where & t.companyId.equals(companyId);
          } else {
            where = where & t.companyId.equals(null);
          }
          return where;
        },
        orderBy: (t) => t.name,
        limit: limit,
        offset: offset,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao listar contas bancárias.',
        code: 'BANK_ACCOUNT_LIST_ERROR',
      );
    }
  }
}
