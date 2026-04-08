import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:company_portal/src/ui/widgets/brutalist_card.dart';

class BankAccountsAddButton extends StatelessWidget {
  final VoidCallback onTap;

  const BankAccountsAddButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: DSTokens.primary,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              Icon(Icons.add, color: DSTokens.background),
              SizedBox(width: 8),
              Text(
                'NOVA CONTA',
                style: TextStyle(
                  color: DSTokens.background,
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
