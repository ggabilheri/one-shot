import 'package:flutter/material.dart';
import 'package:oneshot_flutter/src/ui/widgets/ds_tokens.dart';

class DSTextField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  const DSTextField({
    super.key,
    required this.label,
    this.placeholder,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            label.toUpperCase(),
            style: DSTokens.label.copyWith(
              letterSpacing: 1.1,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: DSTokens.primary.withOpacity(0.8),
            ),
          ),
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          onChanged: onChanged,
          validator: validator,
          style: DSTokens.body.copyWith(fontSize: 15),
          cursorColor: DSTokens.primary,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: DSTokens.label.copyWith(color: DSTokens.outline.withOpacity(0.3)),
            filled: true,
            fillColor: const Color(0xFF0C0E10), // surface-container-lowest (Backoffice 1)
            prefixIcon: prefixIcon != null
                ? IconTheme(
                    data: const IconThemeData(color: DSTokens.outline, size: 20),
                    child: prefixIcon!,
                  )
                : null,
            suffixIcon: suffixIcon != null
                ? IconTheme(
                    data: const IconThemeData(color: DSTokens.outline, size: 20),
                    child: suffixIcon!,
                  )
                : null,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: BorderSide(color: DSTokens.outline.withOpacity(0.1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: BorderSide(color: DSTokens.outline.withOpacity(0.1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: const BorderSide(color: DSTokens.primary, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: const BorderSide(color: DSTokens.error, width: 1),
            ),
            errorText: errorText,
            errorStyle: const TextStyle(color: DSTokens.error, fontSize: 11),
          ),
        ),
      ],
    );
  }
}
