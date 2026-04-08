import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class SummaryGreeting extends StatelessWidget {
  const SummaryGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'RESUMO OPERACIONAL',
          style: DSTokens.headline,
        ),
        const SizedBox(height: 4),
        Text(
          'Métricas consolidadas e telemetria do sistema.',
          style: DSTokens.body,
        ),
      ],
    );
  }
}
