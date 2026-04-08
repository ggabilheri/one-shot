import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_add_button.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_empty_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_grid.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_account_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

class BankAccountsPage extends StatefulWidget {
  const BankAccountsPage({super.key});

  @override
  State<BankAccountsPage> createState() => _BankAccountsPageState();
}

class _BankAccountsPageState
    extends ViewmodelState<BankAccountsPage, IBankAccountsViewmodel> {
  @override
  void initState() {
    super.initState();
    vm.loadAccounts();
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
              Text('CONTAS BANCÁRIAS', style: DSTokens.h1),
              BankAccountsAddButton(onTap: () => _openForm()),
            ],
          ),
          const SizedBox(height: DSTokens.spacingLg),
          Expanded(
            child: loadable(
              builder: (loading) => vm.accounts.isEmpty && !loading
                  ? const BankAccountsEmptyState()
                  : BankAccountsGrid(
                      accounts: vm.accounts,
                      isLoading: vm.isLoading,
                      onEdit: (account) => _openForm(account: account),
                      onDelete: (account) => _confirmDelete(account),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void _openForm({BankAccount? account}) {
    showDialog(
      context: context,
      builder: (context) => BankAccountFormDialog(
        account: account,
        onSearchBanks: (query) => vm.searchBanks(query),
        onSave: (savedAccount) =>
            vm.saveAccount(savedAccount, isUpdate: account != null),
      ),
    );
  }

  void _confirmDelete(BankAccount account) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Excluir Conta'),
        content: Text('Deseja realmente excluir a conta "${account.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCELAR'),
          ),
          TextButton(
            onPressed: () {
              vm.deleteAccount(account.id);
              Navigator.pop(context);
            },
            child: const Text('EXCLUIR', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
