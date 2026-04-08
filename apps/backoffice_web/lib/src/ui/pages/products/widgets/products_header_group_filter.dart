import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductsHeaderGroupFilter extends StatelessWidget {
  final UuidValue? selectedGroupId;
  final List<ProductGroup> groups;
  final ValueChanged<UuidValue?> onChanged;

  const ProductsHeaderGroupFilter({
    super.key,
    required this.selectedGroupId,
    required this.groups,
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
        child: DropdownButton<UuidValue?>(
          value: selectedGroupId,
          dropdownColor: DSTokens.surface,
          hint: const Text('TODOS OS GRUPOS'),
          items: [
            const DropdownMenuItem(value: null, child: Text('TODOS OS GRUPOS')),
            ...groups.map((g) => DropdownMenuItem(
                  value: g.id,
                  child: Text(g.name.toUpperCase()),
                )),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
