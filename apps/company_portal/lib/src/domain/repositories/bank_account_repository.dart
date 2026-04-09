import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart';

abstract class IBankAccountRepository {
  Future<List<BankAccount>> listAccounts({
    String? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  });
  Future<BankAccount> create(BankAccount account);
  Future<BankAccount> update(BankAccount account);
  Future<bool> delete(UuidValue id);
}

class BankAccountRepository implements IBankAccountRepository {
  final String _originModule = 'CLUB';

  @override
  Future<List<BankAccount>> listAccounts({
    String? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    try {
      final result = await client.bankAccount.listAccounts(
        originModule: _originModule,
        status: status,
        companyId: companyId,
        limit: limit,
        offset: offset,
      );
      return result;
    } catch (e) {
      throw Exception('Falha ao listar contas bancárias: $e');
    }
  }

  @override
  Future<BankAccount> create(BankAccount account) async {
    try {
      account.originModule = _originModule;
      final result = await client.bankAccount.createAccount(account);
      return result;
    } catch (e) {
      throw Exception('Falha ao criar conta bancária: $e');
    }
  }

  @override
  Future<BankAccount> update(BankAccount account) async {
    try {
      final result = await client.bankAccount.updateAccount(account);
      return result;
    } catch (e) {
      throw Exception('Falha ao atualizar conta bancária: $e');
    }
  }

  @override
  Future<bool> delete(UuidValue id) async {
    try {
      return await client.bankAccount.deleteAccount(id);
    } catch (e) {
      throw Exception('Falha ao excluir conta bancária: $e');
    }
  }
}
