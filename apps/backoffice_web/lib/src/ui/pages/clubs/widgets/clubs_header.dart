import 'package:backoffice_web/src/ui/pages/clubs/widgets/clubs_header_action_button.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ClubsHeader extends StatelessWidget {
  final IClubsViewmodel vm;
  const ClubsHeader({super.key, required this.vm});

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
              'CLUBES DE TREINAMENTO',
              style: DSTokens.headline,
            ),
            const SizedBox(height: 4),
            Text(
              'Gestão de unidades e filiadas.',
              style: DSTokens.body,
            ),
          ],
        ),
        ClubsHeaderActionButton(vm: vm),
      ],
    );
  }
}
