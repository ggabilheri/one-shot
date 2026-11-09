import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:oneshot_client/oneshot_client.dart';

class SubscriptionPlanStatusBadge extends StatelessWidget {
  final PlanStatus status;

  const SubscriptionPlanStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color color = DSTokens.outline;
    if (status == PlanStatus.ACTIVE) color = DSTokens.success;
    if (status == PlanStatus.PAUSED) color = DSTokens.warning;
    if (status == PlanStatus.CANCELED) color = DSTokens.error;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          status.label.toUpperCase(),
          style: TextStyle(
            color: color,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

