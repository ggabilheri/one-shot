import 'package:oneshot_server/src/core/repository/bank_account_repository.dart';
import 'package:oneshot_server/src/core/repository/bank_transaction_repository.dart';
import 'package:oneshot_server/src/core/repository/financial_entry_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:oneshot_server/src/services/bank_transaction_service.dart';
import 'package:serverpod/serverpod.dart';
import 'package:test/test.dart';

class FakeSession implements Session {
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

class FakeBankAccountRepository implements IBankAccountRepository {
  final Map<UuidValue, BankAccount> _accounts = {};

  void addAccount(BankAccount account) {
    _accounts[account.id] = account;
  }

  @override
  Future<BankAccount> create(Session session, BankAccount account) async {
    _accounts[account.id] = account;
    return account;
  }

  @override
  Future<BankAccount?> findById(Session session, UuidValue id) async {
    return _accounts[id];
  }

  @override
  Future<BankAccount> update(Session session, BankAccount account) async {
    _accounts[account.id] = account;
    return account;
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    return _accounts.remove(id) != null;
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
    return _accounts.values.toList();
  }
}

class FakeBankTransactionRepository implements IBankTransactionRepository {
  final List<BankTransaction> _transactions = [];

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
    var list = _transactions.where((t) {
      if (t.bankAccountId != bankAccountId) return false;
      if (isReconciled != null && t.isReconciled != isReconciled) return false;
      if (startDate != null && t.date.isBefore(startDate)) return false;
      if (endDate != null && t.date.isAfter(endDate)) return false;
      return true;
    }).toList();

    if (offset != null && offset > 0) {
      list = list.skip(offset).toList();
    }
    if (limit != null && limit > 0) {
      list = list.take(limit).toList();
    }
    return list;
  }

  @override
  Future<int> countByAccountId(
    Session session,
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _transactions.where((t) {
      if (t.bankAccountId != bankAccountId) return false;
      if (isReconciled != null && t.isReconciled != isReconciled) return false;
      if (startDate != null && t.date.isBefore(startDate)) return false;
      if (endDate != null && t.date.isAfter(endDate)) return false;
      return true;
    }).length;
  }

  @override
  Future<Set<String>> findExistingFitIds(
    Session session,
    UuidValue bankAccountId,
    List<String> fitIds,
  ) async {
    final fitIdSet = fitIds.toSet();
    return _transactions
        .where((t) => t.bankAccountId == bankAccountId && fitIdSet.contains(t.fitId))
        .map((t) => t.fitId)
        .toSet();
  }

  @override
  Future<List<BankTransaction>> insertBatch(
    Session session,
    List<BankTransaction> transactions, {
    Transaction? dbTransaction,
  }) async {
    _transactions.addAll(transactions);
    return transactions;
  }

