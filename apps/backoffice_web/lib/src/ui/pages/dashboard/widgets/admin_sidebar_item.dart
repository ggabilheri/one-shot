import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class AdminSidebarItem extends StatefulWidget {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool isCollapsed;
  final bool isSelected;
  final VoidCallback onTap;

  const AdminSidebarItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isCollapsed,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<AdminSidebarItem> createState() => _AdminSidebarItemState();
}

class _AdminSidebarItemState extends State<AdminSidebarItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.isSelected || _isHovering ? DSTokens.primary : DSTokens.outline;
    final iconData = widget.isSelected ? widget.activeIcon : widget.icon;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          color: Colors.transparent, // Capture gestos
          child: Stack(
            children: [
              // Indicador de seleção brutalista (Linha Esquerda)
              if (widget.isSelected)
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 3,
                    color: DSTokens.primary,
                  ),
                ),
              // Conteúdo do Item
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: widget.isCollapsed ? 28 : DSTokens.spacingLg,
                ),
                decoration: BoxDecoration(
                  color: widget.isSelected
                      ? DSTokens.primary.withOpacity(0.08)
                      : _isHovering
                          ? Colors.white.withOpacity(0.03)
                          : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: widget.isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Icon(iconData, color: color, size: 22),
                    if (!widget.isCollapsed) ...[
                      const SizedBox(width: DSTokens.spacingMd),
                      Expanded(
                        child: Text(
                          widget.label,
                          style: DSTokens.label.copyWith(
                            color: widget.isSelected ? DSTokens.highlight : color,
                            fontWeight: widget.isSelected ? FontWeight.bold : FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
