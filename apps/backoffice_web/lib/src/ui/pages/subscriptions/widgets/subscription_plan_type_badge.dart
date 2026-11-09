import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:oneshot_client/oneshot_client.dart';

class SubscriptionPlanTypeBadge extends StatelessWidget {
  final PlanType type;

  const SubscriptionPlanTypeBadge({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Color color = DSTokens.outline;
    if (type == PlanType.COMPANY) color = DSTokens.primary;
    if (type == PlanType.GUNSMITH) color = DSTokens.info;
    if (type == PlanType.CAC) color = DSTokens.warning;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: color.withValues(alpha: 0.3)),
          ),
          child: Text(
            type.label.toUpperCase(),
            style: TextStyle(
              color: color,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

