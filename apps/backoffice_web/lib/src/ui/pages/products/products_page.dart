import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

import 'widgets/products_header.dart';
import 'widgets/products_data_table.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, this.productGroup});
  final ProductGroup? productGroup;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState
    extends ViewmodelState<ProductsPage, IProductsViewmodel> {
  @override
  void initState() {
    super.initState();
    if (widget.productGroup != null) {
      vm.setProductGroup(widget.productGroup);
    }
  }
  
  @override
  void didUpdateWidget(covariant ProductsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.productGroup?.id != widget.productGroup?.id) {
      vm.setProductGroup(widget.productGroup);
    }
  }

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
