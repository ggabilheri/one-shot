import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'user_form_dialog.dart';

class UsersHeader extends StatelessWidget {
  final IUsersViewmodel vm;
  const UsersHeader({super.key, required this.vm});

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
              'USUÁRIOS DA PLATAFORMA',
              style: DSTokens.headline,
            ),
            const SizedBox(height: 4),
            Text(
              'Gestão de perfis e acessos.',
              style: DSTokens.body,
            ),
          ],
        ),
        _buildActionBtn(context),
      ],
    );
  }

  Widget _buildActionBtn(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            barrierColor: DSTokens.background.withOpacity(0.8),
            builder: (context) => UserFormDialog(vm: vm),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: DSTokens.spacingLg,
            vertical: DSTokens.spacingMd,
          ),
          decoration: BoxDecoration(
            color: DSTokens.primary,
            border: Border.all(color: DSTokens.primary),
            borderRadius: BorderRadius.circular(2), 
          ),
          child: Row(
            children: [
              const Icon(Icons.add, color: DSTokens.onPrimary, size: 20),
              const SizedBox(width: DSTokens.spacingSm),
              Text(
                'NOVO USUÁRIO',
                style: DSTokens.label.copyWith(
                  color: DSTokens.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

