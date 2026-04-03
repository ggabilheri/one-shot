import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'club_form_dialog.dart';

class ClubsDataTable extends StatelessWidget {
  final IClubsViewmodel vm;

  const ClubsDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return BrutalistCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTableHeader(),
          if (vm.clubs.isEmpty)
             Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(
                  child: Text('NENHUM CLUBE ENCONTRADO', style: DSTokens.body)
                ),
             )
          else
             ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.clubs.length,
              itemBuilder: (context, index) {
                final club = vm.clubs[index];
                return _buildTableRow(context, club, index);
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
        border: Border(bottom: BorderSide(color: DSTokens.surfaceContainerHigh)),
      ),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text('STS', style: DSTokens.label)),
          Expanded(flex: 3, child: Text('NOME DA ENTIDADE', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CNPJ', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CONTATO', style: DSTokens.label)),
          SizedBox(width: 80, child: Text('AÇÕES', style: DSTokens.label, textAlign: TextAlign.center)),
        ],
      ),
    );
  }

  Widget _buildTableRow(BuildContext context, dynamic club, int index) {
    // Linha Zebra: Intercala transparent e micro overlay light
    final isEven = index % 2 == 0;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: isEven ? Colors.transparent : Colors.white.withOpacity(0.01),
        border: const Border(bottom: BorderSide(color: DSTokens.surfaceContainerHigh)),
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
                color: DSTokens.highlight, fontWeight: FontWeight.bold
              ),
            ),
          ),
          // CNPJ
          Expanded(
            flex: 2, 
            child: Text(
              club.cnpj, 
              style: DSTokens.data.copyWith(
                color: DSTokens.outline, fontSize: 14
              ),
            ),
          ),
          // CONTATO
          Expanded(
            flex: 2, 
            child: Text(
              club.phoneNumber ?? '--', 
              style: DSTokens.data.copyWith(
                color: DSTokens.outline, fontSize: 14
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
                        builder: (context) => ClubFormDialog(vm: vm, club: club),
                      );
                    },
                    child: const Icon(Icons.edit_outlined, color: DSTokens.outline, size: 20),
                  ),
                ),
                const SizedBox(width: DSTokens.spacingMd),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => vm.deleteClub(club.id.toString()),
                    child: const Icon(Icons.delete_outline, color: DSTokens.alert, size: 20),
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
