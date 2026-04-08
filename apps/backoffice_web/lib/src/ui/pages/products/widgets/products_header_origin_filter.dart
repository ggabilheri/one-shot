import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductsHeaderOriginFilter extends StatelessWidget {
  final String selectedOrigin;
  final ValueChanged<String?> onChanged;

  const ProductsHeaderOriginFilter({
    super.key,
    required this.selectedOrigin,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedOrigin,
          dropdownColor: DSTokens.surface,
          items: const [
            DropdownMenuItem(value: 'BACKOFFICE', child: Text('Backoffice')),
            DropdownMenuItem(value: 'COMPANY', child: Text('Empresas')),
            DropdownMenuItem(value: 'GUNSMITH', child: Text('Armarias')),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
