import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'product_form_dialog.dart';
import 'products_origin_badge.dart';

class ProductsDataTableRow extends DataRow {
  final BuildContext context;
  final Product product;
  final IProductsViewmodel vm;

  ProductsDataTableRow({
    required this.context,
    required this.product,
    required this.vm,
  }) : super(
          cells: [
            DataCell(Text(product.code, style: DSTokens.data)),
            DataCell(Text(product.description.toUpperCase(), style: DSTokens.body)),
            DataCell(
              Text(
                vm.groups
                    .firstWhere(
                      (g) => g.id == product.groupId,
                      orElse: () => ProductGroup(
                        name: '-',
                        originModule: 'BACKOFFICE',
                      ),
                    )
                    .name,
                style: DSTokens.body.copyWith(color: DSTokens.primary),
              ),
            ),
            DataCell(Text(product.unit, style: DSTokens.body)),
            DataCell(
              Text(
                'R\$ ${product.unitPrice.toStringAsFixed(2)}',
                style: DSTokens.data.copyWith(color: DSTokens.success),
              ),
            ),
            DataCell(ProductsOriginBadge(origin: product.originModule)),
            DataCell(
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit_outlined,
                      size: 20,
                      color: DSTokens.outline,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: DSTokens.background.withOpacity(0.8),
                        builder: (context) =>
                            ProductFormDialog(vm: vm, product: product),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outline,
                      size: 20,
                      color: DSTokens.error,
                    ),
                    onPressed: () => _confirmDelete(context, product, vm),
                  ),
                ],
              ),
            ),
          ],
        );

  static void _confirmDelete(
    BuildContext context,
    Product product,
    IProductsViewmodel vm,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: DSTokens.surface,
        title: Text('EXCLUIR PRODUTO?', style: DSTokens.h2),
        content: Text(
          'Deseja realmente remover ${product.description}? Esta ação não pode ser desfeita.',
          style: DSTokens.body,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('CANCELAR', style: DSTokens.label),
          ),
          TextButton(
            onPressed: () {
              vm.deleteProduct(product.id);
              Navigator.pop(context);
            },
            child: Text(
              'EXCLUIR',
              style: DSTokens.label.copyWith(color: DSTokens.error),
            ),
          ),
        ],
      ),
    );
  }
}
