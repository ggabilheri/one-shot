import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class SubscriptionPlansHeader extends StatelessWidget {
  final VoidCallback onNewPlan;

  const SubscriptionPlansHeader({
    super.key,
    required this.onNewPlan,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('PLANOS DE ASSINATURA', style: DSTokens.headline),
            const SizedBox(height: 4),
            Text(
              'Controle e gestão dos planos oferecidos para Clubes, Armarias e CACs.',
              style: DSTokens.body,
            ),
          ],
        ),
        ElevatedButton.icon(
          onPressed: onNewPlan,
          icon: const Icon(Icons.add),
          label: const Text('NOVO PLANO'),
          style: ElevatedButton.styleFrom(
            backgroundColor: DSTokens.primary,
            foregroundColor: DSTokens.onPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}

