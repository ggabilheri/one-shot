import 'package:backoffice_web/src/domain/repositories/bank_transaction_repository.dart';
import 'package:backoffice_web/src/domain/repositories/financial_entry_repository.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oneshot_client/oneshot_client.dart';

class FakeBankTransactionRepository implements IBankTransactionRepository {
  List<BankTransaction> Function(UuidValue bankAccountId)? onList;
  Future<BankTransaction> Function(
    UuidValue transactionId,
    UuidValue financialEntryId,
  )? onReconcile;

  @override
  Future<OfxPreviewResult> previewOfx(
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<List<BankTransaction>> importOfx(
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    throw UnimplementedError();
  }

  int Function(UuidValue bankAccountId)? onCount;

  @override
  Future<List<BankTransaction>> listTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    if (onList != null) {
      var list = onList!(bankAccountId);
      if (offset != null && offset > 0) {
        list = list.skip(offset).toList();
      }
      if (limit != null && limit > 0) {
        list = list.take(limit).toList();
      }
      return list;
    }
    return [];
  }

  @override
  Future<int> countTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    if (onCount != null) {
      return onCount!(bankAccountId);
    }
    if (onList != null) {
      return onList!(bankAccountId).length;
    }
    return 0;
  }

  @override
  Future<BankTransaction> reconcile(
    UuidValue transactionId,
    UuidValue financialEntryId,
  ) async {
    if (onReconcile != null) {
      return await onReconcile!(transactionId, financialEntryId);
    }
    throw UnimplementedError();
  }
}

class FakeFinancialEntryRepository implements IFinancialEntryRepository {
  List<FinancialEntry> entries = [];

