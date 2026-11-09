import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class CompanyOwnerSelector extends StatelessWidget {
  final UserProfile? selectedOwner;
  final VoidCallback onSearch;

  const CompanyOwnerSelector({
    super.key,
    this.selectedOwner,
    required this.onSearch,
  });

  String _formatCpf(String? cpf) {
    if (cpf == null || cpf.trim().isEmpty) return 'N/A';
    final clean = cpf.replaceAll(RegExp(r'\D'), '');
    if (clean.isEmpty) return 'N/A';
    if (clean.length == 11) {
      return '${clean.substring(0, 3)}.${clean.substring(3, 6)}.${clean.substring(6, 9)}-${clean.substring(9, 11)}';
    }
    final mask = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return mask.maskText(clean);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('RESPONSÁVEL PELA EMPRESA', style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      selectedOwner?.name ?? 'NENHUM RESPONSÁVEL SELECIONADO',
                      style: DSTokens.body.copyWith(
                        color: selectedOwner != null
                            ? DSTokens.highlight
                            : DSTokens.outline,
                        fontWeight: selectedOwner != null
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selectedOwner != null)
                      Text(
                        'CPF: ${_formatCpf(selectedOwner?.cpf)}',
                        style: DSTokens.label.copyWith(color: DSTokens.outline),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: onSearch,
                style: ElevatedButton.styleFrom(
                  backgroundColor: DSTokens.surfaceContainerHigh,
                  foregroundColor: DSTokens.highlight,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('BUSCAR'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
