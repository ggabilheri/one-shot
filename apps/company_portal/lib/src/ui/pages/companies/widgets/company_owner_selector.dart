import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class CompanyOwnerSelector extends StatelessWidget {
  final UserProfile? selectedOwner;
  final VoidCallback onSearch;

  const CompanyOwnerSelector({
    super.key,
    this.selectedOwner,
    required this.onSearch,
  });

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
                        'CPF: ${selectedOwner?.cpf ?? "N/A"}',
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
