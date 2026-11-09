import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'subscription_plans_data_table_row.dart';

class SubscriptionPlansDataTable extends StatelessWidget {
  final List<SubscriptionPlan> plans;
  final void Function(SubscriptionPlan) onEditPlan;
  final void Function(SubscriptionPlan) onDeletePlan;

  const SubscriptionPlansDataTable({
    super.key,
    required this.plans,
    required this.onEditPlan,
    required this.onDeletePlan,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: DSTokens.spacingLg,
              vertical: 12,
            ),
            decoration: const BoxDecoration(
              color: DSTokens.surfaceContainer,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Row(
              children: [
                Expanded(child: Text('NOME DO PLANO', style: DSTokens.label)),
                Expanded(child: Text('PÚBLICO-ALVO', style: DSTokens.label)),
                Expanded(child: Text('VALOR TOTAL', style: DSTokens.label)),
                Expanded(child: Text('PERIODICIDADE', style: DSTokens.label)),
                Expanded(child: Text('STATUS', style: DSTokens.label)),
                SizedBox(
                  width: 100,
                  child: Text(
                    'AÇÕES',
                    style: DSTokens.label,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: plans.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
              itemBuilder: (context, index) {
                final plan = plans[index];
                return SubscriptionPlansDataTableRow(
                  plan: plan,
                  onEdit: () => onEditPlan(plan),
                  onDelete: () => onDeletePlan(plan),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

