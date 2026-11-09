import 'package:backoffice_web/src/core/utils/l10n_extension.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';

class BankAccountCard extends StatelessWidget {
  final BankAccount account;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback? onImportOfx;
  final VoidCallback? onReconciliation;

  const BankAccountCard({
    super.key,
    required this.account,
    required this.onEdit,
    required this.onDelete,
    this.onImportOfx,
    this.onReconciliation,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BrutalistCard(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DSTokens.spacingLg,
            vertical: DSTokens.spacingMd,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
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
                        icon: const Icon(Icons.edit_outlined, size: 20),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        visualDensity: VisualDensity.compact,
                        onPressed: onEdit,
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          size: 20,
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        visualDensity: VisualDensity.compact,
                        onPressed: onDelete,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                account.name,
                style: DSTokens.h2.copyWith(fontSize: 18),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                account.bankName ?? 'Banco não informado',
                style: DSTokens.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
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
              if (onImportOfx != null || onReconciliation != null) ...[
                const SizedBox(height: 10),
                const Divider(color: DSTokens.outlineVariant, height: 1),
                const SizedBox(height: 8),
                Row(
                  spacing: 8,
                  // runSpacing: 8,
                  children: [
                    if (onImportOfx != null)
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          visualDensity: VisualDensity.compact,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          side: const BorderSide(
                            color: DSTokens.primary,
                            width: 1,
                          ),
                          shape: const RoundedRectangleBorder(),
                        ),
                        icon: const Icon(
                          Icons.file_upload_outlined,
                          size: 16,
                          color: DSTokens.primary,
                        ),
                        label: Text(
                          l10n.importOfxButton,
                          style: DSTokens.body.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: DSTokens.primary,
                          ),
                        ),
                        onPressed: onImportOfx,
                      ),
                    if (onReconciliation != null)
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          visualDensity: VisualDensity.compact,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          side: const BorderSide(
                            color: DSTokens.onSurface,
                            width: 1.5,
                          ),
                          shape: const RoundedRectangleBorder(),
                        ),
                        icon: const Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 16,
                          color: DSTokens.onSurface,
                        ),
                        label: Text(
                          l10n.reconciliationButton,
                          style: DSTokens.body.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: DSTokens.onSurface,
                          ),
                        ),
                        onPressed: onReconciliation,
                      ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
