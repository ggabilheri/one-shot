import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class UsersDataTableHeader extends StatelessWidget {
  const UsersDataTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: DSTokens.surfaceContainerHigh,
        border: Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text('STS', style: DSTokens.headline)),
          Expanded(flex: 3, child: Text('NOME', style: DSTokens.headline)),
          Expanded(flex: 2, child: Text('CPF', style: DSTokens.headline)),
          Expanded(flex: 2, child: Text('TELEFONE', style: DSTokens.headline)),
          Expanded(flex: 2, child: Text('CIDADE/UF', style: DSTokens.headline)),
          Expanded(flex: 1, child: Text('TIPO', style: DSTokens.headline)),
          SizedBox(
            width: 80,
            child: Text(
              'AÇÕES',
              style: DSTokens.headline,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
