import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_tokens.dart';
import 'accessory_viewmodel.dart';

class AccessoryListPage extends StatefulWidget {
  final UuidValue userId;
  const AccessoryListPage({super.key, required this.userId});

  @override
  State<AccessoryListPage> createState() => _AccessoryListPageState();
}

class _AccessoryListPageState extends ViewmodelState<AccessoryListPage, IAccessoryViewmodel>
    implements IAccessoryPresenter, IPresenterBase {
  
  @override
  void onInit() {
    vm.loadAccessories(widget.userId);
    super.onInit();
  }

  @override
  void goToForm([Accessory? accessory]) {
    // Navegação via Presenter
  }

  @override
  void back() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "accessory.list.title".tr().toUpperCase(),
          style: DSTokens.headline.copyWith(fontSize: 18, letterSpacing: 1.2),
        ),
      ),
      body: loadable(
        builder: (load) {
          if (load && vm.accessories.isEmpty) {
            return const Center(child: CircularProgressIndicator(color: DSTokens.primary));
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: DSButton(
                  label: "ADICIONAR ACESSÓRIO",
                  icon: Icons.add,
                  onPressed: () => goToForm(),
                ),
              ),
              Expanded(
                child: vm.accessories.isEmpty
                    ? Center(
                        child: Text(
                          "Nenhum acessório registrado".toUpperCase(),
                          style: DSTokens.label,
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(24),
                        itemCount: vm.accessories.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          final accessory = vm.accessories[index];
                          return _AccessoryCard(
                            accessory: accessory,
                            onEdit: () => goToForm(accessory),
                            onDelete: () => _confirmDelete(accessory.id),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _confirmDelete(UuidValue id) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: DSTokens.surface,
        title: Text("common.delete".tr(), style: DSTokens.headline.copyWith(fontSize: 18)),
        content: Text("Deseja realmente excluir este acessório?", style: DSTokens.body),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("common.cancel".tr(), style: const TextStyle(color: DSTokens.outline)),
          ),
          TextButton(
            onPressed: () {
              vm.deleteAccessory(id);
              Navigator.pop(context);
            },
            child: Text("common.delete".tr(), style: const TextStyle(color: DSTokens.error)),
          ),
        ],
      ),
    );
  }
}

class _AccessoryCard extends StatelessWidget {
  final Accessory accessory;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _AccessoryCard({
    required this.accessory,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: DSTokens.surface,
        borderRadius: BorderRadius.circular(DSTokens.borderRadius),
        border: Border.all(color: DSTokens.outline.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF0C0E10),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.extension_outlined, color: DSTokens.primary, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${accessory.manufacturer} ${accessory.model}".toUpperCase(),
                      style: DSTokens.headline.copyWith(fontSize: 14, letterSpacing: 1),
                    ),
                    Text(
                      "enum.accessoryType.${accessory.type.name}".tr(),
                      style: DSTokens.label.copyWith(fontSize: 12, color: DSTokens.secondary),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit_outlined, size: 20, color: DSTokens.outline),
                onPressed: onEdit,
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline, size: 20, color: DSTokens.error),
                onPressed: onDelete,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Color(0xFF0C0E10), height: 1),
          const SizedBox(height: 16),
          _InfoItem(label: "SÉRIE / IDENTIFICAÇÃO", value: accessory.serialNumber ?? "-"),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;

  const _InfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: DSTokens.label.copyWith(fontSize: 10, letterSpacing: 1),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: DSTokens.data.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
