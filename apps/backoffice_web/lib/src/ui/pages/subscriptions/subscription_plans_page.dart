import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/subscription_plans_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/widgets/subscription_plan_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/widgets/subscription_plans_data_table.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/widgets/subscription_plans_filters.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/widgets/subscription_plans_header.dart';
import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class SubscriptionPlansPage extends StatefulWidget {
  const SubscriptionPlansPage({super.key});

  @override
  State<SubscriptionPlansPage> createState() => _SubscriptionPlansPageState();
}

class _SubscriptionPlansPageState
    extends ViewmodelState<SubscriptionPlansPage, ISubscriptionPlansViewModel> {
  @override
  void initState() {
    super.initState();
    vm.loadPlans();
  }

  @override
  Widget build(BuildContext context) {
    return loadable(
      builder: (plans) => Padding(
        padding: const EdgeInsets.all(DSTokens.spacingXl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SubscriptionPlansHeader(
              onNewPlan: () => _openForm(),
            ),
            const SizedBox(height: DSTokens.spacingXl),
            SubscriptionPlansFilters(vm: vm),
            const SizedBox(height: DSTokens.spacingMd),
            Expanded(
              child: SubscriptionPlansDataTable(
                plans: vm.plans,
                onEditPlan: (plan) => _openForm(plan: plan),
                onDeletePlan: (plan) => _confirmDelete(plan),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openForm({SubscriptionPlan? plan}) {
    showDialog(
      context: context,
      barrierColor: DSTokens.background.withValues(alpha: 0.8),
      builder: (context) => SubscriptionPlanFormDialog(
        plan: plan,
        onSave: (p, isEdit) async {
          await vm.savePlan(p, isEditing: isEdit);
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Plano salvo com sucesso!')),
          );
        },
      ),
    );
  }

  void _confirmDelete(SubscriptionPlan plan) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: DSTokens.surface,
        title: Text('EXCLUIR PLANO?', style: DSTokens.h2),
        content: Text(
          'Deseja realmente excluir o plano "${plan.name}"?',
          style: DSTokens.body,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('CANCELAR', style: DSTokens.label),
          ),
          TextButton(
            onPressed: () {
              vm.deletePlan(plan.id);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Plano excluído!')),
              );
            },
            child: Text(
              'EXCLUIR',
              style: DSTokens.label.copyWith(color: DSTokens.error),
            ),
          ),
        ],
      ),
    );
  }
}
