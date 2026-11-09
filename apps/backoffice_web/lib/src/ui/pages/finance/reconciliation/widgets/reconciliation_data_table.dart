import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_data_table_row.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';

class ReconciliationDataTable extends StatelessWidget {
  final List<BankTransaction> transactions;
  final void Function(BankTransaction transaction) onReconcile;

  const ReconciliationDataTable({
    super.key,
    required this.transactions,
    required this.onReconcile,
  });

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return BrutalistCard(
        child: Padding(
          padding: const EdgeInsets.all(DSTokens.spacingXl),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.receipt_long_outlined,
                  size: 48,
                  color: DSTokens.outline,
                ),
                const SizedBox(height: 12),
                Text(
                  'Nenhuma transação bancária encontrada para os filtros aplicados.',
                  style: DSTokens.body.copyWith(color: DSTokens.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return BrutalistCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header da Tabela
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: DSTokens.spacingMd,
              vertical: 12,
            ),
            color: DSTokens.surfaceContainer,
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  child: Text('DATA', style: DSTokens.label),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 120,
                  child: Text('FITID', style: DSTokens.label),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: Text('DESCRIÇÃO / MEMO', style: DSTokens.label),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 120,
                  child: Text(
                    'VALOR',
                    textAlign: TextAlign.right,
                    style: DSTokens.label,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 100,
                  child: Text(
                    'STATUS',
                    textAlign: TextAlign.center,
                    style: DSTokens.label,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 100,
                  child: Text(
                    'AÇÕES',
                    textAlign: TextAlign.center,
                    style: DSTokens.label,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),

          // Linhas da Tabela
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final tx = transactions[index];
              return ReconciliationDataTableRow(
                key: ValueKey(tx.id),
                transaction: tx,
                onReconcile: () => onReconcile(tx),
              );
            },
          ),
        ],
      ),
    );
  }
}

