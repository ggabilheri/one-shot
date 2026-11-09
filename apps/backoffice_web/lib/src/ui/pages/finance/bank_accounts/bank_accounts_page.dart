import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/routes/app_routes.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_account_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_add_button.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_empty_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_accounts_grid.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/import_ofx_dialog.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_page.dart';
import 'package:backoffice_web/src/ui/widgets/admin_layout.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:qlevar_router/qlevar_router.dart';

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
                      onImportOfx: (account) => _openImportOfx(account),
                      onReconciliation: (account) =>
                          _openReconciliation(account),
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

  void _openImportOfx(BankAccount account) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => ImportOfxDialog(account: account),
    );
    if (result == true) {
      vm.loadAccounts();
    }
  }

  void _openReconciliation(BankAccount account) {
    try {
      QR.toName(
        AppRoutes.bankReconciliation,
        params: {'id': account.id, 'account': account},
      );
    } catch (_) {
      // Fallback para testes de widget headless onde o roteador global não está mockado
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => AdminLayout(
            child: BankReconciliationPage(account: account),
          ),
        ),
      );
    }
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
