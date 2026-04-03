import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'role_form_dialog.dart';

class RolesHeader extends StatelessWidget {
  final IRolesViewmodel vm;

  const RolesHeader({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Papéis e Acessos',
              style: DSTokens.h1.copyWith(color: DSTokens.primary),
            ),
            const SizedBox(height: DSTokens.spacingXs),
            Text(
              'Gerencie as regras de segurança e permissões do sistema',
              style: DSTokens.body.copyWith(
                color: DSTokens.outline,
              ),
            ),
          ],
        ),
        ElevatedButton.icon(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => RoleFormDialog(
                vm: vm,
                role: SecurityRole(
                  name: '',
                  active: true,
                ),
              ),
            );
          },
          icon: const Icon(Icons.add, color: DSTokens.onPrimary),
          label: Text(
            'NOVO PAPEL',
            style: DSTokens.label.copyWith(color: DSTokens.onPrimary),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: DSTokens.primary,
            padding: const EdgeInsets.symmetric(
              horizontal: DSTokens.spacingXl,
              vertical: DSTokens.spacingMd,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    );
  }
}
