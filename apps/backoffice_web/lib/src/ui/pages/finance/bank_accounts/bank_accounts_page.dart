import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/widgets/bank_account_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
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
              _buildAddButton(),
            ],
          ),
          const SizedBox(height: DSTokens.spacingLg),
          Expanded(
            child: loadable(
              builder: (loading) => vm.accounts.isEmpty && !loading
                  ? _buildEmptyState()
                  : _buildGrid(),
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
        backgroundColor: DSTokens.primary,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              Icon(Icons.add, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'NOVA CONTA',
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
          Icon(
            Icons.account_balance_outlined,
            size: 64,
            color: DSTokens.outline,
          ),
          const SizedBox(height: 16),
          Text('Nenhuma conta cadastrada.', style: DSTokens.body),
        ],
      ),
    );
  }

  Widget _buildGrid() {
    if (vm.isLoading && vm.accounts.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(color: DSTokens.primary),
      );
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        mainAxisExtent: 240,
        crossAxisSpacing: DSTokens.spacingLg,
        mainAxisSpacing: DSTokens.spacingLg,
      ),
      itemCount: vm.accounts.length,
      itemBuilder: (context, index) {
        final account = vm.accounts[index];
        return _buildAccountCard(account);
      },
    );
  }

  Widget _buildAccountCard(BankAccount account) {
    return BrutalistCard(
      child: Padding(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: account.status == 'ACTIVE'
                        ? Colors.green
                        : Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Text(
                    account.status.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit_outlined),
                      onPressed: () => _openForm(account: account),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: () => _confirmDelete(account),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(account.name, style: DSTokens.h2.copyWith(fontSize: 18)),
            const SizedBox(height: 4),
            Text(
              account.bankName ?? 'Banco não informado',
              style: DSTokens.label,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'AGÊNCIA',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(account.agency ?? '-', style: DSTokens.body),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CONTA',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(account.accountNumber ?? '-', style: DSTokens.body),
                  ],
                ),
              ],
            ),
          ],
        ),
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
