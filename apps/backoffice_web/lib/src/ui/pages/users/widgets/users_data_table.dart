import 'package:backoffice_web/src/ui/pages/users/widgets/users_data_table_header.dart';
import 'package:backoffice_web/src/ui/pages/users/widgets/users_data_table_row.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class UsersDataTable extends StatelessWidget {
  final IUsersViewmodel vm;

  const UsersDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return BrutalistCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const UsersDataTableHeader(),
          if (vm.users.isEmpty)
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Text('NENHUM USUÁRIO ENCONTRADO', style: DSTokens.body),
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.users.length,
              itemBuilder: (context, index) {
                final user = vm.users[index];
                return UsersDataTableRow(
                  vm: vm,
                  user: user,
                  index: index,
                );
              },
            ),
        ],
      ),
    );
  }
}
