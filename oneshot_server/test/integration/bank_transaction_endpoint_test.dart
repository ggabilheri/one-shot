import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:test/test.dart';

import 'test_tools/serverpod_test_tools.dart';

void main() {
  setUpAll(sl.init);

  withServerpod('Given BankTransaction endpoint', (sessionBuilder, endpoints) {
    const originModule = 'BACKOFFICE';

    BankAccount buildAccount({
      String name = 'Conta Teste OFX',
      String agency = '1234',
      String agencyDigit = '0',
      String accountNumber = '56789',
      String accountDigit = '0',
    }) {
      return BankAccount(
        name: name,
        agency: agency,
        agencyDigit: agencyDigit,
        accountNumber: accountNumber,
        accountDigit: accountDigit,
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: originModule,
      );
    }

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
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(),
      );

      // Inserir 1 transação prévia para simular repetição
      await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
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

      final preview = await endpoints.bankTransaction.previewOfx(
        sessionBuilder,
        account.id,
        ofxContent,
      );

      expect(preview.isAccountMatched, isTrue);
      expect(preview.accountMatchMessage, isNull);
      expect(preview.newTransactionsCount, equals(2));
      expect(preview.duplicatedTransactionsCount, equals(1));
      expect(preview.totalCredits, equals(150.0));
      expect(preview.totalDebits, equals(130.0)); // 50 + 80
      expect(preview.transactions.length, equals(3));

      // Verifica que a tabela não gravou as transações novas
      final inDb = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
      );
      expect(inDb.length, equals(1));
      expect(inDb.first.fitId, equals('TX_EXISTING'));
    });

    test('CT-002: importOfx rejeita importação quando agência/conta divergem', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(agency: '1234', accountNumber: '56789'),
      );

      final divergentOfx = buildOfx(
        branchId: '9999',
        acctId: '88888-8',
        transactions: [
          (fitId: 'TX_DIVERGENT', amount: 100.0, type: 'CREDIT', memo: 'Outro banco'),
        ],
      );

      expect(
        () => endpoints.bankTransaction.importOfx(
          sessionBuilder,
          account.id,
          divergentOfx,
        ),
        throwsA(isA<AppException>().having(
          (e) => e.code,
          'code',
          equals('ACCOUNT_MISMATCH'),
        )),
      );

      final inDb = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
      );
      expect(inDb, isEmpty);
    });

    test('CT-003: importOfx garante idempotência gravando apenas novos fitIds', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(),
      );

      final firstBatch = buildOfx(
        branchId: '1234',
        acctId: '56789-0',
        transactions: [
          (fitId: 'FIT_001', amount: 100.0, type: 'CREDIT', memo: 'Primeiro lote'),
          (fitId: 'FIT_002', amount: -30.0, type: 'DEBIT', memo: 'Primeiro lote'),
        ],
      );

      final firstResult = await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
        firstBatch,
      );
      expect(firstResult.length, equals(2));

      final secondBatch = buildOfx(
        branchId: '1234',
        acctId: '56789-0',
        transactions: [
          (fitId: 'FIT_002', amount: -30.0, type: 'DEBIT', memo: 'Repetido'),
          (fitId: 'FIT_003', amount: 250.0, type: 'CREDIT', memo: 'Novo'),
        ],
      );

      final secondResult = await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
        secondBatch,
      );
      expect(secondResult.length, equals(1));
      expect(secondResult.first.fitId, equals('FIT_003'));

      final allInDb = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
      );
      expect(allInDb.length, equals(3));
      final fitIdsInDb = allInDb.map((t) => t.fitId).toSet();
      expect(fitIdsInDb, containsAll(['FIT_001', 'FIT_002', 'FIT_003']));
    });

    test('CT-004: reconcile vincula BankTransaction e FinancialEntry', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(),
      );

      final imported = await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_RECON_1', amount: -120.0, type: 'DEBIT', memo: 'Pagamento Boleto'),
          ],
        ),
      );
      final transaction = imported.first;

      final entry = await endpoints.financialEntry.createEntry(
        sessionBuilder,
        FinancialEntry(
          type: FinancialEntryType.payable,
          description: 'Boleto Fornecedor XYZ',
          amount: 120.0,
          dueDate: DateTime.now(),
          status: FinancialEntryStatus.pending,
          originModule: PlatformApp.backoffice_web,
        ),
      );

      final reconciledTx = await endpoints.bankTransaction.reconcile(
        sessionBuilder,
        transaction.id,
        entry.id,
      );

      expect(reconciledTx.isReconciled, isTrue);
      expect(reconciledTx.financialEntryId, equals(entry.id));
      expect(reconciledTx.reconciledAt, isNotNull);

      final updatedEntry = await endpoints.financialEntry.readEntry(
        sessionBuilder,
        entry.id,
      );
      expect(updatedEntry, isNotNull);
      expect(updatedEntry!.status, equals(FinancialEntryStatus.paid));
      expect(updatedEntry.bankAccountId, equals(account.id));
      expect(updatedEntry.paymentDate, isNotNull);
    });

    test('CT-005: reconcile lança exceção ao tentar conciliar transação já conciliada', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(),
      );

      final imported = await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_RECON_DUAL', amount: 50.0, type: 'CREDIT', memo: 'Pix'),
          ],
        ),
      );
      final transaction = imported.first;

      final entry1 = await endpoints.financialEntry.createEntry(
        sessionBuilder,
        FinancialEntry(
          type: FinancialEntryType.receivable,
          description: 'Entrada 1',
          amount: 50.0,
          dueDate: DateTime.now(),
          status: FinancialEntryStatus.pending,
          originModule: PlatformApp.backoffice_web,
        ),
      );

      final entry2 = await endpoints.financialEntry.createEntry(
        sessionBuilder,
        FinancialEntry(
          type: FinancialEntryType.receivable,
          description: 'Entrada 2',
          amount: 50.0,
          dueDate: DateTime.now(),
          status: FinancialEntryStatus.pending,
          originModule: PlatformApp.backoffice_web,
        ),
      );

      // Primeira conciliação com sucesso
      await endpoints.bankTransaction.reconcile(
        sessionBuilder,
        transaction.id,
        entry1.id,
      );

      // Segunda conciliação na mesma transação deve falhar
      expect(
        () => endpoints.bankTransaction.reconcile(
          sessionBuilder,
          transaction.id,
          entry2.id,
        ),
        throwsA(isA<AppException>().having(
          (e) => e.code,
          'code',
          equals('ALREADY_RECONCILED'),
        )),
      );
    });

    test('CT-006: listTransactions filtra por conta e status de conciliação', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(),
      );

      final imported = await endpoints.bankTransaction.importOfx(
        sessionBuilder,
        account.id,
        buildOfx(
          branchId: '1234',
          acctId: '56789-0',
          transactions: [
            (fitId: 'FIT_LIST_1', amount: 100.0, type: 'CREDIT', memo: 'Conciliar'),
            (fitId: 'FIT_LIST_2', amount: 200.0, type: 'CREDIT', memo: 'Pendente'),
          ],
        ),
      );

      final entry = await endpoints.financialEntry.createEntry(
        sessionBuilder,
        FinancialEntry(
          type: FinancialEntryType.receivable,
          description: 'Receita Conciliar',
          amount: 100.0,
          dueDate: DateTime.now(),
          status: FinancialEntryStatus.pending,
          originModule: PlatformApp.backoffice_web,
        ),
      );

      await endpoints.bankTransaction.reconcile(
        sessionBuilder,
        imported[0].id,
        entry.id,
      );

      // Filtro apenas pendentes (isReconciled: false)
      final pendingOnly = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
        isReconciled: false,
      );
      expect(pendingOnly.length, equals(1));
      expect(pendingOnly.first.fitId, equals('FIT_LIST_2'));

      // Filtro apenas conciliadas (isReconciled: true)
      final reconciledOnly = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
        isReconciled: true,
      );
      expect(reconciledOnly.length, equals(1));
      expect(reconciledOnly.first.fitId, equals('FIT_LIST_1'));
    });

    test('CT-007: listTransactions retorna lista vazia quando não há dados', () async {
      final account = await endpoints.bankAccount.createAccount(
        sessionBuilder,
        buildAccount(name: 'Conta Vazia'),
      );

      final emptyList = await endpoints.bankTransaction.listTransactions(
        sessionBuilder,
        account.id,
      );

      expect(emptyList, isEmpty);
    });
  });
}
