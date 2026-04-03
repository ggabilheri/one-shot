import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'widgets/summary_greeting.dart';
import 'widgets/summary_cards_grid.dart';
import 'widgets/summary_recent_activity_list.dart';

class DashboardSummaryPage extends StatefulWidget {
  const DashboardSummaryPage({super.key});

  @override
  State<DashboardSummaryPage> createState() => _DashboardSummaryPageState();
}

class _DashboardSummaryPageState extends ViewmodelState<DashboardSummaryPage, IDashboardSummaryViewModel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SummaryGreeting(),
          const SizedBox(height: DSTokens.spacingXl),
          SummaryCardsGrid(vm: vm),
          const SizedBox(height: DSTokens.spacingXl),
          SummaryRecentActivityList(vm: vm),
        ],
      ),
    );
  }
}
