import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'widgets/roles_header.dart';
import 'widgets/roles_data_table.dart';

class RolesPage extends StatefulWidget {
  const RolesPage({super.key});

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends ViewmodelState<RolesPage, IRolesViewmodel> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      vm.loadRoles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RolesHeader(vm: vm),
          const SizedBox(height: DSTokens.spacingXl),
          if (vm.isLoading)
            const Center(child: CircularProgressIndicator(color: DSTokens.primary))
          else
            RolesDataTable(vm: vm),
        ],
      ),
    );
  }
}
