import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'companies_data_table_header.dart';
import 'companies_data_table_row.dart';

class CompaniesDataTable extends StatelessWidget {
  final ICompaniesViewmodel vm;

  const CompaniesDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return BrutalistCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CompaniesDataTableHeader(),
          if (vm.companies.isEmpty)
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Text('NENHUMA EMPRESA ENCONTRADA', style: DSTokens.body),
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.companies.length,
              itemBuilder: (context, index) {
                final company = vm.companies[index];
                return CompaniesDataTableRow(
                  vm: vm,
                  company: company,
                  index: index,
                );
              },
            ),
        ],
      ),
    );
  }
}
