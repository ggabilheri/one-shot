import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'user_form_dialog.dart';

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
          _buildTableHeader(),
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
                return _buildTableRow(context, user, index);
              },
            ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: DSTokens.surfaceContainerHigh,
        border: Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text('STS', style: DSTokens.label)),
          Expanded(flex: 3, child: Text('NOME', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CPF', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('TELEFONE', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CIDADE/UF', style: DSTokens.label)),
          Expanded(flex: 1, child: Text('TIPO', style: DSTokens.label)),
          SizedBox(
            width: 80,
            child: Text(
              'AÇÕES',
              style: DSTokens.label,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  String _formatCpf(String? cpf) {
    if (cpf == null || cpf.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(cpf);
  }

  String _formatPhone(String? phone) {
    if (phone == null || phone.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(phone);
  }

  Widget _buildTableRow(BuildContext context, UserProfile user, int index) {
    final isEven = index % 2 == 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: isEven ? Colors.transparent : Colors.white.withOpacity(0.01),
        border: const Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        children: [
          // STS
          SizedBox(
            width: 40,
            child: Icon(
              user.status == UserStatus.active
                  ? Icons.circle
                  : Icons.circle_outlined,
              color: user.status == UserStatus.active
                  ? DSTokens.primary
                  : DSTokens.outline,
              size: 14,
            ),
          ),
          // NOME
          Expanded(
            flex: 3,
            child: Text(
              user.name,
              style: DSTokens.body.copyWith(
                color: DSTokens.highlight,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // CPF
          Expanded(
            flex: 2,
            child: Text(
              _formatCpf(user.cpf),
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // TELEFONE
          Expanded(
            flex: 2,
            child: Text(
              _formatPhone(user.phone),
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // CIDADE/UF
          Expanded(
            flex: 2,
            child: Text(
              user.address != null && user.address!.city.isNotEmpty
                  ? '${user.address!.city} / ${user.address!.state}'
                  : '--',
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // TIPO
          Expanded(
            flex: 1,
            child: Text(
              user.types?.isNotEmpty == true ? user.types!.first.name : '--',
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // AÇÕES
          SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: DSTokens.background.withOpacity(0.8),
                        builder: (context) =>
                            UserFormDialog(vm: vm, user: user),
                      );
                    },
                    child: const Icon(
                      Icons.edit_outlined,
                      color: DSTokens.outline,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: DSTokens.spacingMd),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => vm.deleteUser(user.id.toString()),
                    child: const Icon(
                      Icons.delete_outline,
                      color: DSTokens.alert,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
