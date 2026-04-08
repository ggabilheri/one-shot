import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/products/product_groups_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/products/products_page.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_group_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_groups_header.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_groups_list.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_origin_module_selector.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:get_it/get_it.dart';

class ProductGroupsPage extends StatefulWidget {
  const ProductGroupsPage({super.key});

  @override
  State<ProductGroupsPage> createState() => _ProductGroupsPageState();
}

class _ProductGroupsPageState
    extends ViewmodelState<ProductGroupsPage, IProductGroupsViewmodel> {
  @override
  void initState() {
    super.initState();
    vm.loadGroups();
  }

  @override
  Widget build(BuildContext context) {
    return loadable(
      builder: (groups) => Padding(
        padding: const EdgeInsets.all(DSTokens.spacingXl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductGroupsHeader(
              trailing: ProductOriginModuleSelector(
                current: vm.originModule,
                onChanged: vm.setOriginModule,
              ),
            ),
            const SizedBox(height: DSTokens.spacingXl),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Lado Esquerdo: Grupos
                  SizedBox(
                    width: 300,
                    child: ProductGroupsList(vm: vm),
                  ),
                  const SizedBox(width: DSTokens.spacingXl),
                  // Lado Direito: Produtos do Grupo
                  Expanded(child: _buildProductsList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductsList() {
    if (vm.selectedGroup == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.inventory_2_outlined,
              size: 64,
              color: DSTokens.surfaceContainerHigh,
            ),
            const SizedBox(height: 16),
            Text(
              'SELECIONE UMA CATEGORIA PARA VER OS PRODUTOS',
              style: DSTokens.body.copyWith(color: DSTokens.outline),
            ),
          ],
        ),
      );
    }

    return ProductsPage(productGroup: vm.selectedGroup);
  }
}
