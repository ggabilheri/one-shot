import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductOriginModuleSelector extends StatelessWidget {
  final String current;
  final ValueChanged<String> onChanged;

  const ProductOriginModuleSelector({
    super.key,
    required this.current,
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
          value: current,
          dropdownColor: DSTokens.surface,
          items: const [
            DropdownMenuItem(value: 'BACKOFFICE', child: Text('BACKOFFICE')),
            DropdownMenuItem(value: 'CLUB', child: Text('CLUBES')),
            DropdownMenuItem(value: 'GUNSMITH', child: Text('ARMARIAS')),
          ],
          onChanged: (v) => v != null ? onChanged(v) : null,
        ),
      ),
    );
  }
}
