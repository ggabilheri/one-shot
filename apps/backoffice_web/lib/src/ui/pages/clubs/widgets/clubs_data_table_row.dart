import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'club_form_dialog.dart';

class ClubsDataTableRow extends StatelessWidget {
  final IClubsViewmodel vm;
  final Club club;
  final int index;

  const ClubsDataTableRow({
    super.key,
    required this.vm,
    required this.club,
    required this.index,
  });

  String _formatCnpj(String? cnpj) {
    if (cnpj == null || cnpj.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '##.###.###/####-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(cnpj);
  }

  String _formatPhone(String? phone) {
    if (phone == null || phone.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(phone);
  }

  @override
  Widget build(BuildContext context) {
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
              club.active ? Icons.circle : Icons.circle_outlined,
              color: club.active ? DSTokens.primary : DSTokens.outline,
              size: 14,
            ),
          ),
          // NOME
          Expanded(
            flex: 3,
            child: Text(
              club.name,
              style: DSTokens.body.copyWith(
                color: DSTokens.highlight,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // CNPJ
          Expanded(
            flex: 2,
            child: Text(
              _formatCnpj(club.cnpj),
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // CONTATO
          Expanded(
            flex: 2,
            child: Text(
              _formatPhone(club.phoneNumber),
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
                            ClubFormDialog(vm: vm, club: club),
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
                    onTap: () => vm.deleteClub(club.id.toString()),
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
