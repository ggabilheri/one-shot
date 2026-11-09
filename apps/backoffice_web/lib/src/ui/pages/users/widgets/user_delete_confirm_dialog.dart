import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

class UserDeleteConfirmDialog extends StatelessWidget {
  final UserProfile user;
  final VoidCallback onConfirm;

  const UserDeleteConfirmDialog({
    super.key,
    required this.user,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: DSTokens.surface,
      title: Text('EXCLUIR USUÁRIO?', style: DSTokens.h2),
      content: Text(
        'Deseja realmente excluir o usuário "${user.name}"? Esta ação removerá o usuário da listagem ativa.',
        style: DSTokens.body,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('CANCELAR', style: DSTokens.label),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            onConfirm();
          },
          child: Text(
            'EXCLUIR',
            style: DSTokens.label.copyWith(color: DSTokens.error),
          ),
        ),
      ],
    );
  }
}

