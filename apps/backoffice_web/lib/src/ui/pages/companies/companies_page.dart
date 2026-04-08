import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'widgets/companies_header.dart';
import 'widgets/companies_data_table.dart';

class CompaniesPage extends StatefulWidget {
  const CompaniesPage({super.key});

  @override
  State<CompaniesPage> createState() => _CompaniesPageState();
}

class _CompaniesPageState extends ViewmodelState<CompaniesPage, ICompaniesViewmodel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Garante que a Datatable pegue o tamanho max
        children: [
          CompaniesHeader(vm: vm),
          const SizedBox(height: DSTokens.spacingXl),
          if (vm.isLoading)
            const Center(child: CircularProgressIndicator(color: DSTokens.primary))
          else
            CompaniesDataTable(vm: vm),
        ],
      ),
    );
  }
}