  @override
  Future<List<FinancialEntry>> listEntries({
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    return entries;
  }

  @override
  Future<FinancialEntry> create(FinancialEntry entry) async => entry;

  @override
  Future<FinancialEntry> update(FinancialEntry entry) async => entry;

  @override
  Future<bool> delete(UuidValue id) async => true;
}

void main() {
  final testAccount = BankAccount(
    id: UuidValue.fromString('11111111-1111-1111-1111-111111111111'),
    name: 'Conta Teste',
    balance: 1000.0,
    status: 'ACTIVE',
    originModule: 'BACKOFFICE',
  );

  final fixedDate = DateTime(2023, 10, 15, 12, 0);

  final tx1 = BankTransaction(
    id: UuidValue.fromString('22222222-2222-2222-2222-222222222222'),
    bankAccountId: testAccount.id,
    fitId: 'TX1',
    transactionType: 'DEBIT',
    date: fixedDate,
    amount: -50.0,
    memo: 'Compra de Material',
    isReconciled: false,
  );

  final tx2 = BankTransaction(
    id: UuidValue.fromString('33333333-3333-3333-3333-333333333333'),
    bankAccountId: testAccount.id,
    fitId: 'TX2',
    transactionType: 'CREDIT',
    date: fixedDate,
    amount: 150.0,
    memo: 'Recebimento de Cliente',
    isReconciled: false,
  );

  final tx3 = BankTransaction(
    id: UuidValue.fromString('44444444-4444-4444-4444-444444444444'),
    bankAccountId: testAccount.id,
    fitId: 'TX3',
    transactionType: 'DEBIT',
    date: fixedDate,
    amount: -85.0,
    memo: 'Tarifa Bancária',
    isReconciled: true,
  );

  final txDifferentDate = BankTransaction(
    id: UuidValue.fromString('55555555-5555-5555-5555-555555555555'),
    bankAccountId: testAccount.id,
    fitId: 'TX_OLD',
    transactionType: 'DEBIT',
    date: DateTime(2022, 5, 10, 10, 0),
    amount: -100.0,
    memo: 'Transação Antiga',
    isReconciled: false,
  );

  group('BankReconciliationViewModel Unit Tests', () {
    late FakeBankTransactionRepository txRepo;
    late FakeFinancialEntryRepository entryRepo;
    late BankReconciliationViewModel vm;

    setUp(() {
      txRepo = FakeBankTransactionRepository();
      entryRepo = FakeFinancialEntryRepository();
      vm = BankReconciliationViewModel(
        txRepo,
        entryRepo,
        nowProvider: () => fixedDate,
      );
    });

    test('CT-001: Filtra transações conforme status selecionado', () async {
      txRepo.onList = (_) => [tx1, tx2, tx3];

      vm.init(testAccount);
      await pumpEventQueue();

      expect(vm.transactions.length, equals(3));
      expect(vm.filteredTransactions.length, equals(3)); // all

      vm.setFilter(ReconciliationFilter.pending);
      expect(vm.filteredTransactions.length, equals(2));
      expect(
        vm.filteredTransactions.map((t) => t.fitId),
        containsAll(['TX1', 'TX2']),
      );

      vm.setFilter(ReconciliationFilter.reconciled);
      expect(vm.filteredTransactions.length, equals(1));
      expect(vm.filteredTransactions.first.fitId, equals('TX3'));
    });

    test('CT-002: Trata falha de carregamento definindo erro', () async {
      txRepo.onList = (_) => throw Exception('Falha de rede');

      vm.init(testAccount);
      await pumpEventQueue();

      expect(vm.isLoading, isFalse);
      expect(vm.error, contains('Falha de rede'));
      expect(vm.transactions, isEmpty);
    });

    test('CT-003: Atualiza status da transação em memória após conciliação',
        () async {
      txRepo.onList = (_) => [tx1, tx2];
      txRepo.onReconcile = (txId, entryId) async {
        return BankTransaction(
          id: txId,
          bankAccountId: testAccount.id,
          fitId: 'TX1',
          transactionType: 'DEBIT',
          date: tx1.date,
          amount: tx1.amount,
          financialEntryId: entryId,
          isReconciled: true,
          reconciledAt: fixedDate,
        );
      };

      vm.init(testAccount);
      await pumpEventQueue();

      final entryId =
          UuidValue.fromString('99999999-9999-9999-9999-999999999999');
      await vm.reconcileTransaction(tx1.id, entryId);

      expect(vm.isLoading, isFalse);
      expect(vm.error, isNull);

      final updated = vm.transactions.firstWhere((t) => t.id == tx1.id);
      expect(updated.isReconciled, isTrue);
      expect(updated.financialEntryId, equals(entryId));
    });

    test('CT-007: Período padrão é o dia atual (Hoje) e filtra por data',
        () async {
      txRepo.onList = (_) => [tx1, txDifferentDate];

      vm.init(testAccount);
      await pumpEventQueue();

      expect(vm.periodPreset, equals(ReconciliationPeriodPreset.today));
      expect(vm.startDate.day, equals(fixedDate.day));
      expect(vm.startDate.month, equals(fixedDate.month));
      expect(vm.startDate.year, equals(fixedDate.year));
      // tx1 está em fixedDate, txDifferentDate é de 2022
      expect(vm.filteredTransactions.length, equals(1));
      expect(vm.filteredTransactions.first.fitId, equals('TX1'));
    });

    test('CT-008: Altera preset de período e atualiza limites de data',
        () async {
      txRepo.onList = (_) => [tx1, txDifferentDate];

      vm.init(testAccount);
      await pumpEventQueue();

      // Mês e Ano
      vm.setPeriodPreset(ReconciliationPeriodPreset.monthYear);
      expect(vm.periodPreset, equals(ReconciliationPeriodPreset.monthYear));
      expect(vm.startDate.month, equals(10));
      expect(vm.startDate.year, equals(2023));

      // Ano Passado (2022) -> Deve incluir txDifferentDate
      vm.setPeriodPreset(ReconciliationPeriodPreset.lastYear);
      expect(vm.periodPreset, equals(ReconciliationPeriodPreset.lastYear));
      expect(vm.startDate.year, equals(2022));
      expect(vm.filteredTransactions.length, equals(1));
      expect(vm.filteredTransactions.first.fitId, equals('TX_OLD'));

      // Período Personalizado
      vm.setCustomPeriod(DateTime(2022, 1, 1), DateTime(2023, 12, 31));
      expect(vm.periodPreset, equals(ReconciliationPeriodPreset.custom));
      expect(vm.filteredTransactions.length, equals(2));
    });

    test('CT-010: Paginação calcula totalPages e navega com nextPage e previousPage',
        () async {
      final items = List.generate(
        25,
        (i) => BankTransaction(
          id: UuidValue.fromString('11111111-1111-1111-1111-${(i + 1).toString().padLeft(12, '0')}'),
          bankAccountId: testAccount.id,
          fitId: 'TX_$i',
          transactionType: 'DEBIT',
          date: fixedDate,
          amount: -10.0,
          memo: 'Item $i',
          isReconciled: false,
        ),
      );

      txRepo.onList = (_) => items;
      txRepo.onCount = (_) => items.length;

      vm.init(testAccount);
      await pumpEventQueue();

      // Default: pageSize 20 -> 25 itens geram 2 páginas
      expect(vm.pageSize, equals(20));
      expect(vm.currentPage, equals(1));
      expect(vm.totalCount, equals(25));
      expect(vm.totalPages, equals(2));
      expect(vm.transactions.length, equals(20));

      // Avançar para a página 2
      vm.nextPage();
      await pumpEventQueue();

      expect(vm.currentPage, equals(2));
      expect(vm.transactions.length, equals(5));

      // Voltar para a página 1
      vm.previousPage();
      await pumpEventQueue();

      expect(vm.currentPage, equals(1));
      expect(vm.transactions.length, equals(20));
    });

    test('CT-011: Alterar pageSize atualiza número de páginas e reseta para página 1',
        () async {
      final items = List.generate(
        55,
        (i) => BankTransaction(
          id: UuidValue.fromString('22222222-2222-2222-2222-${(i + 1).toString().padLeft(12, '0')}'),
          bankAccountId: testAccount.id,
          fitId: 'TX_55_$i',
          transactionType: 'CREDIT',
          date: fixedDate,
          amount: 50.0,
          memo: 'Item $i',
          isReconciled: false,
        ),
      );

      txRepo.onList = (_) => items;
      txRepo.onCount = (_) => items.length;

      vm.init(testAccount);
      await pumpEventQueue();

      // Page size para 10 -> 55 itens = 6 páginas
      vm.setPageSize(10);
      await pumpEventQueue();

      expect(vm.pageSize, equals(10));
      expect(vm.totalPages, equals(6));
      expect(vm.currentPage, equals(1));

      // Page size para 50 -> 55 itens = 2 páginas
      vm.setPageSize(50);
      await pumpEventQueue();

      expect(vm.pageSize, equals(50));
      expect(vm.totalPages, equals(2));

      // Page size para 100 -> 55 itens = 1 página
      vm.setPageSize(100);
      await pumpEventQueue();

      expect(vm.pageSize, equals(100));
      expect(vm.totalPages, equals(1));
    });
  });
}
