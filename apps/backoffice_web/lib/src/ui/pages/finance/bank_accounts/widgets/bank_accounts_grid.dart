import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'bank_account_card.dart';

class BankAccountsGrid extends StatelessWidget {
  final List<BankAccount> accounts;
  final Function(BankAccount) onEdit;
  final Function(BankAccount) onDelete;
  final bool isLoading;

  const BankAccountsGrid({
    super.key,
    required this.accounts,
    required this.onEdit,
    required this.onDelete,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading && accounts.isEmpty) {
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
      itemCount: accounts.length,
      itemBuilder: (context, index) {
        final account = accounts[index];
        return BankAccountCard(
          account: account,
          onEdit: () => onEdit(account),
          onDelete: () => onDelete(account),
        );
      },
    );
  }
}
