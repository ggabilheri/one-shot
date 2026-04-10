import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'companies_header_action_button.dart';

class CompaniesHeader extends StatelessWidget {
  final ICompaniesViewmodel vm;
  const CompaniesHeader({super.key, required this.vm});

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
              'EMPRESAS PARCEIRAS',
              style: DSTokens.headline,
            ),
            const SizedBox(height: 4),
            Text(
              'Gestão de empresas e parceiros.',
              style: DSTokens.body,
            ),
          ],
        ),
        CompaniesHeaderActionButton(vm: vm),
      ],
    );
  }
}
