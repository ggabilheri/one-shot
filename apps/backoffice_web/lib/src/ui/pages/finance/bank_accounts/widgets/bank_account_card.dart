import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:oneshot_client/oneshot_client.dart';

class BankAccountCard extends StatelessWidget {
  final BankAccount account;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const BankAccountCard({
    super.key,
    required this.account,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
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
                    color: account.status == 'ACTIVE' ? Colors.green : Colors.red,
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
                      onPressed: onEdit,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: onDelete,
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
}
