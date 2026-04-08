import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class BankAccountsEmptyState extends StatelessWidget {
  const BankAccountsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
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
}
