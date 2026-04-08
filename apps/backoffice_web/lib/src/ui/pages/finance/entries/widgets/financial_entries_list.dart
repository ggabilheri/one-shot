import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';
import 'financial_entry_card.dart';

class FinancialEntriesList extends StatelessWidget {
  final List<FinancialEntry> entries;
  final NumberFormat currencyFormat;
  final DateFormat dateFormat;
  final Function(FinancialEntry) onEdit;
  final Function(FinancialEntry) onDelete;
  final Function(FinancialEntry)? onMarkAsPaid;
  final String? payActionTooltip;
  final Color? amountColor;
  final bool isLoading;

  const FinancialEntriesList({
    super.key,
    required this.entries,
    required this.currencyFormat,
    required this.dateFormat,
    required this.onEdit,
    required this.onDelete,
    this.onMarkAsPaid,
    this.payActionTooltip,
    this.amountColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading && entries.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(color: DSTokens.primary),
      );
    }

    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder: (context, index) => const SizedBox(height: DSTokens.spacingMd),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return FinancialEntryCard(
          entry: entry,
          currencyFormat: currencyFormat,
          dateFormat: dateFormat,
          onEdit: () => onEdit(entry),
          onDelete: () => onDelete(entry),
          onMarkAsPaid: onMarkAsPaid != null ? () => onMarkAsPaid!(entry) : null,
          payActionTooltip: payActionTooltip,
          amountColor: amountColor,
        );
      },
    );
  }
}
