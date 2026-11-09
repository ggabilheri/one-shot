import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class BankAccountSubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const BankAccountSubmitButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: DSTokens.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}

