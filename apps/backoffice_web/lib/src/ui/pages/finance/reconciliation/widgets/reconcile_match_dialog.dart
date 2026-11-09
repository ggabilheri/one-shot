import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oneshot_client/oneshot_client.dart';

class ReconcileMatchDialog extends StatelessWidget {
  final BankTransaction transaction;
  final List<FinancialEntry> suggestedEntries;
  final bool isLoading;
  final void Function(FinancialEntry entry) onConfirmMatch;

  const ReconcileMatchDialog({
    super.key,
    required this.transaction,
    required this.suggestedEntries,
    this.isLoading = false,
    required this.onConfirmMatch,
  });

  @override
  Widget build(BuildContext context) {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final dateFormat = DateFormat('dd/MM/yyyy');
    final isCredit = transaction.amount > 0;
    final valueColor = isCredit ? DSTokens.success : DSTokens.error;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(DSTokens.spacingLg),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 620),
        child: BrutalistCard(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(DSTokens.spacingLg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Conciliar Movimentação Bancária',
                        style: DSTokens.h2.copyWith(fontSize: 18),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
                const SizedBox(height: DSTokens.spacingMd),

                // Card da Transação Bancária
                Container(
                  padding: const EdgeInsets.all(DSTokens.spacingMd),
                  decoration: BoxDecoration(
                    color: DSTokens.surfaceContainer,
                    border: Border.all(
                      color: DSTokens.outlineVariant,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.memo ?? 'Transação sem descrição',
                              style: DSTokens.body.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Data: ${dateFormat.format(transaction.date)} | FITID: ${transaction.fitId}',
                              style: DSTokens.label.copyWith(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        currencyFormat.format(transaction.amount),
                        style: DSTokens.headline.copyWith(
                          color: valueColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: DSTokens.spacingLg),

                // Lista de Sugestões de Lançamentos
                Text(
                  'Lançamentos Financeiros Sugeridos',
                  style: DSTokens.label.copyWith(
                    fontWeight: FontWeight.bold,
                    color: DSTokens.primary,
                  ),
                ),
                const SizedBox(height: 8),

                if (isLoading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(DSTokens.spacingLg),
                      child: CircularProgressIndicator(color: DSTokens.primary),
                    ),
                  )
                else if (suggestedEntries.isEmpty)
                  Container(
                    padding: const EdgeInsets.all(DSTokens.spacingMd),
                    decoration: BoxDecoration(
                      color: DSTokens.surfaceContainer,
                      border: Border.all(
                        color: DSTokens.outlineVariant,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Nenhum lançamento pendente compatível encontrado.',
                        style: DSTokens.body.copyWith(
                          color: DSTokens.onSurfaceVariant,
                        ),
                      ),
                    ),
                  )
                else
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: suggestedEntries.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final entry = suggestedEntries[index];
                      final isExactMatch =
                          (entry.amount - transaction.amount.abs()).abs() <
                              0.01;

                      return Container(
                        padding: const EdgeInsets.all(DSTokens.spacingMd),
                        decoration: BoxDecoration(
                          color: isExactMatch
                              ? DSTokens.primary.withValues(alpha: 0.08)
                              : DSTokens.surfaceContainer,
                          border: Border.all(
                            color: isExactMatch
                                ? DSTokens.primary
                                : DSTokens.surfaceContainerHigh,
                            width: isExactMatch ? 2 : 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      if (isExactMatch) ...[
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 2,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          color: DSTokens.primary,
                                          child: Text(
                                            'VALOR EXATO',
                                            style: TextStyle(
                                              color: DSTokens.onPrimary,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                      Expanded(
                                        child: Text(
                                          entry.description,
                                          style: DSTokens.body.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Vencimento: ${dateFormat.format(entry.dueDate)}',
                                    style: DSTokens.label.copyWith(fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              currencyFormat.format(entry.amount),
                              style: DSTokens.headline.copyWith(fontSize: 15),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              key: Key('confirmMatchButton_${entry.id}'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: DSTokens.primary,
                                foregroundColor: DSTokens.onPrimary,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 10,
                                ),
                                shape: const RoundedRectangleBorder(),
                              ),
                              onPressed: () {
                                onConfirmMatch(entry);
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Conciliar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                const SizedBox(height: DSTokens.spacingLg),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
