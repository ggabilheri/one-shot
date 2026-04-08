import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class FinancialEntriesEmptyState extends StatelessWidget {
  final IconData icon;
  final String message;

  const FinancialEntriesEmptyState({
    super.key,
    required this.icon,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: DSTokens.outline),
          const SizedBox(height: 16),
          Text(message, style: DSTokens.body),
        ],
      ),
    );
  }
}
