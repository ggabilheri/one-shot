import 'package:company_portal/src/core/viewmodel.dart';
import 'package:company_portal/src/domain/repositories/bank_account_repository.dart';
import 'package:company_portal/src/domain/repositories/brasil_api_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IBankAccountsViewmodel extends IViewmodel {
  List<BankAccount> get accounts;
  Future<void> loadAccounts();
  Future<void> saveAccount(BankAccount account, {bool isUpdate = false});
  Future<void> deleteAccount(UuidValue id);
  Future<List<Bank>> searchBanks(String query);
}

class BankAccountsViewmodel extends Viewmodel
    implements IBankAccountsViewmodel {
  final IBankAccountRepository _repository;
  final IBrasilApiRepository _brasilApiRepository;

  BankAccountsViewmodel(this._repository, this._brasilApiRepository);

  List<BankAccount> _accounts = [];
  List<Bank> _banks = [];

  @override
  List<BankAccount> get accounts => _accounts;

  @override
  Future<void> loadAccounts() async {
    setLoading(true);
    _accounts.clear();
    _banks.clear();
    try {
      _banks.addAll(await _brasilApiRepository.getBanks());
      _accounts = await _repository.listAccounts();
      setError(null);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveAccount(BankAccount account, {bool isUpdate = false}) async {
    setLoading(true);
    try {
      if (isUpdate) {
        await _repository.update(account);
      } else {
        await _repository.create(account);
      }
      await loadAccounts();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteAccount(UuidValue id) async {
    setLoading(true);
    try {
      await _repository.delete(id);
      await loadAccounts();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<List<Bank>> searchBanks(String query) async {
    try {
      if (_banks.isEmpty) {
        _banks = await _brasilApiRepository.getBanks();
      }

      if (query.isEmpty) return _banks;
      return _banks
          .where(
            (b) =>
                b.name.toLowerCase().contains(query.toLowerCase()) ||
                b.code.toString().contains(query),
          )
          .toList();
    } catch (e) {
      print('Erro ao buscar bancos: $e');
      return [];
    }
  }
}
