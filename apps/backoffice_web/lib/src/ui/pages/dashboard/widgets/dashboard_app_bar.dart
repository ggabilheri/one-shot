import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Alinhado com o header da sidebar
      padding: const EdgeInsets.symmetric(horizontal: DSTokens.spacingLg),
      decoration: const BoxDecoration(
        color: DSTokens.surface,
        border: Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: DSTokens.outline),
            onPressed: () {},
            splashRadius: 24,
          ),
          const SizedBox(width: DSTokens.spacingSm),
          IconButton(
            icon: const Icon(Icons.settings, color: DSTokens.outline),
            onPressed: () {},
            splashRadius: 24,
          ),
        ],
      ),
    );
  }
}
