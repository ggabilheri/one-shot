import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

/// Modelo de item para o componente [DSDropdown].
class DSDropdownItem<T> {
  final T value;
  final String label;
  final Widget? icon;
  final Widget? trailing;
  final Color? textColor;
  final TextStyle? style;

  const DSDropdownItem({
    required this.value,
    required this.label,
    this.icon,
    this.trailing,
    this.textColor,
    this.style,
  });
}

/// Componente de Dropdown estilizado para uso global no BackOffice,
/// seguindo o Design System e tokens de estilização da aplicação.
class DSDropdown<T> extends StatefulWidget {
  final String? label;
  final String? hint;
  final T? value;
  final List<DSDropdownItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T?>? validator;
  final double height;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final bool isExpanded;
  final bool enabled;
  final Widget? prefixIcon;

  const DSDropdown({
    super.key,
    this.label,
    this.hint,
    required this.value,
    required this.items,
    this.onChanged,
    this.validator,
    this.height = 48,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.backgroundColor,
    this.borderColor,
    this.borderRadius = 4,
    this.isExpanded = true,
    this.enabled = true,
    this.prefixIcon,
  });

  /// Construtor de conveniência para construir [DSDropdown] diretamente a partir de uma lista de valores.
  factory DSDropdown.fromValues({
    Key? key,
    String? label,
    String? hint,
    required T? value,
    required List<T> values,
    required String Function(T) labelBuilder,
    ValueChanged<T?>? onChanged,
    FormFieldValidator<T?>? validator,
    double height = 48,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 16),
    Color? backgroundColor,
    Color? borderColor,
    double borderRadius = 4,
    bool isExpanded = true,
    bool enabled = true,
    Widget? prefixIcon,
  }) {
    return DSDropdown<T>(
      key: key,
      label: label,
      hint: hint,
      value: value,
      items: values
          .map(
            (val) => DSDropdownItem<T>(
              value: val,
              label: labelBuilder(val),
            ),
          )
          .toList(),
      onChanged: onChanged,
      validator: validator,
      height: height,
      padding: padding,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderRadius: borderRadius,
      isExpanded: isExpanded,
      enabled: enabled,
      prefixIcon: prefixIcon,
    );
  }

  @override
  State<DSDropdown<T>> createState() => _DSDropdownState<T>();
}

class _DSDropdownState<T> extends State<DSDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return FormField<T?>(
      initialValue: widget.value,
      validator: widget.validator,
      builder: (FormFieldState<T?> fieldState) {
        final hasError = fieldState.hasError;
        final effectiveBorderColor = hasError
            ? DSTokens.error
            : (widget.borderColor ?? DSTokens.surfaceContainerHigh);

        // Se o valor do widget mudou externamente, sincroniza o fieldState
        if (fieldState.value != widget.value) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && fieldState.value != widget.value) {
              fieldState.didChange(widget.value);
            }
          });
        }

        final selectedValue = widget.items.any((i) => i.value == widget.value)
            ? widget.value
            : null;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.label != null && widget.label!.isNotEmpty) ...[
              Text(widget.label!, style: DSTokens.label),
              const SizedBox(height: 8),
            ],
            Container(
              height: widget.height,
              padding: widget.padding,
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? DSTokens.background,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                border: Border.all(
                  color: effectiveBorderColor,
                  width: hasError ? 1.5 : 1.0,
                ),
              ),
              child: Row(
                children: [
                  if (widget.prefixIcon != null) ...[
                    widget.prefixIcon!,
                    const SizedBox(width: 8),
                  ],
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<T?>(
                        value: selectedValue,
                        hint: widget.hint != null
                            ? Text(
                                widget.hint!,
                                style: DSTokens.body.copyWith(
                                  color: DSTokens.outline,
                                ),
                              )
                            : null,
                        isExpanded: widget.isExpanded,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: DSTokens.outline,
                          size: 20,
                        ),
                        dropdownColor: DSTokens.surfaceContainer,
                        style: DSTokens.body.copyWith(
                          color: DSTokens.highlight,
                        ),
                        onChanged: widget.enabled
                            ? (val) {
                                fieldState.didChange(val);
                                widget.onChanged?.call(val);
                              }
                            : null,
                        items: widget.items.map((item) {
                          return DropdownMenuItem<T?>(
                            value: item.value,
                            child: Row(
                              children: [
                                if (item.icon != null) ...[
                                  item.icon!,
                                  const SizedBox(width: 8),
                                ],
                                Expanded(
                                  child: Text(
                                    item.label,
                                    overflow: TextOverflow.ellipsis,
                                    style: item.style ??
                                        DSTokens.body.copyWith(
                                          color: item.textColor ??
                                              DSTokens.highlight,
                                        ),
                                  ),
                                ),
                                if (item.trailing != null) item.trailing!,
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (hasError && fieldState.errorText != null) ...[
              const SizedBox(height: 4),
              Text(
                fieldState.errorText!,
                style: DSTokens.label.copyWith(
                  color: DSTokens.error,
                  fontSize: 11,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

