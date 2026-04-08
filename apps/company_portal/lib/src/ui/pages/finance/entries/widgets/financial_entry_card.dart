import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:company_portal/src/ui/widgets/brutalist_card.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';

class FinancialEntryCard extends StatelessWidget {
  final FinancialEntry entry;
  final NumberFormat currencyFormat;
  final DateFormat dateFormat;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback? onMarkAsPaid;
  final String? payActionTooltip;
  final Color? amountColor;

  const FinancialEntryCard({
    super.key,
    required this.entry,
    required this.currencyFormat,
    required this.dateFormat,
    required this.onEdit,
    required this.onDelete,
    this.onMarkAsPaid,
    this.payActionTooltip,
    this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    final isPaid = entry.status == FinancialEntryStatus.paid;
    final isOverdue = !isPaid && entry.dueDate.isBefore(DateTime.now());

    return BrutalistCard(
      child: Padding(
        padding: const EdgeInsets.all(DSTokens.spacingMd),
        child: Row(
          children: [
            Container(
              width: 12,
              height: 60,
              color: isPaid
                  ? Colors.green
                  : (isOverdue ? Colors.red : _getSideColor()),
            ),
            const SizedBox(width: DSTokens.spacingMd),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entry.description, style: DSTokens.h2.copyWith(fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(
                    'Vencimento: ${dateFormat.format(entry.dueDate)}',
                    style: DSTokens.label.copyWith(
                      color: isOverdue ? Colors.red : DSTokens.outline,
                      fontWeight: isOverdue ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  currencyFormat.format(entry.amount),
                  style: DSTokens.h2.copyWith(
                    color: amountColor ?? DSTokens.highlight,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (!isPaid && onMarkAsPaid != null)
                      IconButton(
                        icon: const Icon(Icons.check_circle_outline, color: Colors.green),
                        onPressed: onMarkAsPaid,
                        tooltip: payActionTooltip ?? 'Marcar como pago',
                      ),
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
          ],
        ),
      ),
    );
  }

  Color _getSideColor() {
    if (entry.type == FinancialEntryType.payable) return Colors.orange;
    return Colors.blue;
  }
}
