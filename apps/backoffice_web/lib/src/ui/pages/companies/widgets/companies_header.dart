import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('EMPRESAS PARCEIRAS', style: DSTokens.headline),
              const SizedBox(height: 4),
              Text('Gestão de empresas e parceiros.', style: DSTokens.body),
            ],
          ),
        ),
        const SizedBox(width: DSTokens.spacingMd),
        // Filtro de Empresa Proprietária
        if (vm.platformCompanies.isNotEmpty)
          Container(
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: DSTokens.surface,
              border: Border.all(color: DSTokens.surfaceContainerHigh),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<UuidValue?>(
                value: vm.selectedParentCompanyId,
                hint: Text('FILTRAR POR PROPRIETÁRIO', style: DSTokens.label),
                isExpanded: true,
                dropdownColor: DSTokens.surface,
                items: [
                  DropdownMenuItem(
                    value: null,
                    child: Text('TODOS', style: DSTokens.label),
                  ),
                  ...vm.platformCompanies.map((c) {
                    return DropdownMenuItem(
                      value: c.id,
                      child: Text(c.name.toUpperCase(), style: DSTokens.label),
                    );
                  }),
                ],
                onChanged: (val) => vm.setParentCompanyFilter(val),
              ),
            ),
          ),
        const SizedBox(width: DSTokens.spacingMd),
        CompaniesHeaderActionButton(vm: vm),
      ],
    );
  }
}
