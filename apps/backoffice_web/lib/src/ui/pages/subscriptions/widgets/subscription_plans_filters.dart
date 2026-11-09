import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/widgets/ds_dropdown.dart';
import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/subscription_plans_viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';

class SubscriptionPlansFilters extends StatelessWidget {
  final ISubscriptionPlansViewModel vm;

  const SubscriptionPlansFilters({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
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
            child: DSDropdown<PlanType?>.fromValues(
              label: 'FILTRAR POR TIPO',
              value: vm.filterType,
              values: [null, ...PlanType.values],
              labelBuilder: (t) => t == null ? 'TODOS OS TIPOS' : t.label,
              onChanged: vm.setFilterType,
            ),
          ),
          const SizedBox(width: DSTokens.spacingMd),
          Expanded(
            child: DSDropdown<PlanStatus?>.fromValues(
              label: 'FILTRAR POR STATUS',
              value: vm.filterStatus,
              values: [null, ...PlanStatus.values],
              labelBuilder: (s) => s == null ? 'TODOS OS STATUS' : s.label,
              onChanged: vm.setFilterStatus,
            ),
          ),
        ],
      ),
    );
  }
}