  @override
  Future<BankTransaction?> findById(
    Session session,
    UuidValue id, {
    Transaction? dbTransaction,
  }) async {
    try {
      return _transactions.firstWhere((t) => t.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<BankTransaction> update(
    Session session,
    BankTransaction bankTransaction, {
    Transaction? dbTransaction,
  }) async {
    final index = _transactions.indexWhere((t) => t.id == bankTransaction.id);
    if (index != -1) {
      _transactions[index] = bankTransaction;
    } else {
      _transactions.add(bankTransaction);
    }
    return bankTransaction;
  }
}

class FakeFinancialEntryRepository implements IFinancialEntryRepository {
  final Map<UuidValue, FinancialEntry> _entries = {};

  void addEntry(FinancialEntry entry) {
    _entries[entry.id] = entry;
  }

  @override
  Future<FinancialEntry> create(Session session, FinancialEntry entry) async {
    _entries[entry.id] = entry;
    return entry;
  }

  @override
  Future<FinancialEntry?> findById(Session session, UuidValue id) async {
    return _entries[id];
  }

  @override
  Future<FinancialEntry> update(Session session, FinancialEntry entry) async {
    _entries[entry.id] = entry;
    return entry;
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    return _entries.remove(id) != null;
  }

  @override
  Future<List<FinancialEntry>> list(
    Session session, {
    required PlatformApp originModule,
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    return _entries.values.toList();
  }
}

void main() {
  group('BankTransactionService', () {
    late FakeSession session;
    late FakeBankAccountRepository bankAccountRepo;
    late FakeBankTransactionRepository bankTransactionRepo;
    late FakeFinancialEntryRepository financialEntryRepo;
    late BankTransactionService service;

    setUp(() {
      session = FakeSession();
      bankAccountRepo = FakeBankAccountRepository();
      bankTransactionRepo = FakeBankTransactionRepository();
      financialEntryRepo = FakeFinancialEntryRepository();
      service = BankTransactionService(
        bankAccountRepository: bankAccountRepo,
        bankTransactionRepository: bankTransactionRepo,
        financialEntryRepository: financialEntryRepo,
      );
    });

    String buildOfx({
      required String branchId,
      required String acctId,
      required List<({String fitId, double amount, String type, String memo})> transactions,
    }) {
      final trnBuffer = StringBuffer();
      for (final tx in transactions) {
        trnBuffer.writeln('''
<STMTTRN>
<TRNTYPE>${tx.type}
<DTPOSTED>20231010120000[-03:EST]
<TRNAMT>${tx.amount.toStringAsFixed(2)}
<FITID>${tx.fitId}
<MEMO>${tx.memo}
</STMTTRN>''');
      }

      return '''
OFXHEADER:100
DATA:OFXSGML
<OFX>
<BANKMSGSRSV1>
<STMTTRNRS>
<STMTRS>
<BANKACCTFROM>
<BANKID>001
<BRANCHID>$branchId
<ACCTID>$acctId
</BANKACCTFROM>
<BANKTRANLIST>
$trnBuffer
</BANKTRANLIST>
<LEDGERBAL>
<BALAMT>1000.00
</LEDGERBAL>
</STMTRS>
</STMTTRNRS>
</BANKMSGSRSV1>
</OFX>
''';
    }

    test('CT-001: previewOfx calcula totalizadores sem persistir dados', () async {
      final accountId = UuidValue.fromString('11111111-1111-1111-1111-111111111111');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste OFX',
        agency: '1234',
        agencyDigit: '0',
        accountNumber: '56789',
        accountDigit: '0',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      // Inserir 1 transação prévia para simular repetição
      await service.importOfx(
        session,
        accountId,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'TX_EXISTING', amount: -50.0, type: 'DEBIT', memo: 'Previa 1'),
          ],
        ),
      );

      final ofxContent = buildOfx(
        branchId: '1234',
        acctId: '56789-0',
        transactions: [
          (fitId: 'TX_EXISTING', amount: -50.0, type: 'DEBIT', memo: 'Repetida'),
          (fitId: 'TX_NEW_1', amount: 150.0, type: 'CREDIT', memo: 'Credito Novo'),
          (fitId: 'TX_NEW_2', amount: -80.0, type: 'DEBIT', memo: 'Debito Novo'),
        ],
      );

      final preview = await service.preview(session, accountId, ofxContent);

      expect(preview.isAccountMatched, isTrue);
      expect(preview.accountMatchMessage, isNull);
      expect(preview.newTransactionsCount, equals(2));
      expect(preview.duplicatedTransactionsCount, equals(1));
      expect(preview.totalCredits, equals(150.0));
      expect(preview.totalDebits, equals(130.0));
      expect(preview.transactions.length, equals(3));

      // Verifica que a tabela não gravou as transações novas
      final inDb = await service.listTransactions(session, accountId);
      expect(inDb.length, equals(1));
      expect(inDb.first.fitId, equals('TX_EXISTING'));
    });

    test('CT-002: importOfx rejeita importação quando agência/conta divergem', () async {
      final accountId = UuidValue.fromString('22222222-2222-2222-2222-222222222222');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste 2',
        agency: '1234',
        accountNumber: '56789',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      final divergentOfx = buildOfx(
        branchId: '9999',
        acctId: '88888-8',
        transactions: [
          (fitId: 'TX_DIVERGENT', amount: 100.0, type: 'CREDIT', memo: 'Outro banco'),
        ],
      );

      expect(
        () => service.importOfx(session, accountId, divergentOfx),
        throwsA(isA<AppException>().having(
          (e) => e.code,
          'code',
          equals('ACCOUNT_MISMATCH'),
        )),
      );

      final inDb = await service.listTransactions(session, accountId);
      expect(inDb, isEmpty);
    });

    test('CT-003: importOfx garante idempotência gravando apenas novos fitIds', () async {
      final accountId = UuidValue.fromString('33333333-3333-3333-3333-333333333333');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste 3',
        agency: '1234',
        agencyDigit: '0',
        accountNumber: '56789',
        accountDigit: '0',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      final firstBatch = buildOfx(
        branchId: '1234',
        acctId: '56789-0',
        transactions: [
          (fitId: 'FIT_001', amount: 100.0, type: 'CREDIT', memo: 'Primeiro lote'),
          (fitId: 'FIT_002', amount: -30.0, type: 'DEBIT', memo: 'Primeiro lote'),
        ],
      );

      final firstResult = await service.importOfx(session, accountId, firstBatch);
      expect(firstResult.length, equals(2));

      final secondBatch = buildOfx(
        branchId: '1234',
        acctId: '56789-0',
        transactions: [
          (fitId: 'FIT_002', amount: -30.0, type: 'DEBIT', memo: 'Repetido'),
          (fitId: 'FIT_003', amount: 250.0, type: 'CREDIT', memo: 'Novo'),
        ],
      );

      final secondResult = await service.importOfx(session, accountId, secondBatch);
      expect(secondResult.length, equals(1));
      expect(secondResult.first.fitId, equals('FIT_003'));

      final allInDb = await service.listTransactions(session, accountId);
      expect(allInDb.length, equals(3));
      final fitIdsInDb = allInDb.map((t) => t.fitId).toSet();
      expect(fitIdsInDb, containsAll(['FIT_001', 'FIT_002', 'FIT_003']));
    });

    test('CT-004: reconcile vincula BankTransaction e FinancialEntry', () async {
      final accountId = UuidValue.fromString('44444444-4444-4444-4444-444444444444');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste 4',
        agency: '1234',
        agencyDigit: '0',
        accountNumber: '56789',
        accountDigit: '0',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      final imported = await service.importOfx(
        session,
        accountId,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_RECON_1', amount: -120.0, type: 'DEBIT', memo: 'Pagamento Boleto'),
          ],
        ),
      );
      final transaction = imported.first;

      final entryId = UuidValue.fromString('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa');
      final entry = FinancialEntry(
        id: entryId,
        type: FinancialEntryType.payable,
        description: 'Boleto Fornecedor XYZ',
        amount: 120.0,
        dueDate: DateTime.now(),
        status: FinancialEntryStatus.pending,
        originModule: PlatformApp.backoffice_web,
      );
      financialEntryRepo.addEntry(entry);

      final reconciledTx = await service.reconcile(
        session,
        transaction.id,
        entry.id,
      );

      expect(reconciledTx.isReconciled, isTrue);
      expect(reconciledTx.financialEntryId, equals(entry.id));
      expect(reconciledTx.reconciledAt, isNotNull);

      final updatedEntry = await financialEntryRepo.findById(session, entry.id);
      expect(updatedEntry, isNotNull);
      expect(updatedEntry!.status, equals(FinancialEntryStatus.paid));
      expect(updatedEntry.bankAccountId, equals(accountId));
      expect(updatedEntry.paymentDate, isNotNull);
    });

    test('CT-005: reconcile lança exceção ao tentar conciliar transação já conciliada', () async {
      final accountId = UuidValue.fromString('55555555-5555-5555-5555-555555555555');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste 5',
        agency: '1234',
        agencyDigit: '0',
        accountNumber: '56789',
        accountDigit: '0',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      final imported = await service.importOfx(
        session,
        accountId,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_RECON_DUAL', amount: 50.0, type: 'CREDIT', memo: 'Pix'),
          ],
        ),
      );
      final transaction = imported.first;

      final entry1 = FinancialEntry(
        id: UuidValue.fromString('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb'),
        type: FinancialEntryType.receivable,
        description: 'Entrada 1',
        amount: 50.0,
        dueDate: DateTime.now(),
        status: FinancialEntryStatus.pending,
        originModule: PlatformApp.backoffice_web,
      );
      final entry2 = FinancialEntry(
        id: UuidValue.fromString('cccccccc-cccc-cccc-cccc-cccccccccccc'),
        type: FinancialEntryType.receivable,
        description: 'Entrada 2',
        amount: 50.0,
        dueDate: DateTime.now(),
        status: FinancialEntryStatus.pending,
        originModule: PlatformApp.backoffice_web,
      );
      financialEntryRepo.addEntry(entry1);
      financialEntryRepo.addEntry(entry2);

      // Primeira conciliação com sucesso
      await service.reconcile(session, transaction.id, entry1.id);

      // Segunda conciliação na mesma transação deve falhar
      expect(
        () => service.reconcile(session, transaction.id, entry2.id),
        throwsA(isA<AppException>().having(
          (e) => e.code,
          'code',
          equals('ALREADY_RECONCILED'),
        )),
      );
    });

    test('CT-006: listTransactions filtra por conta e status de conciliação', () async {
      final accountId = UuidValue.fromString('66666666-6666-6666-6666-666666666666');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Teste 6',
        agency: '1234',
        agencyDigit: '0',
        accountNumber: '56789',
        accountDigit: '0',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      final imported = await service.importOfx(
        session,
        accountId,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_LIST_1', amount: 100.0, type: 'CREDIT', memo: 'Conciliar'),
            (fitId: 'FIT_LIST_2', amount: 200.0, type: 'CREDIT', memo: 'Pendente'),
          ],
        ),
      );

      final entry = FinancialEntry(
        id: UuidValue.fromString('dddddddd-dddd-dddd-dddd-dddddddddddd'),
        type: FinancialEntryType.receivable,
        description: 'Receita Conciliar',
        amount: 100.0,
        dueDate: DateTime.now(),
        status: FinancialEntryStatus.pending,
        originModule: PlatformApp.backoffice_web,
      );
      financialEntryRepo.addEntry(entry);

      await service.reconcile(session, imported[0].id, entry.id);

      // Filtro apenas pendentes (isReconciled: false)
      final pendingOnly = await service.listTransactions(
        session,
        accountId,
        isReconciled: false,
      );
      expect(pendingOnly.length, equals(1));
      expect(pendingOnly.first.fitId, equals('FIT_LIST_2'));

      // Filtro apenas conciliadas (isReconciled: true)
      final reconciledOnly = await service.listTransactions(
        session,
        accountId,
        isReconciled: true,
      );
      expect(reconciledOnly.length, equals(1));
      expect(reconciledOnly.first.fitId, equals('FIT_LIST_1'));
    });

    test('CT-007: listTransactions retorna lista vazia quando não há dados', () async {
      final accountId = UuidValue.fromString('77777777-7777-7777-7777-777777777777');
      final emptyList = await service.listTransactions(session, accountId);
      expect(emptyList, isEmpty);
    });

    test('CT-008: listTransactions aplica paginação (limit e offset) e countTransactions conta total', () async {
      final accountId = UuidValue.fromString('88888888-8888-8888-8888-888888888888');
      final account = BankAccount(
        id: accountId,
        name: 'Conta Paginada',
        agency: '9999',
        accountNumber: '11111',
        balance: 5000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );
      bankAccountRepo.addAccount(account);

      await service.importOfx(
        session,
        accountId,
        buildOfx(
          branchId: '9999',
          acctId: '11111',
          transactions: [
            (fitId: 'TX_PAG_1', amount: 10.0, type: 'CREDIT', memo: 'Item 1'),
            (fitId: 'TX_PAG_2', amount: 20.0, type: 'CREDIT', memo: 'Item 2'),
            (fitId: 'TX_PAG_3', amount: 30.0, type: 'CREDIT', memo: 'Item 3'),
            (fitId: 'TX_PAG_4', amount: 40.0, type: 'CREDIT', memo: 'Item 4'),
            (fitId: 'TX_PAG_5', amount: 50.0, type: 'CREDIT', memo: 'Item 5'),
          ],
        ),
      );

      final total = await service.countTransactions(session, accountId);
      expect(total, equals(5));

      // Página 1: limit 2, offset 0 -> 2 itens
      final page1 = await service.listTransactions(
        session,
        accountId,
        limit: 2,
        offset: 0,
      );
      expect(page1.length, equals(2));
      expect(page1.map((t) => t.fitId), equals(['TX_PAG_1', 'TX_PAG_2']));

      // Página 2: limit 2, offset 2 -> 2 itens
      final page2 = await service.listTransactions(
        session,
        accountId,
        limit: 2,
        offset: 2,
      );
      expect(page2.length, equals(2));
      expect(page2.map((t) => t.fitId), equals(['TX_PAG_3', 'TX_PAG_4']));

      // Página 3: limit 2, offset 4 -> 1 item restante
      final page3 = await service.listTransactions(
        session,
        accountId,
        limit: 2,
        offset: 4,
      );
      expect(page3.length, equals(1));
      expect(page3.first.fitId, equals('TX_PAG_5'));
    });
  });
}

