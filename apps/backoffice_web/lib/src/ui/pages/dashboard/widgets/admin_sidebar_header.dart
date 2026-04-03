import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class AdminSidebarHeader extends StatelessWidget {
  final bool isCollapsed;
  final VoidCallback onToggle;

  const AdminSidebarHeader({
    super.key,
    required this.isCollapsed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: isCollapsed ? 0 : DSTokens.spacingLg),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment:
            isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: [
          if (!isCollapsed)
            Text(
              'ONE-SHOT',
              style: DSTokens.headline.copyWith(
                fontSize: 20,
                letterSpacing: 2.5,
              ),
            ),
          IconButton(
            icon: Icon(
              isCollapsed ? Icons.menu : Icons.menu_open,
              color: DSTokens.primary,
            ),
            onPressed: onToggle,
            splashRadius: 24,
          ),
        ],
      ),
    );
  }
}
