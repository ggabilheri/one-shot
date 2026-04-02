import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_tokens.dart';
import 'firearm_viewmodel.dart';

class FirearmListPage extends StatefulWidget {
  final UuidValue userId;
  const FirearmListPage({super.key, required this.userId});

  @override
  State<FirearmListPage> createState() => _FirearmListPageState();
}

class _FirearmListPageState extends ViewmodelState<FirearmListPage, IFirearmViewmodel>
    implements IFirearmPresenter, IPresenterBase {
  
  @override
  void onInit() {
    vm.loadFirearms(widget.userId);
    super.onInit();
  }

  @override
  void goToForm([Firearm? firearm]) {
    // A navegação real será via QlevarRouter/Presenter
    // Por enquanto, placeholder ou navegação direta se disponível
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
          "firearm.list.title".tr().toUpperCase(),
          style: DSTokens.headline.copyWith(fontSize: 18, letterSpacing: 1.2),
        ),
      ),
      body: loadable(
        builder: (load) {
          if (load && vm.firearms.isEmpty) {
            return const Center(child: CircularProgressIndicator(color: DSTokens.primary));
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: DSButton(
                  label: "ADICIONAR NOVO ARMAMENTO",
                  icon: Icons.add,
                  onPressed: () => goToForm(),
                ),
              ),
              Expanded(
                child: vm.firearms.isEmpty
                    ? Center(
                        child: Text(
                          "Nenhum armamento registrado".toUpperCase(),
                          style: DSTokens.label,
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(24),
                        itemCount: vm.firearms.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          final firearm = vm.firearms[index];
                          return _FirearmCard(
                            firearm: firearm,
                            onEdit: () => goToForm(firearm),
                            onDelete: () => _confirmDelete(firearm.id),
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
        title: Text("common.delete".tr()),
        content: Text("Deseja realmente excluir esta arma?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("common.cancel".tr()),
          ),
          TextButton(
            onPressed: () {
              vm.deleteFirearm(id);
              Navigator.pop(context);
            },
            child: Text("common.delete".tr()),
          ),
        ],
      ),
    );
  }
}

class _FirearmCard extends StatelessWidget {
  final Firearm firearm;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _FirearmCard({
    required this.firearm,
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
                child: const Icon(Icons.shield_outlined, color: DSTokens.primary, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${firearm.manufacturer} ${firearm.model}".toUpperCase(),
                      style: DSTokens.headline.copyWith(fontSize: 14, letterSpacing: 1),
                    ),
                    Text(
                      firearm.caliber,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _InfoItem(label: "SÉRIE", value: firearm.serialNumber),
              _InfoItem(label: "TIPO", value: firearm.type.name.toUpperCase()),
            ],
          ),
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
