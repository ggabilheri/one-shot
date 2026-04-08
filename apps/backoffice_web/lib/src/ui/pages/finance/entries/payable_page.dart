import 'package:backoffice_web/src/ui/pages/finance/entries/widgets/financial_entries_add_button.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/widgets/financial_entries_empty_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/widgets/financial_entries_list.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/widgets/financial_entry_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';

class PayablePage extends StatefulWidget {
  const PayablePage({super.key});

  @override
  State<PayablePage> createState() => _PayablePageState();
}

class _PayablePageState extends ViewmodelState<PayablePage, IFinancialEntriesViewmodel> {
  late final NumberFormat _currencyFormat;
  late final DateFormat _dateFormat;

  @override
  void onInit() {
    _currencyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    _dateFormat = DateFormat('dd/MM/yyyy');
    vm.loadEntries(FinancialEntryType.payable);
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
              Text('CONTAS A PAGAR', style: DSTokens.h1),
              FinancialEntriesAddButton(onTap: () => _openForm()),
            ],
          ),
          const SizedBox(height: DSTokens.spacingLg),
          Expanded(
            child: loadable(
              builder: (loading) => vm.entries.isEmpty && !loading
                  ? const FinancialEntriesEmptyState(
                      icon: Icons.money_off_outlined,
                      message: 'Nenhum lançamento a pagar encontrado.',
                    )
                  : FinancialEntriesList(
                      entries: vm.entries,
                      currencyFormat: _currencyFormat,
                      dateFormat: _dateFormat,
                      isLoading: vm.isLoading,
                      onEdit: (entry) => _openForm(entry: entry),
                      onDelete: (entry) => _confirmDelete(entry),
                      onMarkAsPaid: (entry) =>
                          vm.markAsPaid(entry, FinancialEntryType.payable),
                      payActionTooltip: 'Marcar como pago',
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
        initialType: FinancialEntryType.payable,
        accounts: vm.bankAccounts,
        onSave: (savedEntry) => vm.saveEntry(
          savedEntry,
          FinancialEntryType.payable,
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
              vm.deleteEntry(entry.id, FinancialEntryType.payable);
              Navigator.pop(context);
            },
            child: const Text('EXCLUIR', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
