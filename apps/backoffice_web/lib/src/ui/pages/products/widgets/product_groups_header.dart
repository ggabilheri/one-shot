import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductGroupsHeader extends StatelessWidget {
  final Widget trailing;
  
  const ProductGroupsHeader({
    super.key,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('GESTÃO DE ESTOQUE', style: DSTokens.headline),
            const SizedBox(height: 4),
            Text(
              'Gerencie categorias e produtos de forma hierárquica.',
              style: DSTokens.body,
            ),
          ],
        ),
        trailing,
      ],
    );
  }
}
