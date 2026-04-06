import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

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

  // Permissoes na memoria
  List<RolePermission> _permissions = [];

  // Dropdowns state
  PlatformApp? _selectedPlat;
  AppModule? _selectedMod;
  AccessLevel? _selectedLevel;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.role.name);
    _descController = TextEditingController(text: widget.role.description ?? '');
    _isActive = widget.role.active;
    _isNew = widget.role.name.isEmpty;
    
    // TODO: Num cenário real, buscaríamos as permissões da Role aqui se widget.role.id != null
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _addPermission() {
    if (_selectedPlat != null && _selectedLevel != null) {
      setState(() {
        _permissions.add(RolePermission(
          platform: _selectedPlat!,
          module: _selectedMod, 
          level: _selectedLevel!,
        ));
      });
    }
  }

  void _removePermission(RolePermission p) {
    setState(() {
      _permissions.remove(p);
    });
  }

  Future<void> _save() async {
    if (_formKey.currentState?.validate() ?? false) {
      final role = SecurityRole(
        id: widget.role.id,
        name: _nameController.text.trim(),
        description: _descController.text.trim(),
        active: _isActive,
      );

      await widget.vm.saveRole(role, _permissions, isNew: _isNew);
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nome e Status
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: _buildInputField('NOME DO PAPEL', 'Ex: Administrador de Clube', _nameController),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 1,
                            child: Column(
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
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInputField('DESCRIÇÃO', 'Descrição curta das responsabilidades', _descController),
                      
                      const SizedBox(height: 32),
                      Text(
                        'PERMISSÕES ASSOCIADAS',
                        style: DSTokens.label.copyWith(color: DSTokens.primary),
                      ),
                      const SizedBox(height: 8),
                      const Divider(),
                      const SizedBox(height: 16),

                      // Inserção Manual de Permissão
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: DSTokens.background,
                          border: Border.all(color: DSTokens.surfaceContainerHigh),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: _buildDropdownField<PlatformApp>(
                                'PLATAFORMA',
                                PlatformApp.values,
                                _selectedPlat,
                                (v) => setState(() => _selectedPlat = v),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: _buildDropdownField<AppModule?>(
                                'MÓDULO',
                                [null, ...AppModule.values],
                                _selectedMod,
                                (v) => setState(() => _selectedMod = v),
                                labelMapper: (v) => v?.name ?? 'TODOS',
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: _buildDropdownField<AccessLevel>(
                                'NÍVEL',
                                AccessLevel.values,
                                _selectedLevel,
                                (v) => setState(() => _selectedLevel = v),
                              ),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: _selectedPlat != null && _selectedLevel != null
                                  ? _addPermission
                                  : null,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: DSTokens.primary,
                                foregroundColor: DSTokens.onPrimary,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                padding: const EdgeInsets.all(16),
                              ),
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      // Tabela de Permissoes
                      if (_permissions.isEmpty)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              children: [
                                Icon(Icons.security_outlined, color: DSTokens.outline, size: 40),
                                const SizedBox(height: 8),
                                Text(
                                  'Nenhuma permissão adicionada nesta role.',
                                  style: DSTokens.body.copyWith(color: DSTokens.outline),
                                ),
                              ],
                            ),
                          ),
                        )
                      else
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _permissions.length,
                          separatorBuilder: (_, __) => const Divider(height: 1),
                          itemBuilder: (context, index) {
                            final perm = _permissions[index];
                            return ListTile(
                              tileColor: DSTokens.surfaceContainer,
                              leading: const Icon(Icons.lock_outline, size: 20, color: DSTokens.primary),
                              title: Text(
                                '${perm.platform.label.toUpperCase()} > ${perm.module?.label.toUpperCase() ?? 'TODOS'}',
                                style: DSTokens.body.copyWith(
                                  color: DSTokens.highlight,
                                  fontSize: 14,
                                ),
                              ),
                              subtitle: Text(
                                'NÍVEL DE ACESSO: ${perm.level.label.toUpperCase()}',
                                style: DSTokens.label.copyWith(fontSize: 10),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete_outline, color: DSTokens.error),
                                onPressed: () => _removePermission(perm),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
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
                ElevatedButton(
                  onPressed: _save,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: DSTokens.primary,
                    foregroundColor: DSTokens.onPrimary,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                  child: Text('SALVAR REGISTRO', style: DSTokens.label.copyWith(color: DSTokens.onPrimary, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: TextFormField(
            controller: controller,
            style: DSTokens.body.copyWith(color: DSTokens.highlight),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: DSTokens.body.copyWith(color: DSTokens.outline, fontSize: 12),
            ),
            validator: (value) => value?.isEmpty ?? true ? 'Obrigatório' : null,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField<T>(
    String label,
    List<T> items,
    T? value,
    void Function(T?) onChanged, {
    String Function(T)? labelMapper,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isExpanded: true,
              dropdownColor: DSTokens.surfaceContainerHigh,
              items: items.map((item) {
                final text = labelMapper != null 
                    ? labelMapper(item) 
                    : (item is PlatformApp ? (item as PlatformApp).label.toUpperCase() : 
                      item is AppModule ? (item as AppModule).label.toUpperCase() :
                      item is AccessLevel ? (item as AccessLevel).label.toUpperCase() :
                      item.toString().toUpperCase());
                return DropdownMenuItem<T>(
                  value: item,
                  child: Text(text, style: DSTokens.body.copyWith(fontSize: 12)),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
