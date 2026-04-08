import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'role_input_field.dart';
import 'role_permission_insertion_section.dart';
import 'role_permission_list.dart';

class RoleFormDialog extends StatefulWidget {
  final IRolesViewmodel vm;
  final SecurityRole role;

  const RoleFormDialog({super.key, required this.vm, required this.role});

  @override
  State<RoleFormDialog> createState() => _RoleFormDialogState();
}

class _RoleFormDialogState extends State<RoleFormDialog> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _descController;
  bool _isActive = true;
  late bool _isNew;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.role.name);
    _descController = TextEditingController(
      text: widget.role.description ?? '',
    );
    _isActive = widget.role.active;
    _isNew = widget.role.name.isEmpty;

    // Por enquanto, apenas inicializamos uma lista vazia
    widget.vm.setPermissions([]);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_formKey.currentState?.validate() ?? false) {
      final role = SecurityRole(
        id: widget.role.id,
        name: _nameController.text.trim(),
        description: _descController.text.trim(),
        active: _isActive,
      );

      await widget.vm.saveRole(role, widget.vm.permissions, isNew: _isNew);
      if (mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      backgroundColor: DSTokens.surface,
      child: Container(
        width: 800,
        height: 700,
        decoration: BoxDecoration(
          border: Border.all(color: DSTokens.surfaceContainerHigh),
        ),
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _isNew ? 'NOVO PAPEL' : 'EDITAR PAPEL',
                  style: DSTokens.headline.copyWith(fontSize: 20),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close, color: DSTokens.outline),
                ),
              ],
            ),
            const Divider(height: 32),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListenableBuilder(
                  listenable: widget.vm,
                  builder: (context, _) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: RoleInputField(
                                  label: 'NOME DO PAPEL',
                                  hint: 'Ex: Administrador de Clube',
                                  controller: _nameController,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(flex: 1, child: _buildStatusSwitch()),
                            ],
                          ),
                          const SizedBox(height: 16),
                          RoleInputField(
                            label: 'DESCRIÇÃO',
                            hint: 'Descrição curta das responsabilidades',
                            controller: _descController,
                          ),

                          const SizedBox(height: 32),
                          Text(
                            'PERMISSÕES ASSOCIADAS',
                            style: DSTokens.label.copyWith(
                              color: DSTokens.primary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Divider(),
                          const SizedBox(height: 16),

                          RolePermissionInsertionSection(
                            onAdd: (p) => widget.vm.addPermission(p),
                          ),

                          const SizedBox(height: 16),

                          RolePermissionList(
                            permissions: widget.vm.permissions,
                            onRemove: (p) => widget.vm.removePermission(p),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('CANCELAR', style: DSTokens.label),
                ),
                const SizedBox(width: 16),
                _buildSaveButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusSwitch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('STATUS', style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _isActive ? 'ATIVO' : 'INATIVO',
                style: DSTokens.body.copyWith(
                  color: _isActive ? DSTokens.success : DSTokens.error,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Switch(
                value: _isActive,
                onChanged: (val) => setState(() => _isActive = val),
                activeColor: DSTokens.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return ListenableBuilder(
      listenable: widget.vm,
      builder: (context, _) {
        return ElevatedButton(
          onPressed: widget.vm.isLoading ? null : _save,
          style: ElevatedButton.styleFrom(
            backgroundColor: DSTokens.primary,
            foregroundColor: DSTokens.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: widget.vm.isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: DSTokens.onPrimary,
                  ),
                )
              : Text(
                  'SALVAR REGISTRO',
                  style: DSTokens.label.copyWith(
                    color: DSTokens.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        );
      },
    );
  }
}
