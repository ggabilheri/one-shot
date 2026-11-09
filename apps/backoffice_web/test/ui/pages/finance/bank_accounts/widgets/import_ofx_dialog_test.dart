import 'package:backoffice_web/l10n/app_localizations.dart';
import 'package:backoffice_web/src/domain/repositories/bank_transaction_repository.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/import_ofx_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oneshot_client/oneshot_client.dart';

class FakeBankTransactionRepository implements IBankTransactionRepository {
  OfxPreviewResult Function(UuidValue bankAccountId, String ofxContent)?
      onPreview;
  Future<List<BankTransaction>> Function(
      UuidValue bankAccountId, String ofxContent)? onImport;

  int importCallCount = 0;

  @override
  Future<OfxPreviewResult> previewOfx(
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    if (onPreview != null) {
      return onPreview!(bankAccountId, ofxContent);
    }
    return OfxPreviewResult(
      bankId: '001',
      branchId: '1234',
      acctId: '56789',
      transactions: [],
      totalCredits: 1500.0,
      totalDebits: 350.0,
      newTransactionsCount: 5,
      duplicatedTransactionsCount: 1,
      isAccountMatched: true,
    );
  }

  @override
  Future<List<BankTransaction>> importOfx(
    UuidValue bankAccountId,
    String ofxContent,
  ) async {
    importCallCount++;
    if (onImport != null) {
      return onImport!(bankAccountId, ofxContent);
    }
    return [];
  }

  @override
  Future<List<BankTransaction>> listTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    return [];
  }

  @override
  Future<int> countTransactions(
    UuidValue bankAccountId, {
    bool? isReconciled,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return 0;
  }

  @override
  Future<BankTransaction> reconcile(
    UuidValue transactionId,
    UuidValue financialEntryId,
  ) async {
    return BankTransaction(
      bankAccountId: UuidValue.fromString('11111111-1111-1111-1111-111111111111'),
      fitId: 'FIT_001',
      transactionType: 'DEBIT',
      date: DateTime.now(),
      amount: -100.0,
      isReconciled: true,
    );
  }
}

