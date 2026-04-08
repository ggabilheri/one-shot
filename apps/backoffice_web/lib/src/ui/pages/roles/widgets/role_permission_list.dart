import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

class RolePermissionList extends StatelessWidget {
  final List<RolePermission> permissions;
  final Function(RolePermission) onRemove;

  const RolePermissionList({
    super.key,
    required this.permissions,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    if (permissions.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Icon(
                Icons.security_outlined,
                color: DSTokens.outline,
                size: 40,
              ),
              const SizedBox(height: 8),
              Text(
                'Nenhuma permissão adicionada nesta role.',
                style: DSTokens.body.copyWith(color: DSTokens.outline),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: permissions.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final perm = permissions[index];
        return ListTile(
          tileColor: DSTokens.surfaceContainer,
          leading: const Icon(
            Icons.lock_outline,
            size: 20,
            color: DSTokens.primary,
          ),
          title: Text(
            '${perm.platform.label.toUpperCase()} > ${perm.module?.label.toUpperCase() ?? 'TODOS'}',
            style: DSTokens.body.copyWith(
              color: DSTokens.highlight,
              fontSize: 14,
            ),
          ),
          subtitle: Text(
            'NÍVEL DE ACESSO: ${perm.level.label.toUpperCase()}',
            style: DSTokens.label.copyWith(fontSize: 10),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete_outline, color: DSTokens.error),
            onPressed: () => onRemove(perm),
          ),
        );
      },
    );
  }
}
