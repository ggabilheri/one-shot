import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/bank_transaction_repository.dart';
import 'package:backoffice_web/src/domain/repositories/financial_entry_repository.dart';
import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';

enum ReconciliationFilter { all, pending, reconciled }

enum ReconciliationPeriodPreset {
  today,
  thisWeek,
  monthYear,
  thisYear,
  lastYear,
  custom,
}

abstract class IBankReconciliationViewModel extends IViewmodel {
  List<BankTransaction> get transactions;
  List<BankTransaction> get filteredTransactions;
  ReconciliationFilter get filter;
  String get searchQuery;
  BankAccount? get currentAccount;

  // Filtro de período por data
  ReconciliationPeriodPreset get periodPreset;
  DateTime get startDate;
  DateTime get endDate;
  DateTime get selectedMonthYear;

  // Paginação
  int get pageSize;
  int get currentPage;
  int get totalCount;
  int get totalPages;
  List<int> get allowedPageSizes;

  void init(BankAccount account, {DateTime? referenceDate});
  Future<void> loadTransactions();
  void setFilter(ReconciliationFilter filter);
  void setSearchQuery(String query);
  void setPeriodPreset(ReconciliationPeriodPreset preset);
  void setCustomPeriod(DateTime start, DateTime end);
  void changeMonthYear(DateTime monthYear);
  void setPageSize(int size);
  void setPage(int page);
  void nextPage();
  void previousPage();
  Future<void> reconcileTransaction(
    UuidValue transactionId,
    UuidValue financialEntryId,
  );
  Future<List<FinancialEntry>> loadSuggestedEntries(BankTransaction transaction);
}

