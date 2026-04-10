import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

class CompaniesDataTableHeader extends StatelessWidget {
  const CompaniesDataTableHeader({super.key});

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
          SizedBox(width: 40, child: Text('STS', style: DSTokens.label)),
          Expanded(
            flex: 3,
            child: Text('NOME DA EMPRESA', style: DSTokens.label),
          ),
          Expanded(flex: 1, child: Text('TIPO', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CNPJ', style: DSTokens.label)),
          Expanded(flex: 2, child: Text('CONTATO', style: DSTokens.label)),
          SizedBox(
            width: 80,
            child: Text(
              'AÇÕES',
              style: DSTokens.label,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
