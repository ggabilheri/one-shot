import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
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

    if (entries.isEmpty) {
      return const Center(child: Text('Nenhum lançamento encontrado.'));
    }

    return Scrollbar(
      thumbVisibility: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            headingTextStyle: DSTokens.label.copyWith(
              fontWeight: FontWeight.bold,
              color: DSTokens.primary,
            ),
            dataTextStyle: DSTokens.body,
            columnSpacing: DSTokens.spacingLg,
            showCheckboxColumn: false,
            columns: const [
              DataColumn(label: Text('STATUS')),
              DataColumn(
                label: Text('DESCRIÇÃO'),
                columnWidth: FixedColumnWidth(350),
              ),
              DataColumn(
                label: Text('VENCIMENTO'),
                columnWidth: FixedColumnWidth(150),
              ),
              DataColumn(
                label: Text('PAGO EM'),
                columnWidth: FixedColumnWidth(150),
              ),
              DataColumn(
                label: Text('VALOR'),
                columnWidth: FixedColumnWidth(150),
              ),
              DataColumn(label: Text('AÇÕES')),
            ],
            rows: entries.map((entry) {
              final isPaid = entry.status == FinancialEntryStatus.paid;
              final isOverdue =
                  !isPaid && entry.dueDate.isBefore(DateTime.now());

              return DataRow(
                cells: [
                  DataCell(
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: isPaid
                            ? Colors.green
                            : (isOverdue ? Colors.red : _getSideColor(entry)),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      entry.description,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(
                    Text(
                      dateFormat.format(entry.dueDate),
                      style: TextStyle(
                        color: isOverdue ? Colors.red : null,
                        fontWeight: isOverdue ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      entry.paymentDate != null
                          ? dateFormat.format(entry.paymentDate!)
                          : '-',
                    ),
                  ),
                  DataCell(
                    Text(
                      currencyFormat.format(entry.amount),
                      style: TextStyle(
                        color: amountColor ?? DSTokens.highlight,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isPaid && onMarkAsPaid != null)
                          IconButton(
                            icon: const Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                            onPressed: () => onMarkAsPaid!(entry),
                            tooltip: payActionTooltip ?? 'Marcar como pago',
                          ),
                        IconButton(
                          icon: const Icon(Icons.edit_outlined),
                          onPressed: () => onEdit(entry),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                          ),
                          onPressed: () => onDelete(entry),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Color _getSideColor(FinancialEntry entry) {
    if (entry.type == FinancialEntryType.payable) return Colors.orange;
    return Colors.blue;
  }
}
