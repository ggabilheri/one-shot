import 'package:company_portal/src/ui/pages/finance/entries/widgets/financial_entries_add_button.dart';
import 'package:company_portal/src/ui/pages/finance/entries/widgets/financial_entries_empty_state.dart';
import 'package:company_portal/src/ui/pages/finance/entries/widgets/financial_entries_list.dart';
import 'package:company_portal/src/ui/pages/finance/entries/widgets/financial_entry_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:company_portal/src/core/viewmodel_state.dart';
import 'package:company_portal/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';

class ReceivablePage extends StatefulWidget {
  const ReceivablePage({super.key});

  @override
  State<ReceivablePage> createState() => _ReceivablePageState();
}

class _ReceivablePageState
    extends ViewmodelState<ReceivablePage, IFinancialEntriesViewmodel> {
  late final NumberFormat _currencyFormat;
  late final DateFormat _dateFormat;

  @override
  void onInit() {
    _currencyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    _dateFormat = DateFormat('dd/MM/yyyy');
    vm.loadEntries(FinancialEntryType.receivable);
    vm.loadBankAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DSTokens.spacingLg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('CONTAS A RECEBER', style: DSTokens.h1),
              FinancialEntriesAddButton(
                onTap: () => _openForm(),
                backgroundColor: Colors.green.shade700,
              ),
            ],
          ),
          const SizedBox(height: DSTokens.spacingLg),
          Expanded(
            child: loadable(
              builder: (loading) => vm.entries.isEmpty && !loading
                  ? const FinancialEntriesEmptyState(
                      icon: Icons.account_balance_wallet_outlined,
                      message: 'Nenhum lançamento a receber encontrado.',
                    )
                  : FinancialEntriesList(
                      entries: vm.entries,
                      currencyFormat: _currencyFormat,
                      dateFormat: _dateFormat,
                      isLoading: loading,
                      onEdit: (entry) => _openForm(entry: entry),
                      onDelete: (entry) => _confirmDelete(entry),
                      onMarkAsPaid: (entry) =>
                          vm.markAsPaid(entry, FinancialEntryType.receivable),
                      payActionTooltip: 'Marcar como recebido',
                      amountColor: Colors.green.shade700,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void _openForm({FinancialEntry? entry}) {
    showDialog(
      context: context,
      builder: (context) => FinancialEntryFormDialog(
        entry: entry,
        initialType: FinancialEntryType.receivable,
        accounts: vm.bankAccounts,
        onSave: (savedEntry) => vm.saveEntry(
          savedEntry,
          FinancialEntryType.receivable,
          isUpdate: entry != null,
        ),
      ),
    );
  }

  void _confirmDelete(FinancialEntry entry) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Excluir Lançamento'),
        content: Text('Deseja realmente excluir "${entry.description}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCELAR'),
          ),
          TextButton(
            onPressed: () {
              vm.deleteEntry(entry.id, FinancialEntryType.receivable);
              Navigator.pop(context);
            },
            child: const Text('EXCLUIR', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
