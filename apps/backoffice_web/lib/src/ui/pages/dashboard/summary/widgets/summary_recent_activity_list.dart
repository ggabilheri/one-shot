import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class SummaryRecentActivityList extends StatelessWidget {
  final IDashboardSummaryViewModel vm;

  const SummaryRecentActivityList({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return BrutalistCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
              ),
            ),
            child: Text(
              'REGISTRO DE ATIVIDADES',
              style: DSTokens.label.copyWith(color: DSTokens.primary),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: vm.recentActivities.length,
            separatorBuilder: (context, index) =>
                const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
            itemBuilder: (context, index) {
              final activity = vm.recentActivities[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: DSTokens.primary,
                        shape:
                            BoxShape.rectangle, // Formas quadradas agressivas
                      ),
                    ),
                    const SizedBox(width: DSTokens.spacingMd),
                    Expanded(
                      child: Text(
                        activity['title']!,
                        style: DSTokens.body.copyWith(
                          color: DSTokens.highlight,
                        ),
                      ),
                    ),
                    Text(
                      activity['time']!,
                      style: DSTokens.data.copyWith(
                        color: DSTokens.outline,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
