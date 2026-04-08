import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/products/product_groups_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'product_group_form_dialog.dart';

class ProductGroupsList extends StatelessWidget {
  final IProductGroupsViewmodel vm;

  const ProductGroupsList({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
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
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit_outlined),
                        color: DSTokens.primary,
                        iconSize: 18,
                        tooltip: 'Editar',
                        onPressed: () {
                          vm.setIsNew(false);
                          _openGroupForm(context, group: group);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete_outline),
                        color: DSTokens.error,
                        iconSize: 18,
                        tooltip: 'Excluir',
                        onPressed: () async {
                          final confirm = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: DSTokens.surface,
                              title: const Text('Excluir Categoria?'),
                              content: Text(
                                'Deseja realmente excluir a categoria "${group.name}"?',
                                style: DSTokens.body,
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
                );
              },
            ),
          ),
        ],
      ),
    );
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
}
