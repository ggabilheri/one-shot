import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

import 'widgets/products_header.dart';
import 'widgets/products_data_table.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends ViewmodelState<ProductsPage, IProductsViewmodel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(DSTokens.spacingXl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProductsHeader(vm: vm),
          const SizedBox(height: DSTokens.spacingXl),
          if (vm.isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(DSTokens.spacingXl),
                child: CircularProgressIndicator(color: DSTokens.primary),
              ),
            )
          else
            ProductsDataTable(vm: vm),
        ],
      ),
    );
  }
}
