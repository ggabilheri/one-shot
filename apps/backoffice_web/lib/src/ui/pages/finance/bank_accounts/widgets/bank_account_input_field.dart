import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class BankAccountInputField extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final VoidCallback? onTap;

  const BankAccountInputField({
    super.key,
    required this.label,
    this.hintText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          onTap: onTap,
          style: DSTokens.body,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
            filled: true,
            fillColor: Colors.black.withValues(alpha: 0.1),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: DSTokens.outlineVariant,
                width: 2,
              ),
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: DSTokens.primary, width: 2),
              borderRadius: BorderRadius.zero,
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: DSTokens.error, width: 2),
              borderRadius: BorderRadius.zero,
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: DSTokens.error, width: 2),
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    );
  }
}

