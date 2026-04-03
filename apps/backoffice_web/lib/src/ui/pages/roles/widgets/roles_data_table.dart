import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'role_form_dialog.dart';

class RolesDataTable extends StatelessWidget {
  final IRolesViewmodel vm;

  const RolesDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    if (vm.roles.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(48),
        decoration: BoxDecoration(
          color: DSTokens.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: DSTokens.outlineVariant),
        ),
        child: Center(
          child: Column(
            children: [
              Icon(Icons.security, size: 48, color: DSTokens.outline),
              const SizedBox(height: 16),
              Text(
                'Nenhum perfil de acesso cadastrado.',
                style: DSTokens.body.copyWith(color: DSTokens.outline),
              ),
            ],
          ),
        ),
      );
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
              minWidth: MediaQuery.of(context).size.width - 64, // Pega o espaço do padding 32
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
                return DataRow(
                  cells: [
                    DataCell(
                      Text(
                        role.name,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    DataCell(
                      Text(
                        role.description ?? '-',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: role.active
                              ? DSTokens.success.withOpacity(0.1)
                              : DSTokens.error.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: role.active
                                ? DSTokens.success.withOpacity(0.3)
                                : DSTokens.error.withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          role.active ? 'ATIVO' : 'INATIVO',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: role.active
                                ? DSTokens.success
                                : DSTokens.error,
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit_outlined),
                            color: DSTokens.primary,
                            tooltip: 'Editar',
                            onPressed: () {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (_) => RoleFormDialog(
                                  vm: vm,
                                  role: role,
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            color: DSTokens.error,
                            tooltip: 'Excluir',
                            onPressed: () async {
                              final confirm = await showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Excluir Perfil?'),
                                  content: Text('Deseja realmente excluir o perfil "\${role.name}"?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, false),
                                      child: const Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, true),
                                      child: Text(
                                        'Excluir',
                                        style: TextStyle(color: DSTokens.error),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                              if (confirm == true) {
                                vm.deleteRole(role);
                              }
                            },
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
      ),
    );
  }
}
