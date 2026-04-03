import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'widgets/clubs_header.dart';
import 'widgets/clubs_data_table.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends ViewmodelState<ClubsPage, IClubsViewmodel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Garante que a Datatable pegue o tamanho max
        children: [
          ClubsHeader(vm: vm),
          const SizedBox(height: DSTokens.spacingXl),
          if (vm.isLoading)
            const Center(child: CircularProgressIndicator(color: DSTokens.primary))
          else
            ClubsDataTable(vm: vm),
        ],
      ),
    );
  }
}
