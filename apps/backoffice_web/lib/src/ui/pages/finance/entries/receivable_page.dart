import 'package:backoffice_web/src/ui/pages/finance/entries/widgets/financial_entry_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';

class ReceivablePage extends StatefulWidget {
  const ReceivablePage({super.key});

  @override
  State<ReceivablePage> createState() => _ReceivablePageState();
}

class _ReceivablePageState extends ViewmodelState<ReceivablePage, IFinancialEntriesViewmodel> {
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
              _buildAddButton(),
            ],
          ),
          const SizedBox(height: DSTokens.spacingLg),
          Expanded(
            child: loadable(
              builder: (loading) => vm.entries.isEmpty && !loading
                  ? _buildEmptyState()
                  : _buildList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () => _openForm(),
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.green.shade700,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              Icon(Icons.add, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'NOVO LANÇAMENTO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet_outlined, size: 64, color: DSTokens.outline),
          const SizedBox(height: 16),
          Text('Nenhum lançamento a receber encontrado.', style: DSTokens.body),
        ],
      ),
    );
  }

  Widget _buildList() {
    if (vm.isLoading && vm.entries.isEmpty) {
      return const Center(child: CircularProgressIndicator(color: DSTokens.primary));
    }
    return ListView.separated(
      itemCount: vm.entries.length,
      separatorBuilder: (context, index) => const SizedBox(height: DSTokens.spacingMd),
      itemBuilder: (context, index) {
        final entry = vm.entries[index];
        return _buildEntryCard(entry);
      },
    );
  }

  Widget _buildEntryCard(FinancialEntry entry) {
    final isPaid = entry.status == FinancialEntryStatus.paid;
    final isOverdue = !isPaid && entry.dueDate.isBefore(DateTime.now());

    return BrutalistCard(
      child: Padding(
        padding: const EdgeInsets.all(DSTokens.spacingMd),
        child: Row(
          children: [
            Container(
              width: 12,
              height: 60,
              color: isPaid ? Colors.green : (isOverdue ? Colors.red : Colors.blue),
            ),
            const SizedBox(width: DSTokens.spacingMd),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entry.description, style: DSTokens.h2.copyWith(fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(
                    'Vencimento: ${_dateFormat.format(entry.dueDate)}',
                    style: DSTokens.label.copyWith(
                      color: isOverdue ? Colors.red : DSTokens.outline,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _currencyFormat.format(entry.amount),
                  style: DSTokens.h2.copyWith(color: Colors.green.shade700, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (!isPaid)
                      IconButton(
                        icon: const Icon(Icons.check_circle_outline, color: Colors.green),
                        onPressed: () => vm.markAsPaid(entry, FinancialEntryType.receivable),
                        tooltip: 'Marcar como recebido',
                      ),
                    IconButton(
                      icon: const Icon(Icons.edit_outlined),
                      onPressed: () => _openForm(entry: entry),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: () => _confirmDelete(entry),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
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
