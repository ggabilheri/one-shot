import 'package:backoffice_web/src/ui/pages/clubs/widgets/clubs_data_table_header.dart';
import 'package:backoffice_web/src/ui/pages/clubs/widgets/clubs_data_table_row.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

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
          const ClubsDataTableHeader(),
          if (vm.clubs.isEmpty)
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Text('NENHUM CLUBE ENCONTRADO', style: DSTokens.body),
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.clubs.length,
              itemBuilder: (context, index) {
                final club = vm.clubs[index];
                return ClubsDataTableRow(
                  vm: vm,
                  club: club,
                  index: index,
                );
              },
            ),
        ],
      ),
    );
  }
}
