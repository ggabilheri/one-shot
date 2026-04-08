import 'package:backoffice_web/src/ui/pages/roles/widgets/roles_data_table_empty_state.dart';
import 'package:backoffice_web/src/ui/pages/roles/widgets/roles_data_table_row.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class RolesDataTable extends StatelessWidget {
  final IRolesViewmodel vm;

  const RolesDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    if (vm.roles.isEmpty) {
      return const RolesDataTableEmptyState();
    }

    return Container(
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: DSTokens.outlineVariant),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: DSTokens.outlineVariant,
          dataTableTheme: DataTableThemeData(
            headingRowColor: WidgetStateProperty.all(DSTokens.surfaceContainer),
            dataRowColor: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.hovered)) {
                  return DSTokens.surfaceContainer.withOpacity(0.5);
                }
                return Colors.transparent;
              },
            ),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width - 64,
            ),
            child: DataTable(
              headingTextStyle: DSTokens.label.copyWith(
                color: DSTokens.onSurfaceVariant,
              ),
              dataTextStyle: DSTokens.body.copyWith(
                color: DSTokens.onSurface,
              ),
              columns: const [
                DataColumn(label: Text('NOME')),
                DataColumn(label: Text('DESCRIÇÃO')),
                DataColumn(label: Text('STATUS')),
                DataColumn(label: Text('AÇÕES')),
              ],
              rows: vm.roles.map((role) {
                return RolesDataTableRow(
                  context: context,
                  role: role,
                  vm: vm,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
