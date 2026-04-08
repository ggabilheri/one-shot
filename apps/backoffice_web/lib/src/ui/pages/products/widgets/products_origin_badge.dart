import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductsOriginBadge extends StatelessWidget {
  final String origin;

  const ProductsOriginBadge({super.key, required this.origin});

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    String label;

    switch (origin) {
      case 'COMPANY':
        bgColor = DSTokens.success;
        label = 'EMPRESA';
        break;
      case 'GUNSMITH':
        bgColor = DSTokens.error;
        label = 'ARMARIA';
        break;
      default:
        bgColor = DSTokens.outline;
        label = 'BACKOFFICE';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.1),
        border: Border.all(color: bgColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: DSTokens.label.copyWith(fontSize: 10, color: bgColor),
      ),
    );
  }
}
