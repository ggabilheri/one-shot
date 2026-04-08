import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/brutalist_card.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class SummaryMetricCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final double width;
  final bool isHighlight;
  final bool hasBorder;

  const SummaryMetricCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.width,
    this.isHighlight = false,
    this.hasBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    // A cor de highlight muda sutilmente o tom se for um card importante (Receita)
    final valueColor = isHighlight ? DSTokens.alert : DSTokens.highlight;

    return BrutalistCard(
      borderColor: hasBorder
          ? DSTokens.alert.withValues(alpha: 0.3)
          : Colors.transparent,
      padding: const EdgeInsets.all(24),
      child: SizedBox(
        width:
            width -
            50, // Subtraindo paddings aproximados devido ao box model no Wrap
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: DSTokens.label),
                Icon(icon, color: DSTokens.outline, size: 20),
              ],
            ),
            const SizedBox(height: DSTokens.spacingLg),
            Text(
              value,
              style: DSTokens.data.copyWith(
                fontSize: 32,
                color: valueColor,
                height: 1, // Line height estrito
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
