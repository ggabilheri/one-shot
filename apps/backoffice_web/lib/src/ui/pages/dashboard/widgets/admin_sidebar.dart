import 'package:flutter/material.dart';
import 'package:backoffice_web/src/domain/models/enums/dashboard_page_type.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'admin_sidebar_header.dart';
import 'admin_sidebar_footer.dart';
import 'admin_sidebar_item.dart';
import 'admin_sidebar_expansion_item.dart';

class AdminSidebar extends StatefulWidget {
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
  State<AdminSidebar> createState() => _AdminSidebarState();
}

class _AdminSidebarState extends State<AdminSidebar> {
  bool _isFinanceExpanded = false;

  @override
  void initState() {
    super.initState();
    _checkExpansion();
  }

  @override
  void didUpdateWidget(AdminSidebar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkExpansion();
  }

  void _checkExpansion() {
    if (widget.currentPage == DashboardPageType.bankAccounts ||
        widget.currentPage == DashboardPageType.payable ||
        widget.currentPage == DashboardPageType.receivable) {
      _isFinanceExpanded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: widget.isCollapsed ? 80 : 260,
      decoration: const BoxDecoration(
        color: DSTokens.surface,
        border: Border(
          right: BorderSide(color: DSTokens.surfaceContainerHigh, width: 1),
        ),
      ),
      child: Column(
        children: [
          AdminSidebarHeader(isCollapsed: widget.isCollapsed, onToggle: widget.onToggle),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: DSTokens.spacingMd),
              children: [
                AdminSidebarItem(
                  icon: Icons.dashboard_outlined,
                  activeIcon: Icons.dashboard,
                  label: 'RESUMO',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.summary,
                  onTap: () => widget.onPageChanged(DashboardPageType.summary),
                ),
                AdminSidebarItem(
                  icon: Icons.business_outlined,
                  activeIcon: Icons.business,
                  label: 'EMPRESAS',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.companies,
                  onTap: () => widget.onPageChanged(DashboardPageType.companies),
                ),
                AdminSidebarItem(
                  icon: Icons.people_outline,
                  activeIcon: Icons.people,
                  label: 'USUÁRIOS',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.users,
                  onTap: () => widget.onPageChanged(DashboardPageType.users),
                ),
                AdminSidebarItem(
                  icon: Icons.card_membership_outlined,
                  activeIcon: Icons.card_membership,
                  label: 'ASSINATURAS',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.subscriptions,
                  onTap: () => widget.onPageChanged(DashboardPageType.subscriptions),
                ),
                AdminSidebarExpansionItem(
                  icon: Icons.account_balance_wallet_outlined,
                  label: 'FINANCEIRO',
                  isCollapsed: widget.isCollapsed,
                  isExpanded: _isFinanceExpanded,
                  onExpandToggle: () => setState(() => _isFinanceExpanded = !_isFinanceExpanded),
                  children: [
                    AdminSidebarSubItem(
                      label: 'CONTAS BANCÁRIAS',
                      isSelected: widget.currentPage == DashboardPageType.bankAccounts,
                      onTap: () => widget.onPageChanged(DashboardPageType.bankAccounts),
                    ),
                    AdminSidebarSubItem(
                      label: 'A PAGAR',
                      isSelected: widget.currentPage == DashboardPageType.payable,
                      onTap: () => widget.onPageChanged(DashboardPageType.payable),
                    ),
                    AdminSidebarSubItem(
                      label: 'A RECEBER',
                      isSelected: widget.currentPage == DashboardPageType.receivable,
                      onTap: () => widget.onPageChanged(DashboardPageType.receivable),
                    ),
                  ],
                ),
                AdminSidebarItem(
                  icon: Icons.category_outlined,
                  activeIcon: Icons.category,
                  label: 'CATEGORIAS',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.productGroups,
                  onTap: () => widget.onPageChanged(DashboardPageType.productGroups),
                ),
                AdminSidebarItem(
                  icon: Icons.security_outlined,
                  activeIcon: Icons.security,
                  label: 'REGRAS',
                  isCollapsed: widget.isCollapsed,
                  isSelected: widget.currentPage == DashboardPageType.roles,
                  onTap: () => widget.onPageChanged(DashboardPageType.roles),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
          AdminSidebarFooter(isCollapsed: widget.isCollapsed, onTap: () {}),
        ],
      ),
    );
  }
}
