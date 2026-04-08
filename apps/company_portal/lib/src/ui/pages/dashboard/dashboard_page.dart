import 'package:flutter/material.dart';
import 'package:company_portal/src/core/viewmodel_state.dart';
import 'package:company_portal/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

import 'widgets/admin_sidebar.dart';
import 'widgets/dashboard_app_bar.dart';
import 'widgets/dashboard_module_switcher.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ViewmodelState<DashboardPage, IDashboardViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      body: Row(
        children: [
          AdminSidebar(
            isCollapsed: vm.isSidebarCollapsed,
            onToggle: vm.toggleSidebar,
            currentPage: vm.currentPage,
            onPageChanged: vm.changePage,
          ),
          VerticalDivider(width: 1, color: DSTokens.surfaceContainerHigh),
          Expanded(
            child: Column(
              children: [
                const DashboardAppBar(),
                Expanded(
                  child: DashboardModuleSwitcher(currentPage: vm.currentPage),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
