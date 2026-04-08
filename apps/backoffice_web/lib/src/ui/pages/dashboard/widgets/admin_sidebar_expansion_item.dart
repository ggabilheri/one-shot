import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class AdminSidebarExpansionItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isCollapsed;
  final bool isExpanded;
  final List<AdminSidebarSubItem> children;
  final VoidCallback onExpandToggle;

  const AdminSidebarExpansionItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
    required this.isExpanded,
    required this.children,
    required this.onExpandToggle,
  });

  @override
  State<AdminSidebarExpansionItem> createState() => _AdminSidebarExpansionItemState();
}

class _AdminSidebarExpansionItemState extends State<AdminSidebarExpansionItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.isExpanded || _isHovering ? DSTokens.primary : DSTokens.outline;

    if (widget.isCollapsed) {
      return Tooltip(
        message: widget.label,
        child: AdminSidebarIconOnlyItem(
          icon: widget.icon,
          isSelected: widget.isExpanded,
          onTap: widget.onExpandToggle,
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          onEnter: (_) => setState(() => _isHovering = true),
          onExit: (_) => setState(() => _isHovering = false),
          child: GestureDetector(
            onTap: widget.onExpandToggle,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: DSTokens.spacingLg,
              ),
              color: widget.isExpanded
                  ? DSTokens.primary.withOpacity(0.04)
                  : _isHovering
                      ? Colors.white.withOpacity(0.02)
                      : Colors.transparent,
              child: Row(
                children: [
                  Icon(widget.icon, color: color, size: 22),
                  const SizedBox(width: DSTokens.spacingMd),
                  Expanded(
                    child: Text(
                      widget.label,
                      style: DSTokens.label.copyWith(
                        color: color,
                        fontWeight: widget.isExpanded ? FontWeight.bold : FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    widget.isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: color,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (widget.isExpanded)
          ...widget.children,
      ],
    );
  }
}

class AdminSidebarSubItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const AdminSidebarSubItem({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? DSTokens.primary : DSTokens.outline;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 54,
          top: 10,
          bottom: 10,
          right: DSTokens.spacingLg,
        ),
        color: isSelected ? DSTokens.primary.withOpacity(0.08) : Colors.transparent,
        child: Row(
          children: [
            if (isSelected)
              Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                  color: DSTokens.primary,
                  shape: BoxShape.circle,
                ),
              ),
            if (isSelected) const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: DSTokens.label.copyWith(
                  color: isSelected ? DSTokens.highlight : color,
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminSidebarIconOnlyItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const AdminSidebarIconOnlyItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Center(
          child: Icon(
            icon,
            color: isSelected ? DSTokens.primary : DSTokens.outline,
            size: 22,
          ),
        ),
      ),
    );
  }
}
