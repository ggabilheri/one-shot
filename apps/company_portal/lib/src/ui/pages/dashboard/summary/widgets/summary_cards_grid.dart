import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'summary_metric_card.dart';

class SummaryCardsGrid extends StatelessWidget {
  final IDashboardSummaryViewModel vm;

  const SummaryCardsGrid({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 800;
        final cardWidth = isMobile
            ? constraints.maxWidth
            : (constraints.maxWidth - 48) / 3;

        return Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            SummaryMetricCard(
              title: 'CACs ATIVOS',
              value: vm.totalCacs.toString(),
              icon: Icons.people,
              width: cardWidth,
            ),
            SummaryMetricCard(
              title: 'ARMAS REGISTRADAS',
              value: vm.totalArms.toString(),
              icon: Icons.shield,
              width: cardWidth,
            ),
            SummaryMetricCard(
              title: 'RECEITA (MÊS)',
              value: 'R\$ ${vm.monthlyRevenue.toStringAsFixed(2)}',
              icon: Icons.attach_money,
              width: cardWidth,
              isHighlight: true,
            ),
            SummaryMetricCard(
              title: 'EMPRESAS',
              value: vm.monthlyRevenue.toStringAsFixed(2),
              icon: Icons.business_sharp,
              width: cardWidth,
              isHighlight: false,
            ),
            SummaryMetricCard(
              title: 'OS',
              value: vm.monthlyRevenue.toString(),
              icon: Icons.document_scanner_outlined,
              width: cardWidth,
              isHighlight: false,
            ),
            SummaryMetricCard(
              title: 'ARMEIROS',
              value: vm.monthlyRevenue.toString(),
              icon: Icons.token_outlined,
              width: cardWidth,
              isHighlight: false,
            ),
          ],
        );
      },
    );
  }
}
