import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class BankAccountEndpoint extends Endpoint {
  /// Cria uma nova conta bancária.
  Future<BankAccount> createAccount(Session session, BankAccount account) async {
    return await sl.bankAccountRepository.create(session, account);
  }

  /// Busca uma conta bancária pelo ID.
  Future<BankAccount?> readAccount(Session session, UuidValue id) async {
    final account = await sl.bankAccountRepository.findById(session, id);
    if (account == null) {
      throw AppException(
        message: 'Conta bancária não encontrada.',
        code: 'NOT_FOUND',
      );
    }
    return account;
  }

  /// Atualiza os dados de uma conta bancária.
  Future<BankAccount> updateAccount(Session session, BankAccount account) async {
    return await sl.bankAccountRepository.update(session, account);
  }

  /// Remove uma conta bancária pelo ID.
  Future<bool> deleteAccount(Session session, UuidValue id) async {
    return await sl.bankAccountRepository.delete(session, id);
  }

  /// Lista contas bancárias filtrando obrigatoriamente pelo [originModule].
  /// Opcionalmente filtra por [status] (ACTIVE / INACTIVE).
  Future<List<BankAccount>> listAccounts(
    Session session, {
    required String originModule,
    String? status,
    int? limit,
    int? offset,
  }) async {
    return await sl.bankAccountRepository.list(
      session,
      originModule: originModule,
      status: status,
      limit: limit,
      offset: offset,
    );
  }
}
