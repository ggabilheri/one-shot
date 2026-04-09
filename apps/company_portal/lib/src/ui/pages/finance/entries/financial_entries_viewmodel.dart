import 'package:company_portal/src/core/viewmodel.dart';
import 'package:company_portal/src/domain/repositories/financial_entry_repository.dart';
import 'package:company_portal/src/domain/repositories/bank_account_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/src/domain/services/company_session.dart';

abstract class IFinancialEntriesViewmodel extends IViewmodel {
  List<FinancialEntry> get entries;
  List<BankAccount> get bankAccounts;
  Future<void> loadEntries(FinancialEntryType type);
  Future<void> loadBankAccounts();
  Future<void> saveEntry(
    FinancialEntry entry,
    FinancialEntryType currentType, {
    bool isUpdate = false,
  });
  Future<void> deleteEntry(UuidValue id, FinancialEntryType currentType);
  Future<void> markAsPaid(FinancialEntry entry, FinancialEntryType currentType);
}

class FinancialEntriesViewmodel extends Viewmodel
    implements IFinancialEntriesViewmodel {
  final IFinancialEntryRepository _repository;
  final IBankAccountRepository _bankAccountRepository;
  final ICompanySession _session;

  FinancialEntriesViewmodel(
    this._repository,
    this._bankAccountRepository,
    this._session,
  );

  List<FinancialEntry> _entries = [];
  List<BankAccount> _bankAccounts = [];

  @override
  List<FinancialEntry> get entries => _entries;

  @override
  List<BankAccount> get bankAccounts => _bankAccounts;

  @override
  Future<void> loadEntries(FinancialEntryType type) async {
    setLoading(true);
    try {
      _entries = await _repository.listEntries(
        type: type,
        companyId: _session.currentCompany?.id,
      );
      setError(null);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> loadBankAccounts() async {
    try {
      _bankAccounts = await _bankAccountRepository.listAccounts(
        status: 'ACTIVE',
        companyId: _session.currentCompany?.id,
      );
      notifyListeners();
    } catch (e) {
      // Silently fail or log, bank accounts are usually needed for the form
    }
  }

  @override
  Future<void> saveEntry(
    FinancialEntry entry,
    FinancialEntryType currentType, {
    bool isUpdate = false,
  }) async {
    setLoading(true);
    try {
      if (isUpdate) {
        await _repository.update(entry);
      } else {
        entry.companyId = _session.currentCompany?.id;
        await _repository.create(entry);
      }
      await loadEntries(currentType);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteEntry(UuidValue id, FinancialEntryType currentType) async {
    setLoading(true);
    try {
      await _repository.delete(id);
      await loadEntries(currentType);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> markAsPaid(
    FinancialEntry entry,
    FinancialEntryType currentType,
  ) async {
    setLoading(true);
    try {
      entry.status = FinancialEntryStatus.paid;
      entry.paymentDate = DateTime.now();
      await _repository.update(entry);
      await loadEntries(currentType);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
