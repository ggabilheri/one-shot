import 'package:flutter/material.dart';
import 'package:oneshot_flutter/src/ui/widgets/ds_tokens.dart';

enum DSButtonType { primary, secondary, outline }

class DSButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final DSButtonType type;
  final bool isLoading;
  final IconData? icon;

  const DSButton({
    super.key,
    required this.label,
    this.onPressed,
    this.type = DSButtonType.primary,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DSTokens.borderRadius),
        gradient: type == DSButtonType.primary
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [DSTokens.primary, DSTokens.primaryContainer],
              )
            : null,
        color: type == DSButtonType.primary ? null : Colors.transparent,
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: type == DSButtonType.primary ? Colors.transparent : _getBackgroundColor(),
          foregroundColor: _getTextColor(),
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DSTokens.borderRadius),
            side: type == DSButtonType.outline
                ? const BorderSide(color: DSTokens.primary, width: 1.5)
                : BorderSide.none,
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Icon(icon, size: 20),
                    const SizedBox(width: DSTokens.spacingSm),
                  ],
                  Text(
                    label.toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Color _getBackgroundColor() {
    switch (type) {
      case DSButtonType.secondary:
        return DSTokens.secondaryContainer;
      case DSButtonType.outline:
      case DSButtonType.primary:
        return Colors.transparent;
    }
  }

  Color _getTextColor() {
    if (type == DSButtonType.primary) return DSTokens.onPrimary;
    if (type == DSButtonType.secondary) return DSTokens.onSecondary;
    return DSTokens.primary;
  }
}
