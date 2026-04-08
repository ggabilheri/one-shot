import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'role_form_dialog.dart';

class RolesDataTableRow extends DataRow {
  final BuildContext context;
  final SecurityRole role;
  final IRolesViewmodel vm;

  RolesDataTableRow({
    required this.context,
    required this.role,
    required this.vm,
  }) : super(
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
              _buildStatusBadge(role.active),
            ),
            DataCell(
              _buildActionButtons(context, role, vm),
            ),
          ],
        );

  static Widget _buildStatusBadge(bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: active ? DSTokens.success.withOpacity(0.1) : DSTokens.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: active ? DSTokens.success.withOpacity(0.3) : DSTokens.error.withOpacity(0.3),
        ),
      ),
      child: Text(
        active ? 'ATIVO' : 'INATIVO',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: active ? DSTokens.success : DSTokens.error,
        ),
      ),
    );
  }

  static Widget _buildActionButtons(BuildContext context, SecurityRole role, IRolesViewmodel vm) {
    return Row(
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
                content: Text('Deseja realmente excluir o perfil "${role.name}"?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text(
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
    );
  }
}
