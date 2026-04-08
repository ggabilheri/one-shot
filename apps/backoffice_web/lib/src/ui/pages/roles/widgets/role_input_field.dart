import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class RoleInputField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const RoleInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: TextFormField(
            controller: controller,
            style: DSTokens.body.copyWith(color: DSTokens.highlight),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: DSTokens.body.copyWith(color: DSTokens.outline, fontSize: 12),
            ),
            validator: (value) => value?.isEmpty ?? true ? 'Obrigatório' : null,
          ),
        ),
      ],
    );
  }
}
