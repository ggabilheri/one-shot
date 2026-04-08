import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class CompanyFormInputField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;

  const CompanyFormInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.focusNode,
    this.inputFormatters,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasError = errorText != null && errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: DSTokens.label.copyWith(
            color: hasError ? DSTokens.error : null,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(
              color: hasError ? DSTokens.error : DSTokens.surfaceContainerHigh,
            ),
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
        if (hasError) ...[
          const SizedBox(height: 4),
          Text(
            errorText!,
            style: DSTokens.body.copyWith(
              color: DSTokens.error,
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}
