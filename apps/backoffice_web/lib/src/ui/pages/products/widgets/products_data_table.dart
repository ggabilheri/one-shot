import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'product_form_dialog.dart';

class ProductsDataTable extends StatelessWidget {
  final IProductsViewmodel vm;
  const ProductsDataTable({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    if (vm.products.isEmpty) {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          color: DSTokens.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text('NENHUM PRODUTO ENCONTRADO.', style: DSTokens.body),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(DSTokens.surfaceContainer),
        columns: [
          DataColumn(label: Text('CÓDIGO', style: DSTokens.label)),
          DataColumn(label: Text('DESCRIÇÃO', style: DSTokens.label)),
          DataColumn(label: Text('GRUPO', style: DSTokens.label)),
          DataColumn(label: Text('UND', style: DSTokens.label)),
          DataColumn(label: Text('VALOR UN', style: DSTokens.label)),
          DataColumn(label: Text('ORIGEM', style: DSTokens.label)),
          DataColumn(label: Text('AÇÕES', style: DSTokens.label)),
        ],
        rows: vm.products
            .map((product) => _buildRow(context, product))
            .toList(),
      ),
    );
  }

  DataRow _buildRow(BuildContext context, Product product) {
    final groupName = vm.groups
        .firstWhere((g) => g.id == product.groupId,
            orElse: () => ProductGroup(name: '-', originModule: 'BACKOFFICE'))
        .name;

    return DataRow(
      cells: [
        DataCell(Text(product.code, style: DSTokens.data)),
        DataCell(Text(product.description.toUpperCase(), style: DSTokens.body)),
        DataCell(Text(groupName, style: DSTokens.body.copyWith(color: DSTokens.primary))),
        DataCell(Text(product.unit, style: DSTokens.body)),
        DataCell(
          Text(
            'R\$ ${product.unitPrice.toStringAsFixed(2)}',
            style: DSTokens.data.copyWith(color: DSTokens.success),
          ),
        ),
        DataCell(_buildOriginBadge(product.originModule)),
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
                onPressed: () => _confirmDelete(context, product),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOriginBadge(String origin) {
    Color bgColor;
    String label;

    switch (origin) {
      case 'CLUB':
        bgColor = DSTokens.success;
        label = 'CLUBE';
        break;
      case 'GUNSMITH':
        bgColor = DSTokens.alert;
        label = 'ARMARIA';
        break;
      default:
        bgColor = DSTokens.outline;
        label = 'BACKOFFICE';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.1),
        border: Border.all(color: bgColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: DSTokens.label.copyWith(fontSize: 10, color: bgColor),
      ),
    );
  }

  void _confirmDelete(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: DSTokens.surface,
        title: Text('EXCLUIR PRODUTO?', style: DSTokens.h2),
        content: Text(
          'Deseja realmente remover \${product.description}? Esta ação não pode ser desfeita.',
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
