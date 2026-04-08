import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/subscription_plans_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/widgets/subscription_plan_form_dialog.dart';
import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
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
            _buildHeader(),
            const SizedBox(height: DSTokens.spacingXl),
            _buildFilters(),
            const SizedBox(height: DSTokens.spacingMd),
            Expanded(child: _buildDataTable()),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
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
          onPressed: () => _openForm(),
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

  Widget _buildFilters() {
    return Container(
      padding: const EdgeInsets.all(DSTokens.spacingMd),
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<PlanType?>(
              value: vm.filterType,
              decoration: const InputDecoration(labelText: 'FILTRAR POR TIPO'),
              items: [
                const DropdownMenuItem(
                  value: null,
                  child: Text('TODOS OS TIPOS'),
                ),
                ...PlanType.values.map(
                  (t) => DropdownMenuItem(value: t, child: Text(t.label)),
                ),
              ],
              onChanged: vm.setFilterType,
            ),
          ),
          const SizedBox(width: DSTokens.spacingMd),
          Expanded(
            child: DropdownButtonFormField<PlanStatus?>(
              value: vm.filterStatus,
              decoration: const InputDecoration(
                labelText: 'FILTRAR POR STATUS',
              ),
              items: [
                const DropdownMenuItem(
                  value: null,
                  child: Text('TODOS OS STATUS'),
                ),
                ...PlanStatus.values.map(
                  (s) => DropdownMenuItem(value: s, child: Text(s.label)),
                ),
              ],
              onChanged: vm.setFilterStatus,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataTable() {
    return Container(
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTableHead(),
          Expanded(
            child: ListView.separated(
              itemCount: vm.plans.length,
              separatorBuilder: (_, __) =>
                  Divider(height: 1, color: DSTokens.surfaceContainerHigh),
              itemBuilder: (context, index) => _buildRow(vm.plans[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHead() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DSTokens.spacingLg,
        vertical: 12,
      ),
      decoration: BoxDecoration(
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
    );
  }

  Widget _buildRow(SubscriptionPlan plan) {
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
          Expanded(child: _buildTypeBadge(plan.planType)),
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
          Expanded(child: _buildStatusBadge(plan.status)),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit_outlined, size: 20),
                  color: DSTokens.primary,
                  onPressed: () => _openForm(plan: plan),
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 20),
                  color: DSTokens.error,
                  onPressed: () => _confirmDelete(plan),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeBadge(PlanType type) {
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
            color: color.withOpacity(0.12),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: color.withOpacity(0.3)),
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

  Widget _buildStatusBadge(PlanStatus status) {
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

  void _openForm({SubscriptionPlan? plan}) {
    showDialog(
      context: context,
      barrierColor: DSTokens.background.withOpacity(0.8),
      builder: (context) => SubscriptionPlanFormDialog(
        plan: plan,
        onSave: (p, isEdit) async {
          await vm.savePlan(p, isEditing: isEdit);
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
        title: const Text('EXCLUIR PLANO?'),
        content: Text('Deseja realmente excluir o plano "${plan.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCELAR'),
          ),
          TextButton(
            onPressed: () {
              vm.deletePlan(plan.id);
              Navigator.pop(context);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Plano excluído!')));
            },
            child: Text('EXCLUIR', style: TextStyle(color: DSTokens.error)),
          ),
        ],
      ),
    );
  }
}