void main() {
  final testAccount = BankAccount(
    id: UuidValue.fromString('11111111-1111-1111-1111-111111111111'),
    name: 'Conta Corrente Principal',
    agency: '1234',
    accountNumber: '56789',
    balance: 5000.0,
    status: 'ACTIVE',
    originModule: 'BACKOFFICE',
  );

  Widget createWidgetUnderTest({
    required FakeBankTransactionRepository repository,
    String? initialOfxContent,
    String? initialFileName,
  }) {
    return MaterialApp(
      locale: const Locale('pt'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('pt'), Locale('en')],
      home: Scaffold(
        body: ImportOfxDialog(
          account: testAccount,
          repository: repository,
          initialOfxContent: initialOfxContent,
          initialFileName: initialFileName,
        ),
      ),
    );
  }

  group('ImportOfxDialog Widget Tests', () {
    testWidgets(
      'CT-001: ImportOfxDialog exibe resumo financeiro após seleção de arquivo válido',
      (tester) async {
        final repo = FakeBankTransactionRepository();
        repo.onPreview = (_, __) => OfxPreviewResult(
              bankId: '001',
              branchId: '1234',
              acctId: '56789',
              transactions: [],
              totalCredits: 2500.0,
              totalDebits: 450.0,
              newTransactionsCount: 8,
              duplicatedTransactionsCount: 2,
              isAccountMatched: true,
            );

        await tester.pumpWidget(createWidgetUnderTest(
          repository: repo,
          initialOfxContent: '<OFX>teste</OFX>',
          initialFileName: 'extrato_valido.ofx',
        ));
        await tester.pumpAndSettle();

        expect(find.byKey(const Key('previewSummaryContainer')), findsOneWidget);
        expect(find.text('8'), findsOneWidget); // novas transações
        expect(find.text('2'), findsOneWidget); // duplicadas
        expect(find.byKey(const Key('accountMismatchAlert')), findsNothing);

        final confirmButton = tester.widget<ElevatedButton>(
          find.byKey(const Key('confirmImportButton')),
        );
        expect(confirmButton.onPressed, isNotNull);
      },
    );

    testWidgets(
      'CT-002: ImportOfxDialog bloqueia importação quando arquivo pertence a outra conta',
      (tester) async {
        final repo = FakeBankTransactionRepository();
        repo.onPreview = (_, __) => OfxPreviewResult(
              bankId: '001',
              branchId: '9999',
              acctId: '88888',
              transactions: [],
              totalCredits: 100.0,
              totalDebits: 50.0,
              newTransactionsCount: 1,
              duplicatedTransactionsCount: 0,
              isAccountMatched: false,
              accountMatchMessage:
                  'O arquivo OFX pertence à Agência 9999 / Conta 88888, divergente da conta selecionada.',
            );

        await tester.pumpWidget(createWidgetUnderTest(
          repository: repo,
          initialOfxContent: '<OFX>divergente</OFX>',
          initialFileName: 'extrato_outro_banco.ofx',
        ));
        await tester.pumpAndSettle();

        expect(find.byKey(const Key('accountMismatchAlert')), findsOneWidget);
        expect(
          find.text(
            'O arquivo OFX pertence à Agência 9999 / Conta 88888, divergente da conta selecionada.',
          ),
          findsOneWidget,
        );

        final confirmButton = tester.widget<ElevatedButton>(
          find.byKey(const Key('confirmImportButton')),
        );
        expect(confirmButton.onPressed, isNull);
      },
    );

    testWidgets(
      'CT-003: Clique em Confirmar Importação invoca importOfx e fecha diálogo',
      (tester) async {
        final repo = FakeBankTransactionRepository();
        repo.onPreview = (_, __) => OfxPreviewResult(
              bankId: '001',
              transactions: [],
              totalCredits: 1000.0,
              totalDebits: 0.0,
              newTransactionsCount: 3,
              duplicatedTransactionsCount: 0,
              isAccountMatched: true,
            );

        bool dialogClosed = false;

        await tester.pumpWidget(MaterialApp(
          locale: const Locale('pt'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () async {
                  final result = await showDialog<bool>(
                    context: context,
                    builder: (_) => ImportOfxDialog(
                      account: testAccount,
                      repository: repo,
                      initialOfxContent: '<OFX>ok</OFX>',
                    ),
                  );
                  if (result == true) {
                    dialogClosed = true;
                  }
                },
                child: const Text('Open'),
              );
            }),
          ),
        ));

        await tester.tap(find.text('Open'));
        await tester.pumpAndSettle();

        expect(find.byType(ImportOfxDialog), findsOneWidget);

        await tester.tap(find.byKey(const Key('confirmImportButton')));
        await tester.pumpAndSettle();

        expect(repo.importCallCount, equals(1));
        expect(dialogClosed, isTrue);
        expect(find.byType(ImportOfxDialog), findsNothing);
      },
    );

    testWidgets(
      'CT-004: ImportOfxDialog trata falha exibindo mensagem de erro sem fechar modal',
      (tester) async {
        final repo = FakeBankTransactionRepository();
        repo.onPreview = (_, __) => OfxPreviewResult(
              bankId: '001',
              transactions: [],
              totalCredits: 500.0,
              totalDebits: 0.0,
              newTransactionsCount: 1,
              duplicatedTransactionsCount: 0,
              isAccountMatched: true,
            );
        repo.onImport = (_, __) => throw Exception('Timeout de conexão com o servidor');

        await tester.pumpWidget(createWidgetUnderTest(
          repository: repo,
          initialOfxContent: '<OFX>ok</OFX>',
        ));
        await tester.pumpAndSettle();

        await tester.tap(find.byKey(const Key('confirmImportButton')));
        await tester.pumpAndSettle();

        expect(find.byType(ImportOfxDialog), findsOneWidget);
        expect(
          find.textContaining('Erro ao importar extrato: Exception: Timeout de conexão com o servidor'),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'CT-005: ImportOfxDialog respeita semântica de acessibilidade e fecha com Escape',
      (tester) async {
        final repo = FakeBankTransactionRepository();
        bool closedWithEscape = false;

        await tester.pumpWidget(MaterialApp(
          locale: const Locale('pt'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () async {
                final result = await showDialog<bool>(
                  context: context,
                  builder: (_) => ImportOfxDialog(
                    account: testAccount,
                    repository: repo,
                  ),
                );
                if (result == false) {
                  closedWithEscape = true;
                }
              },
              child: const Text('Open'),
            );
          }),
        ));

        await tester.tap(find.text('Open'));
        await tester.pumpAndSettle();

        expect(find.byType(ImportOfxDialog), findsOneWidget);

        await tester.sendKeyEvent(LogicalKeyboardKey.escape);
        await tester.pumpAndSettle();

        expect(closedWithEscape, isTrue);
        expect(find.byType(ImportOfxDialog), findsNothing);
      },
    );
  });
}
