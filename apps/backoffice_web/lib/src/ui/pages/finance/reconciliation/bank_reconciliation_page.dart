import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconcile_match_dialog.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_data_table.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_pagination_bar.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_period_filter.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_dropdown.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:qlevar_router/qlevar_router.dart';

class BankReconciliationPage extends StatefulWidget {
  final BankAccount account;

  const BankReconciliationPage({
    super.key,
    required this.account,
  });

  @override
  State<BankReconciliationPage> createState() => _BankReconciliationPageState();
}

class _BankReconciliationPageState
    extends ViewmodelState<BankReconciliationPage, IBankReconciliationViewModel> {
  final NumberFormat _currencyFormat =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    vm.init(widget.account);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _openReconcileDialog(BankTransaction transaction) async {
    final suggested = await vm.loadSuggestedEntries(transaction);
    if (!mounted) return;

    showDialog(
      context: context,
      builder: (_) => ReconcileMatchDialog(
        transaction: transaction,
        suggestedEntries: suggested,
        onConfirmMatch: (entry) async {
          await vm.reconcileTransaction(transaction.id, entry.id);
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Transação conciliada com sucesso!',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: DSTokens.success,
              ),
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return loadable(
      builder: (loading) => SingleChildScrollView(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Barra superior de navegação e conta
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: DSTokens.onSurface),
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    } else {
                      QR.back();
                    }
                  },
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Extrato & Conciliação Bancária',
                        style: DSTokens.h1.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Conta: ${widget.account.name} | Banco: ${widget.account.bankName ?? '-'} | Ag: ${widget.account.agency ?? '-'} | Cc: ${widget.account.accountNumber ?? '-'}',
                        style: DSTokens.body.copyWith(
                          color: DSTokens.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                BrutalistCard(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: DSTokens.spacingMd,
                      vertical: DSTokens.spacingSm,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('SALDO ATUAL', style: DSTokens.label),
                        Text(
                          _currencyFormat.format(widget.account.balance),
                          style: DSTokens.headline.copyWith(
                            fontSize: 18,
                            color: widget.account.balance >= 0
                                ? DSTokens.success
                                : DSTokens.error,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: DSTokens.spacingLg),

            // Filtro por Data (Período)
            ReconciliationPeriodFilter(
              selectedPreset: vm.periodPreset,
              startDate: vm.startDate,
              endDate: vm.endDate,
              selectedMonthYear: vm.selectedMonthYear,
              onPresetChanged: vm.setPeriodPreset,
              onCustomPeriodChanged: vm.setCustomPeriod,
              onMonthYearChanged: vm.changeMonthYear,
            ),
            const SizedBox(height: DSTokens.spacingMd),

            // Barra de Filtros: Status + Busca Textual
            Row(
              children: [
                // Dropdown de filtro por status
                SizedBox(
                  width: 200,
                  child: DSDropdown<ReconciliationFilter>.fromValues(
                    key: const Key('reconciliationStatusDropdown'),
                    label: 'STATUS',
                    value: vm.filter,
                    values: ReconciliationFilter.values,
                    labelBuilder: (filter) {
                      switch (filter) {
                        case ReconciliationFilter.all:
                          return 'Todas as transações';
                        case ReconciliationFilter.pending:
                          return 'Pendentes';
                        case ReconciliationFilter.reconciled:
                          return 'Conciliadas';
                      }
                    },
                    onChanged: (newFilter) {
                      if (newFilter != null) {
                        vm.setFilter(newFilter);
                      }
                    },
                  ),
                ),
                const SizedBox(width: DSTokens.spacingMd),

                // Campo de busca textual por memo/descrição
                Expanded(
                  child: TextField(
                    key: const Key('reconciliationSearchInput'),
                    controller: _searchController,
                    style: DSTokens.body,
                    decoration: InputDecoration(
                      hintText: 'Buscar por descrição, memo ou FITID...',
                      hintStyle: DSTokens.body.copyWith(
                        color: DSTokens.onSurfaceVariant,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: DSTokens.primary,
                      ),
                      filled: true,
                      fillColor: DSTokens.surfaceContainer,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: DSTokens.surfaceContainerHigh,
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: DSTokens.surfaceContainerHigh,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: DSTokens.primary,
                          width: 2,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: DSTokens.spacingMd,
                        vertical: 12,
                      ),
                    ),
                    onChanged: vm.setSearchQuery,
                  ),
                ),
                const SizedBox(width: 8),

                IconButton(
                  icon: const Icon(Icons.refresh, color: DSTokens.primary),
                  onPressed: vm.loadTransactions,
                  tooltip: 'Recarregar Extrato',
                ),
              ],
            ),
            const SizedBox(height: DSTokens.spacingMd),

            // Mensagem de Erro se houver
            if (vm.error != null) ...[
              Container(
                padding: const EdgeInsets.all(DSTokens.spacingMd),
                decoration: BoxDecoration(
                  color: DSTokens.error.withValues(alpha: 0.15),
                  border: Border.all(color: DSTokens.error, width: 2),
                ),
                child: Text(
                  vm.error!,
                  style: DSTokens.body.copyWith(color: DSTokens.error),
                ),
              ),
              const SizedBox(height: DSTokens.spacingMd),
            ],

            // Tabela de Movimentações
            ReconciliationDataTable(
              transactions: vm.filteredTransactions,
              onReconcile: _openReconcileDialog,
            ),
            const SizedBox(height: DSTokens.spacingMd),

            // Barra de Paginação
            ReconciliationPaginationBar(
              currentPage: vm.currentPage,
              totalPages: vm.totalPages,
              pageSize: vm.pageSize,
              totalCount: vm.totalCount,
              allowedPageSizes: vm.allowedPageSizes,
              onPageSizeChanged: vm.setPageSize,
              onPreviousPage: vm.previousPage,
              onNextPage: vm.nextPage,
            ),
          ],
        ),
      ),
    );
  }
}
