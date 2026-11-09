import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconcile_match_dialog.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_data_table.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_pagination_bar.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_period_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oneshot_client/oneshot_client.dart';

void main() {
  final testAccountId =
      UuidValue.fromString('11111111-1111-1111-1111-111111111111');

  final txDebit = BankTransaction(
    id: UuidValue.fromString('22222222-2222-2222-2222-222222222222'),
    bankAccountId: testAccountId,
    fitId: 'TX_DEB_01',
    transactionType: 'DEBIT',
    date: DateTime(2023, 10, 15, 14, 30),
    amount: -85.00,
    memo: 'Compra de Suprimentos',
    isReconciled: false,
  );

  final txCredit = BankTransaction(
    id: UuidValue.fromString('33333333-3333-3333-3333-333333333333'),
    bankAccountId: testAccountId,
    fitId: 'TX_CRED_01',
    transactionType: 'CREDIT',
    date: DateTime(2023, 10, 16, 10, 00),
    amount: 500.00,
    memo: 'Mensalidade Recebida',
    isReconciled: true,
  );

  final entryExact = FinancialEntry(
    id: UuidValue.fromString('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'),
    type: FinancialEntryType.payable,
    description: 'Pagamento Loja de Suprimentos',
    amount: 85.00,
    dueDate: DateTime(2023, 10, 15),
    status: FinancialEntryStatus.pending,
    originModule: PlatformApp.backoffice_web,
  );

  final entryDifferent = FinancialEntry(
    id: UuidValue.fromString('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb'),
    type: FinancialEntryType.payable,
    description: 'Conta de Energia',
    amount: 250.00,
    dueDate: DateTime(2023, 10, 20),
    status: FinancialEntryStatus.pending,
    originModule: PlatformApp.backoffice_web,
  );

  group('Reconciliation Widgets Tests', () {
    testWidgets(
      'CT-004: Tabela renderiza badges de status e valores formatados',
      (tester) async {
        BankTransaction? reconciledClicked;

        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: ReconciliationDataTable(
                transactions: [txDebit, txCredit],
                onReconcile: (tx) => reconciledClicked = tx,
              ),
            ),
          ),
        ));
        await tester.pumpAndSettle();

        expect(find.text('Compra de Suprimentos'), findsOneWidget);
        expect(find.text('Mensalidade Recebida'), findsOneWidget);
        expect(find.text('PENDENTE'), findsOneWidget);
        expect(find.text('CONCILIADA'), findsOneWidget);

        // O botão 'Conciliar' deve existir apenas para a transação pendente
        expect(find.text('Conciliar'), findsOneWidget);

        await tester.tap(find.text('Conciliar'));
        await tester.pump();

        expect(reconciledClicked, isNotNull);
        expect(reconciledClicked!.id, equals(txDebit.id));
      },
    );

    testWidgets(
      'CT-005: ReconcileMatchDialog exibe sugestões de lançamentos de mesmo valor',
      (tester) async {
        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: ReconcileMatchDialog(
              transaction: txDebit,
              suggestedEntries: [entryExact, entryDifferent],
              onConfirmMatch: (_) {},
            ),
          ),
        ));
        await tester.pumpAndSettle();

        expect(find.text('Conciliar Movimentação Bancária'), findsOneWidget);
        expect(find.text('Compra de Suprimentos'), findsOneWidget);
        expect(find.text('Pagamento Loja de Suprimentos'), findsOneWidget);
        expect(find.text('Conta de Energia'), findsOneWidget);

        // Deve exibir badge de destaque para valor exato
        expect(find.text('VALOR EXATO'), findsOneWidget);
      },
    );

    testWidgets(
      'CT-006: Confirmação de conciliação no diálogo dispara ação no callback',
      (tester) async {
        FinancialEntry? matchedEntry;

        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => ReconcileMatchDialog(
                      transaction: txDebit,
                      suggestedEntries: [entryExact],
                      onConfirmMatch: (entry) {
                        matchedEntry = entry;
                      },
                    ),
                  );
                },
                child: const Text('Open Dialog'),
              );
            }),
          ),
        ));

        await tester.tap(find.text('Open Dialog'));
        await tester.pumpAndSettle();

        expect(find.byType(ReconcileMatchDialog), findsOneWidget);

        final matchButtonKey = Key('confirmMatchButton_${entryExact.id}');
        await tester.tap(find.byKey(matchButtonKey));
        await tester.pumpAndSettle();

        expect(matchedEntry, isNotNull);
        expect(matchedEntry!.id, equals(entryExact.id));
        expect(find.byType(ReconcileMatchDialog), findsNothing);
      },
    );

    testWidgets(
      'CT-009: ReconciliationPeriodFilter renderiza opções de preset e responde a cliques',
      (tester) async {
        ReconciliationPeriodPreset? changedPreset;
        DateTime? changedMonth;

        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: ReconciliationPeriodFilter(
                selectedPreset: ReconciliationPeriodPreset.monthYear,
                startDate: DateTime(2026, 11, 1),
                endDate: DateTime(2026, 11, 30),
                selectedMonthYear: DateTime(2026, 11, 1),
                onPresetChanged: (preset) => changedPreset = preset,
                onCustomPeriodChanged: (_, __) {},
                onMonthYearChanged: (dt) => changedMonth = dt,
              ),
            ),
          ),
        ));
        await tester.pumpAndSettle();

        expect(find.text('PERÍODO DO EXTRATO'), findsOneWidget);
        expect(find.text('Hoje'), findsOneWidget);
        expect(find.text('Esta Semana'), findsOneWidget);
        expect(find.text('Mês e Ano'), findsOneWidget);
        expect(find.text('Este Ano'), findsOneWidget);
        expect(find.text('Ano Passado'), findsOneWidget);
        expect(find.text('Personalizado'), findsOneWidget);
        expect(find.text('Novembro 2026'), findsOneWidget);

        // Tap em 'Hoje'
        await tester.tap(find.text('Hoje'));
        await tester.pump();
        expect(changedPreset, equals(ReconciliationPeriodPreset.today));

        // Navegar para mês anterior
        await tester.tap(find.byTooltip('Mês anterior'));
        await tester.pump();
        expect(changedMonth, isNotNull);
        expect(changedMonth!.month, equals(10));
        expect(changedMonth!.year, equals(2026));
      },
    );

    testWidgets(
      'CT-012: ReconciliationPaginationBar exibe controles de página e aciona callbacks',
      (tester) async {
        bool prevCalled = false;
        bool nextCalled = false;

        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: ReconciliationPaginationBar(
                currentPage: 2,
                totalPages: 5,
                pageSize: 20,
                totalCount: 95,
                allowedPageSizes: const [10, 20, 50, 100],
                onPageSizeChanged: (_) {},
                onPreviousPage: () => prevCalled = true,
                onNextPage: () => nextCalled = true,
              ),
            ),
          ),
        ));
        await tester.pumpAndSettle();

        expect(find.text('ITENS:'), findsOneWidget);
        expect(find.text('Página 2 de 5'), findsOneWidget);
        expect(find.text('21 - 40 de 95 transações'), findsOneWidget);

        // Clicar em Anterior
        await tester.tap(find.byKey(const Key('paginationPrevButton')));
        await tester.pump();
        expect(prevCalled, isTrue);

        // Clicar em Próxima
        await tester.tap(find.byKey(const Key('paginationNextButton')));
        await tester.pump();
        expect(nextCalled, isTrue);
      },
    );
  });
}

