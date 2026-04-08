import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'products_header_group_filter.dart';
import 'products_header_origin_filter.dart';
import 'products_header_action_button.dart';

class ProductsHeader extends StatelessWidget {
  final IProductsViewmodel vm;
  const ProductsHeader({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CATÁLOGO DE PRODUTOS',
              style: DSTokens.headline,
            ),
            const SizedBox(height: 4),
            Text(
              'Gestão global de munições, insumos e peças.',
              style: DSTokens.body,
            ),
          ],
        ),
        Row(
          children: [
            ProductsHeaderOriginFilter(
              selectedOrigin: vm.selectedOrigin,
              onChanged: (val) {
                if (val != null) vm.setOrigin(val);
              },
            ),
            const SizedBox(width: DSTokens.spacingMd),
            if (!vm.isFilteredByGroup) ...[
              ProductsHeaderGroupFilter(
                selectedGroupId: vm.selectedGroupId,
                groups: vm.groups,
                onChanged: (val) {
                  vm.setSelectedGroup(val);
                },
              ),
              const SizedBox(width: DSTokens.spacingMd),
            ],
            ProductsHeaderActionButton(vm: vm),
          ],
        ),
      ],
    );
  }
}
