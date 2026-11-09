import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'subscription_plan_type_badge.dart';
import 'subscription_plan_status_badge.dart';

class SubscriptionPlansDataTableRow extends StatelessWidget {
  final SubscriptionPlan plan;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const SubscriptionPlansDataTableRow({
    super.key,
    required this.plan,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DSTokens.spacingLg,
        vertical: 16,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              plan.name.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: SubscriptionPlanTypeBadge(type: plan.planType)),
          Expanded(
            child: Text(
              'R\$ ${plan.totalValue.toStringAsFixed(2)}',
              style: DSTokens.data.copyWith(color: DSTokens.success),
            ),
          ),
          Expanded(
            child: Text(
              plan.periodicity.label.toUpperCase(),
              style: DSTokens.body,
            ),
          ),
          Expanded(child: SubscriptionPlanStatusBadge(status: plan.status)),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit_outlined, size: 20),
                  color: DSTokens.primary,
                  onPressed: onEdit,
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 20),
                  color: DSTokens.error,
                  onPressed: onDelete,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

