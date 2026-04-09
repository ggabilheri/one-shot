import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'admin_sidebar_item.dart';

class AdminSidebarFooter extends StatelessWidget {
  final bool isCollapsed;
  final VoidCallback onTap;

  const AdminSidebarFooter({
    super.key,
    required this.isCollapsed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: DSTokens.spacingMd),
      child: AdminSidebarItem(
        icon: Icons.logout,
        activeIcon: Icons.logout,
        label: 'Sair',
        isCollapsed: isCollapsed,
        isSelected: false,
        onTap: onTap,
      ),
    );
  }
}
