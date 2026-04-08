import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/brutalist_card.dart';

class FinancialEntriesAddButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color? backgroundColor;

  const FinancialEntriesAddButton({
    super.key,
    required this.onTap,
    this.label = 'NOVO LANÇAMENTO',
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              const Icon(Icons.add, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