class BankReconciliationViewModel extends Viewmodel
    implements IBankReconciliationViewModel {
  final IBankTransactionRepository _transactionRepository;
  final IFinancialEntryRepository _financialEntryRepository;
  DateTime Function() _nowProvider;

  BankReconciliationViewModel(
    this._transactionRepository,
    this._financialEntryRepository, {
    DateTime Function()? nowProvider,
  }) : _nowProvider = nowProvider ?? DateTime.now {
    _initDefaults();
  }

  BankAccount? _currentAccount;
  List<BankTransaction> _transactions = [];
  ReconciliationFilter _filter = ReconciliationFilter.all;
  String _searchQuery = '';

  ReconciliationPeriodPreset _periodPreset = ReconciliationPeriodPreset.today;
  late DateTime _startDate;
  late DateTime _endDate;
  late DateTime _selectedMonthYear;

  int _pageSize = 20;
  int _currentPage = 1;
  int _totalCount = 0;

  @override
  final List<int> allowedPageSizes = const [10, 20, 50, 100];

  void _initDefaults() {
    final now = _nowProvider();
    _selectedMonthYear = DateTime(now.year, now.month, 1);
    final range = _calculateRange(ReconciliationPeriodPreset.today);
    _startDate = range.start;
    _endDate = range.end;
  }

  @override
  BankAccount? get currentAccount => _currentAccount;

  @override
  List<BankTransaction> get transactions => _transactions;

  @override
  ReconciliationFilter get filter => _filter;

  @override
  String get searchQuery => _searchQuery;

  @override
  ReconciliationPeriodPreset get periodPreset => _periodPreset;

  @override
  DateTime get startDate => _startDate;

  @override
  DateTime get endDate => _endDate;

  @override
  DateTime get selectedMonthYear => _selectedMonthYear;

  @override
  int get pageSize => _pageSize;

  @override
  int get currentPage => _currentPage;

  @override
  int get totalCount => _totalCount;

  @override
  int get totalPages {
    if (_totalCount == 0) return 1;
    return (_totalCount / _pageSize).ceil();
  }

  DateTimeRange _calculateRange(
    ReconciliationPeriodPreset preset, {
    DateTime? monthYear,
    DateTime? customStart,
    DateTime? customEnd,
  }) {
    final now = _nowProvider();
    switch (preset) {
      case ReconciliationPeriodPreset.today:
        final start = DateTime(now.year, now.month, now.day, 0, 0, 0);
        final end = DateTime(now.year, now.month, now.day, 23, 59, 59, 999);
        return DateTimeRange(start: start, end: end);

      case ReconciliationPeriodPreset.thisWeek:
        final monday = now.subtract(Duration(days: now.weekday - 1));
        final start = DateTime(monday.year, monday.month, monday.day, 0, 0, 0);
        final sunday = monday.add(const Duration(days: 6));
        final end = DateTime(
          sunday.year,
          sunday.month,
          sunday.day,
          23,
          59,
          59,
          999,
        );
        return DateTimeRange(start: start, end: end);

      case ReconciliationPeriodPreset.monthYear:
        final target = monthYear ?? _selectedMonthYear;
        final start = DateTime(target.year, target.month, 1, 0, 0, 0);
        final nextMonth = target.month == 12
            ? DateTime(target.year + 1, 1, 1)
            : DateTime(target.year, target.month + 1, 1);
        final lastDay = nextMonth.subtract(const Duration(days: 1));
        final end = DateTime(
          lastDay.year,
          lastDay.month,
          lastDay.day,
          23,
          59,
          59,
          999,
        );
        return DateTimeRange(start: start, end: end);

      case ReconciliationPeriodPreset.thisYear:
        final start = DateTime(now.year, 1, 1, 0, 0, 0);
        final end = DateTime(now.year, 12, 31, 23, 59, 59, 999);
        return DateTimeRange(start: start, end: end);

      case ReconciliationPeriodPreset.lastYear:
        final start = DateTime(now.year - 1, 1, 1, 0, 0, 0);
        final end = DateTime(now.year - 1, 12, 31, 23, 59, 59, 999);
        return DateTimeRange(start: start, end: end);

      case ReconciliationPeriodPreset.custom:
        final s = customStart ?? _startDate;
        final e = customEnd ?? _endDate;
        final start = DateTime(s.year, s.month, s.day, 0, 0, 0);
        final end = DateTime(e.year, e.month, e.day, 23, 59, 59, 999);
        return DateTimeRange(start: start, end: end);
    }
  }

  @override
  List<BankTransaction> get filteredTransactions {
    List<BankTransaction> list;
    switch (_filter) {
      case ReconciliationFilter.all:
        list = _transactions;
        break;
      case ReconciliationFilter.pending:
        list = _transactions.where((t) => !t.isReconciled).toList();
        break;
      case ReconciliationFilter.reconciled:
        list = _transactions.where((t) => t.isReconciled).toList();
        break;
    }

    // Filtro por período de data
    final startLimit = DateTime(
      _startDate.year,
      _startDate.month,
      _startDate.day,
      0,
      0,
      0,
    );
    final endLimit = DateTime(
      _endDate.year,
      _endDate.month,
      _endDate.day,
      23,
      59,
      59,
      999,
    );
    list = list.where((t) {
      return !t.date.isBefore(startLimit) && !t.date.isAfter(endLimit);
    }).toList();

    if (_searchQuery.trim().isEmpty) {
      return list;
    }

    final query = _searchQuery.toLowerCase().trim();
    return list.where((t) {
      final memoMatches = t.memo?.toLowerCase().contains(query) ?? false;
      final fitIdMatches = t.fitId.toLowerCase().contains(query);
      return memoMatches || fitIdMatches;
    }).toList();
  }

  @override
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  @override
  void init(BankAccount account, {DateTime? referenceDate}) {
    _currentAccount = account;
    if (referenceDate != null) {
      _nowProvider = () => referenceDate;
      _initDefaults();
    }
    _currentPage = 1;
    loadTransactions();
  }

  @override
  void setPeriodPreset(ReconciliationPeriodPreset preset) {
    _periodPreset = preset;
    final range = _calculateRange(preset);
    _startDate = range.start;
    _endDate = range.end;
    _currentPage = 1;
    loadTransactions();
    notifyListeners();
  }

  @override
  void setCustomPeriod(DateTime start, DateTime end) {
    _periodPreset = ReconciliationPeriodPreset.custom;
    final range = _calculateRange(
      ReconciliationPeriodPreset.custom,
      customStart: start,
      customEnd: end,
    );
    _startDate = range.start;
    _endDate = range.end;
    _currentPage = 1;
    loadTransactions();
    notifyListeners();
  }

  @override
  void changeMonthYear(DateTime monthYear) {
    _selectedMonthYear = DateTime(monthYear.year, monthYear.month, 1);
    _periodPreset = ReconciliationPeriodPreset.monthYear;
    final range = _calculateRange(
      ReconciliationPeriodPreset.monthYear,
      monthYear: _selectedMonthYear,
    );
    _startDate = range.start;
    _endDate = range.end;
    _currentPage = 1;
    loadTransactions();
    notifyListeners();
  }

  @override
  void setPageSize(int size) {
    if (_pageSize == size) return;
    _pageSize = size;
    _currentPage = 1;
    loadTransactions();
    notifyListeners();
  }

  @override
  void setPage(int page) {
    if (page < 1 || (page > totalPages && totalPages > 0)) return;
    _currentPage = page;
    loadTransactions();
    notifyListeners();
  }

  @override
  void nextPage() {
    if (_currentPage < totalPages) {
      setPage(_currentPage + 1);
    }
  }

  @override
  void previousPage() {
    if (_currentPage > 1) {
      setPage(_currentPage - 1);
    }
  }

  @override
  Future<void> loadTransactions() async {
    if (_currentAccount == null) return;

    setLoading(true);
    try {
      final isReconciledFilter = _filter == ReconciliationFilter.all
          ? null
          : _filter == ReconciliationFilter.reconciled;

      final count = await _transactionRepository.countTransactions(
        _currentAccount!.id,
        isReconciled: isReconciledFilter,
        startDate: _startDate,
        endDate: _endDate,
      );
      _totalCount = count;

      if (_currentPage > totalPages && totalPages > 0) {
        _currentPage = totalPages;
      }

      final offset = (_currentPage - 1) * _pageSize;
      _transactions = await _transactionRepository.listTransactions(
        _currentAccount!.id,
        isReconciled: isReconciledFilter,
        startDate: _startDate,
        endDate: _endDate,
        limit: _pageSize,
        offset: offset >= 0 ? offset : 0,
      );
      setError(null);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  void setFilter(ReconciliationFilter filter) {
    _filter = filter;
    _currentPage = 1;
    loadTransactions();
    notifyListeners();
  }

  @override
  Future<void> reconcileTransaction(
    UuidValue transactionId,
    UuidValue financialEntryId,
  ) async {
    setLoading(true);
    try {
      final updated = await _transactionRepository.reconcile(
        transactionId,
        financialEntryId,
      );

      final index = _transactions.indexWhere((t) => t.id == transactionId);
      if (index != -1) {
        _transactions[index] = updated;
      }
      setError(null);
      notifyListeners();
    } catch (e) {
      setError(e.toString());
      rethrow;
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<List<FinancialEntry>> loadSuggestedEntries(
    BankTransaction transaction,
  ) async {
    try {
      final expectedType = transaction.amount < 0
          ? FinancialEntryType.payable
          : FinancialEntryType.receivable;

      final allEntries = await _financialEntryRepository.listEntries(
        status: FinancialEntryStatus.pending,
        type: expectedType,
      );

      final absAmount = transaction.amount.abs();
      final sorted = List<FinancialEntry>.from(allEntries);
      sorted.sort((a, b) {
        final diffA = (a.amount - absAmount).abs();
        final diffB = (b.amount - absAmount).abs();
        return diffA.compareTo(diffB);
      });

      return sorted;
    } catch (e) {
      return [];
    }
  }
}
