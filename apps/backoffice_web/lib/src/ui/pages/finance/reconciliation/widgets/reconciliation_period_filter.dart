import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/widgets/reconciliation_filter_chip.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReconciliationPeriodFilter extends StatelessWidget {
  final ReconciliationPeriodPreset selectedPreset;
  final DateTime startDate;
  final DateTime endDate;
  final DateTime selectedMonthYear;
  final ValueChanged<ReconciliationPeriodPreset> onPresetChanged;
  final Function(DateTime start, DateTime end) onCustomPeriodChanged;
  final ValueChanged<DateTime> onMonthYearChanged;

  const ReconciliationPeriodFilter({
    super.key,
    required this.selectedPreset,
    required this.startDate,
    required this.endDate,
    required this.selectedMonthYear,
    required this.onPresetChanged,
    required this.onCustomPeriodChanged,
    required this.onMonthYearChanged,
  });

  static const List<String> _monthsPtBr = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  String _formatMonthYear(DateTime dt) {
    final monthName = _monthsPtBr[dt.month - 1];
    return '$monthName ${dt.year}';
  }

  void _pickCustomDateRange(BuildContext context) async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
      initialDateRange: DateTimeRange(start: startDate, end: endDate),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: DSTokens.primary,
              onPrimary: Colors.black,
              surface: DSTokens.surface,
              onSurface: DSTokens.onSurface,
            ),
            dialogTheme: const DialogThemeData(
              backgroundColor: DSTokens.surface,
            ),
          ),
          child: child ?? const SizedBox(),
        );
      },
    );

    if (picked != null) {
      onCustomPeriodChanged(picked.start, picked.end);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy');
    final formattedStart = dateFormat.format(startDate);
    final formattedEnd = dateFormat.format(endDate);

    return Container(
      padding: const EdgeInsets.all(DSTokens.spacingMd),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        border: Border.all(color: DSTokens.surfaceContainerHigh, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    size: 16,
                    color: DSTokens.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'PERÍODO DO EXTRATO',
                    style: DSTokens.label.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: DSTokens.surface,
                  border: Border.all(color: DSTokens.outlineVariant, width: 1),
                ),
                child: Text(
                  '$formattedStart até $formattedEnd',
                  style: DSTokens.data.copyWith(
                    fontSize: 12,
                    color: DSTokens.info,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: DSTokens.spacingMd),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ReconciliationFilterChip(
                label: 'Hoje',
                isSelected: selectedPreset == ReconciliationPeriodPreset.today,
                onTap: () => onPresetChanged(ReconciliationPeriodPreset.today),
              ),
              ReconciliationFilterChip(
                label: 'Esta Semana',
                isSelected:
                    selectedPreset == ReconciliationPeriodPreset.thisWeek,
                onTap: () =>
                    onPresetChanged(ReconciliationPeriodPreset.thisWeek),
              ),
              ReconciliationFilterChip(
                label: 'Mês e Ano',
                isSelected:
                    selectedPreset == ReconciliationPeriodPreset.monthYear,
                onTap: () =>
                    onPresetChanged(ReconciliationPeriodPreset.monthYear),
              ),
              ReconciliationFilterChip(
                label: 'Este Ano',
                isSelected:
                    selectedPreset == ReconciliationPeriodPreset.thisYear,
                onTap: () =>
                    onPresetChanged(ReconciliationPeriodPreset.thisYear),
              ),
              ReconciliationFilterChip(
                label: 'Ano Passado',
                isSelected:
                    selectedPreset == ReconciliationPeriodPreset.lastYear,
                onTap: () =>
                    onPresetChanged(ReconciliationPeriodPreset.lastYear),
              ),
              ReconciliationFilterChip(
                label: 'Personalizado',
                isSelected: selectedPreset == ReconciliationPeriodPreset.custom,
                onTap: () {
                  onPresetChanged(ReconciliationPeriodPreset.custom);
                  _pickCustomDateRange(context);
                },
              ),
            ],
          ),
          if (selectedPreset == ReconciliationPeriodPreset.monthYear) ...[
            const SizedBox(height: 12),
            const Divider(color: DSTokens.surfaceContainerHigh, height: 1),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left, color: DSTokens.primary),
                  tooltip: 'Mês anterior',
                  onPressed: () {
                    final prev = DateTime(
                      selectedMonthYear.year,
                      selectedMonthYear.month - 1,
                      1,
                    );
                    onMonthYearChanged(prev);
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: DSTokens.surface,
                    border: Border.all(color: DSTokens.primary, width: 1.5),
                  ),
                  child: Text(
                    _formatMonthYear(selectedMonthYear),
                    style: DSTokens.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: DSTokens.primary,
                    ),
                  ),
                ),
                IconButton(
                  icon:
                      const Icon(Icons.chevron_right, color: DSTokens.primary),
                  tooltip: 'Próximo mês',
                  onPressed: () {
                    final next = DateTime(
                      selectedMonthYear.year,
                      selectedMonthYear.month + 1,
                      1,
                    );
                    onMonthYearChanged(next);
                  },
                ),
              ],
            ),
          ],
          if (selectedPreset == ReconciliationPeriodPreset.custom) ...[
            const SizedBox(height: 12),
            const Divider(color: DSTokens.surfaceContainerHigh, height: 1),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _pickCustomDateRange(context),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: DSTokens.surface,
                  border: Border.all(color: DSTokens.primary, width: 1.5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.edit_calendar_outlined,
                      size: 16,
                      color: DSTokens.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Alterar intervalo ($formattedStart - $formattedEnd)',
                      style: DSTokens.body.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: DSTokens.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

