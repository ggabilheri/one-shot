import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oneshot_client/oneshot_client.dart';

class ReconciliationDataTableRow extends StatelessWidget {
  final BankTransaction transaction;
  final VoidCallback onReconcile;

  const ReconciliationDataTableRow({
    super.key,
    required this.transaction,
    required this.onReconcile,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final isCredit = transaction.amount > 0;
    final valueColor = isCredit ? DSTokens.success : DSTokens.error;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DSTokens.spacingMd,
        vertical: 12,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: DSTokens.surfaceContainerHigh,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Data
          SizedBox(
            width: 130,
            child: Text(
              dateFormat.format(transaction.date),
              style: DSTokens.label.copyWith(fontSize: 12),
            ),
          ),
          const SizedBox(width: 8),

          // FITID
          SizedBox(
            width: 120,
            child: Text(
              transaction.fitId,
              style: DSTokens.label.copyWith(
                fontSize: 11,
                color: DSTokens.outline,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),

          // Memo / Descrição
          Expanded(
            flex: 3,
            child: Text(
              transaction.memo ?? 'Sem descrição',
              style: DSTokens.body.copyWith(
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),

          // Valor
          SizedBox(
            width: 120,
            child: Text(
              currencyFormat.format(transaction.amount),
              textAlign: TextAlign.right,
              style: DSTokens.headline.copyWith(
                color: valueColor,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 16),

          // Status Badge
          SizedBox(
            width: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: transaction.isReconciled
                    ? DSTokens.success.withValues(alpha: 0.15)
                    : DSTokens.warning.withValues(alpha: 0.15),
                border: Border.all(
                  color: transaction.isReconciled
                      ? DSTokens.success
                      : DSTokens.warning,
                  width: 1,
                ),
              ),
              child: Text(
                transaction.isReconciled ? 'CONCILIADA' : 'PENDENTE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: transaction.isReconciled
                      ? DSTokens.success
                      : DSTokens.warning,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),

          // Ação
          SizedBox(
            width: 100,
            child: transaction.isReconciled
                ? const SizedBox.shrink()
                : OutlinedButton(
                    key: Key('reconcileButton_${transaction.id}'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      side: const BorderSide(
                        color: DSTokens.primary,
                        width: 1.5,
                      ),
                      shape: const RoundedRectangleBorder(),
                    ),
                    onPressed: onReconcile,
                    child: Text(
                      'Conciliar',
                      style: DSTokens.body.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: DSTokens.primary,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

