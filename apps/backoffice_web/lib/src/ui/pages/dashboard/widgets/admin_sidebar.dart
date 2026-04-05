import 'package:flutter/material.dart';
import 'package:backoffice_web/src/domain/models/enums/dashboard_page_type.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'admin_sidebar_header.dart';
import 'admin_sidebar_footer.dart';
import 'admin_sidebar_item.dart';

class AdminSidebar extends StatelessWidget {
  final bool isCollapsed;
  final VoidCallback onToggle;
  final DashboardPageType currentPage;
  final Function(DashboardPageType) onPageChanged;

  const AdminSidebar({
    super.key,
    required this.isCollapsed,
    required this.onToggle,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isCollapsed ? 80 : 260,
      decoration: const BoxDecoration(
        color: DSTokens.surface,
        border: Border(
          right: BorderSide(color: DSTokens.surfaceContainerHigh, width: 1),
        ),
      ),
      child: Column(
        children: [
          AdminSidebarHeader(isCollapsed: isCollapsed, onToggle: onToggle),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: DSTokens.spacingMd),
              children: [
                AdminSidebarItem(
                  icon: Icons.dashboard_outlined,
                  activeIcon: Icons.dashboard,
                  label: 'RESUMO',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.summary,
                  onTap: () => onPageChanged(DashboardPageType.summary),
                ),
                AdminSidebarItem(
                  icon: Icons.business_outlined,
                  activeIcon: Icons.business,
                  label: 'CLUBES',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.clubs,
                  onTap: () => onPageChanged(DashboardPageType.clubs),
                ),
                AdminSidebarItem(
                  icon: Icons.people_outline,
                  activeIcon: Icons.people,
                  label: 'USUÁRIOS',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.users,
                  onTap: () => onPageChanged(DashboardPageType.users),
                ),
                // AdminSidebarItem(
                //   icon: Icons.inventory_2_outlined,
                //   activeIcon: Icons.inventory_2,
                //   label: 'ESTOQUE',
                //   isCollapsed: isCollapsed,
                //   isSelected: currentPage == DashboardPageType.products || currentPage == DashboardPageType.productGroups,
                //   onTap: () => onPageChanged(DashboardPageType.products),
                // ),
                AdminSidebarItem(
                  icon: Icons.category_outlined,
                  activeIcon: Icons.category,
                  label: 'CATEGORIAS',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.productGroups,
                  onTap: () => onPageChanged(DashboardPageType.productGroups),
                ),
                AdminSidebarItem(
                  icon: Icons.assignment_outlined,
                  activeIcon: Icons.assignment,
                  label: 'ORDENS',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.serviceOrders,
                  onTap: () => onPageChanged(DashboardPageType.serviceOrders),
                ),
                AdminSidebarItem(
                  icon: Icons.card_membership_outlined,
                  activeIcon: Icons.card_membership,
                  label: 'PLANOS',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.plans,
                  onTap: () => onPageChanged(DashboardPageType.plans),
                ),
                AdminSidebarItem(
                  icon: Icons.security_outlined,
                  activeIcon: Icons.security,
                  label: 'REGRAS',
                  isCollapsed: isCollapsed,
                  isSelected: currentPage == DashboardPageType.roles,
                  onTap: () => onPageChanged(DashboardPageType.roles),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
          AdminSidebarFooter(isCollapsed: isCollapsed, onTap: () {}),
        ],
      ),
    );
  }
}
