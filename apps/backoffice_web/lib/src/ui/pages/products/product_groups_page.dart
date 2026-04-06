import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/products/product_groups_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/products/products_page.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_group_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_form_dialog.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
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
            _buildHeader(),
            const SizedBox(height: DSTokens.spacingXl),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Lado Esquerdo: Grupos
                  SizedBox(width: 300, child: _buildGroupsList()),
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

  Widget _buildHeader() {
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
        Row(
          children: [
            _OriginModuleSelector(
              current: vm.originModule,
              onChanged: vm.setOriginModule,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGroupsList() {
    return Container(
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(DSTokens.spacingMd),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CATEGORIAS',
                  style: DSTokens.label.copyWith(color: DSTokens.primary),
                ),
                GestureDetector(
                  onTap: () {
                    vm.setIsNew(true);
                    _openGroupForm(context);
                  },
                  child: const Icon(Icons.add_box, color: DSTokens.primary),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
          Expanded(
            child: ListView.separated(
              itemCount: vm.groups.length,
              padding: const EdgeInsets.all(DSTokens.spacingXs),
              separatorBuilder: (_, __) => const Divider(
                height: 1,
                color: DSTokens.surfaceContainerHigh,
              ),
              itemBuilder: (context, index) {
                final group = vm.groups[index];
                final isSelected = vm.selectedGroup?.id == group.id;

                return ListTile(
                  selected: isSelected,
                  selectedTileColor: DSTokens.primary.withOpacity(0.1),
                  leading: Icon(
                    Icons.folder_open,
                    color: isSelected ? DSTokens.primary : DSTokens.outline,
                  ),
                  title: Text(
                    group.name.toUpperCase(),
                    style: DSTokens.body.copyWith(
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isSelected ? DSTokens.primary : Colors.white,
                    ),
                  ),
                  onTap: () => vm.selectGroup(group),
                  trailing: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit_outlined),
                            color: DSTokens.primary,
                            tooltip: 'Editar',
                            onPressed: () {
                              vm.setIsNew(false);
                              _openGroupForm(context, group: group);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            color: DSTokens.error,
                            tooltip: 'Excluir',
                            onPressed: () async {
                              final confirm = await showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Excluir Categoria?'),
                                  content: Text(
                                    'Deseja realmente excluir a categoria "${group.name}"?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, false),
                                      child: const Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, true),
                                      child: Text(
                                        'Excluir',
                                        style: TextStyle(color: DSTokens.error),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                              if (confirm == true) {
                                vm.deleteGroup(group.id);
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsList() {
    if (vm.selectedGroup == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
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
    // (
    //   decoration: BoxDecoration(
    //     color: DSTokens.surface,
    //     borderRadius: BorderRadius.circular(8),
    //     border: Border.all(color: DSTokens.surfaceContainerHigh),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(DSTokens.spacingMd),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               'PRODUTOS EM: ${vm.selectedGroup!.name.toUpperCase()}',
    //               style: DSTokens.label.copyWith(color: DSTokens.primary),
    //             ),
    //             TextButton.icon(
    //               onPressed: _openProductForm,
    //               icon: const Icon(Icons.add, size: 18),
    //               label: const Text('ADICIONAR PRODUTO'),
    //             ),
    //           ],
    //         ),
    //       ),
    //       const Divider(height: 1, color: DSTokens.surfaceContainerHigh),
    //       Expanded(
    //         child: vm.products.isEmpty
    //             ? Center(
    //                 child: Text(
    //                   'NENHUM PRODUTO NESTA CATEGORIA.',
    //                   style: DSTokens.body,
    //                 ),
    //               )
    //             : ListView.separated(
    //                 itemCount: vm.products.length,
    //                 separatorBuilder: (_, __) => const Divider(
    //                   height: 1,
    //                   color: DSTokens.surfaceContainerHigh,
    //                 ),
    //                 itemBuilder: (context, index) {
    //                   final p = vm.products[index];
    //                   return ListTile(
    //                     leading: const CircleAvatar(
    //                       backgroundColor: DSTokens.surfaceContainer,
    //                       child: Icon(
    //                         Icons.shopping_bag_outlined,
    //                         color: DSTokens.outline,
    //                         size: 20,
    //                       ),
    //                     ),
    //                     title: Text(
    //                       p.description.toUpperCase(),
    //                       style: DSTokens.body,
    //                     ),
    //                     subtitle: Text(
    //                       p.code,
    //                       style: DSTokens.data.copyWith(fontSize: 12),
    //                     ),
    //                     trailing: Text(
    //                       'R\$ ${p.unitPrice.toStringAsFixed(2)}',
    //                       style: DSTokens.data.copyWith(
    //                         color: DSTokens.success,
    //                       ),
    //                     ),
    //                   );
    //                 },
    //               ),
    //       ),
    //     ],
    //   ),
    // );
  }

  void _openGroupForm(BuildContext context, {dynamic group}) {
    showDialog(
      context: context,
      builder: (_) => ProductGroupFormDialog(
        group: group,
        originModule: vm.originModule,
        onSave: vm.saveGroup,
      ),
    );
  }

  void _openProductForm() {
    // Para abrir o formulário de produto, precisamos do ProductsViewmodel
    // Como esta página usa IProductGroupsViewmodel, vamos injetar o outro VM temporariamente ou usar o central
    final productsVm = GetIt.I<IProductsViewmodel>();
    productsVm.setOrigin(vm.originModule);
    productsVm.loadGroups(); // Garante que grupos estão carregados no outro VM

    showDialog(
      context: context,
      barrierColor: DSTokens.background.withOpacity(0.8),
      builder: (context) => ProductFormDialog(
        vm: productsVm,
        initialGroupId: vm.selectedGroup?.id,
      ),
    ).then((_) => vm.loadProducts()); // Recarrega após salvar
  }
}

class _OriginModuleSelector extends StatelessWidget {
  final String current;
  final ValueChanged<String> onChanged;

  const _OriginModuleSelector({required this.current, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: current,
          dropdownColor: DSTokens.surface,
          items: const [
            DropdownMenuItem(value: 'BACKOFFICE', child: Text('BACKOFFICE')),
            DropdownMenuItem(value: 'CLUB', child: Text('CLUBES')),
            DropdownMenuItem(value: 'GUNSMITH', child: Text('ARMARIAS')),
          ],
          onChanged: (v) => v != null ? onChanged(v) : null,
        ),
      ),
    );
  }
}
