import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class RolesDataTableEmptyState extends StatelessWidget {
  const RolesDataTableEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: DSTokens.outlineVariant),
      ),
      child: Center(
        child: Column(
          children: [
            const Icon(Icons.security, size: 48, color: DSTokens.outline),
            const SizedBox(height: 16),
            Text(
              'Nenhum perfil de acesso cadastrado.',
              style: DSTokens.body.copyWith(color: DSTokens.outline),
            ),
          ],
        ),
      ),
    );
  }
}
