import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class UserFormInputField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  const UserFormInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.inputFormatters,
    this.focusNode,
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
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            inputFormatters: inputFormatters,
            style: DSTokens.body.copyWith(color: DSTokens.highlight),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
            ),
          ),
        ),
      ],
    );
  }
}
