import 'package:backoffice_web/src/ui/pages/users/widgets/users_header_action_button.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

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
        UsersHeaderActionButton(vm: vm),
      ],
    );
  }
}
