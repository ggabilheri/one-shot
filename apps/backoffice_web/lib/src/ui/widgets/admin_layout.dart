import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/widgets/admin_sidebar.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/widgets/dashboard_app_bar.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/widgets/dashboard_module_switcher.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AdminLayout extends StatefulWidget {
  final Widget? child;

  const AdminLayout({
    super.key,
    this.child,
  });

  @override
  State<AdminLayout> createState() => _AdminLayoutState();
}

class _AdminLayoutState
    extends ViewmodelState<AdminLayout, IDashboardViewModel> {
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
            onPageChanged: (page) {
              vm.changePage(page);
              try {
                if (!QR.history.isEmpty &&
                    !QR.currentPath.startsWith('/dashboard')) {
                  QR.to('/dashboard');
                }
              } catch (_) {
                // Fallback gracioso em ambientes onde o Qlevar Router não está mockado
              }
            },
          ),
          VerticalDivider(width: 1, color: DSTokens.surfaceContainerHigh),
          Expanded(
            child: Column(
              children: [
                const DashboardAppBar(),
                Expanded(
                  child: widget.child ??
                      DashboardModuleSwitcher(currentPage: vm.currentPage),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
