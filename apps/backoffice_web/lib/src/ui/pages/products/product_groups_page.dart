import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/products/product_groups_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/products/widgets/product_group_form_dialog.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductGroupsPage extends StatefulWidget {
  const ProductGroupsPage({super.key});

  @override
  State<ProductGroupsPage> createState() => _ProductGroupsPageState();
}

class _ProductGroupsPageState extends ViewmodelState<ProductGroupsPage, IProductGroupsViewmodel> {
  @override
  void initState() {
    super.initState();
    vm.loadGroups();
  }

  @override
  Widget build(BuildContext context) {
    return loadable(
      builder: (groups) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Grupos de Produtos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _OriginModuleSelector(
                current: vm.originModule,
                onChanged: vm.setOriginModule,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => _openForm(context),
              icon: const Icon(Icons.add),
              label: const Text('Novo Grupo'),
              style: ElevatedButton.styleFrom(backgroundColor: DSTokens.primary),
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: ListView.builder(
          itemCount: vm.groups.length,
          itemBuilder: (context, index) {
            final group = vm.groups[index];
            return Card(
              color: DSTokens.surface,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(group.name, style: const TextStyle(color: Colors.white, fontSize: 18)),
                subtitle: Text(group.description ?? 'Sem descrição', style: const TextStyle(color: Colors.grey)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () => _openForm(context, group: group),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => vm.deleteGroup(group.id!),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _openForm(BuildContext context, {dynamic group}) {
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

class _OriginModuleSelector extends StatelessWidget {
  final String current;
  final ValueChanged<String> onChanged;

  const _OriginModuleSelector({required this.current, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: current,
      dropdownColor: DSTokens.surface,
      underline: Container(),
      icon: const Icon(Icons.filter_list, color: Colors.white),
      items: ['BACKOFFICE', 'CLUB', 'GUNSMITH']
          .map((m) => DropdownMenuItem(
                value: m,
                child: Text(m, style: const TextStyle(color: Colors.white)),
              ))
          .toList(),
      onChanged: (v) => v != null ? onChanged(v) : null,
    );
  }
}
