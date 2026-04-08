import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'products_data_table_row.dart';

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
            .map(
              (product) => ProductsDataTableRow(
                context: context,
                product: product,
                vm: vm,
              ),
            )
            .toList(),
      ),
    );
  }
}
