import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

class RoleDropdownField<T> extends StatelessWidget {
  final String label;
  final List<T> items;
  final T? value;
  final void Function(T?) onChanged;
  final String Function(T)? labelMapper;

  const RoleDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.value,
    required this.onChanged,
    this.labelMapper,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isExpanded: true,
              dropdownColor: DSTokens.surfaceContainerHigh,
              items: items.map((item) {
                final text = labelMapper != null
                    ? labelMapper!(item)
                    : _getDefaultLabel(item);
                return DropdownMenuItem<T>(
                  value: item,
                  child: Text(
                    text,
                    style: DSTokens.body.copyWith(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  String _getDefaultLabel(T item) {
    if (item == null) return 'TODOS';
    if (item is PlatformApp) return item.label.toUpperCase();
    if (item is AppModule) return item.label.toUpperCase();
    if (item is AccessLevel) return item.label.toUpperCase();
    return item.toString().toUpperCase();
  }
}
