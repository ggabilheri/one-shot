import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductGroupFormDialog extends StatefulWidget {
  final ProductGroup? group;
  final String originModule;
  final Function(ProductGroup) onSave;

  const ProductGroupFormDialog({
    super.key,
    this.group,
    required this.originModule,
    required this.onSave,
  });

  @override
  State<ProductGroupFormDialog> createState() => _ProductGroupFormDialogState();
}

class _ProductGroupFormDialogState extends State<ProductGroupFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late bool _isNew;

  @override
  void initState() {
    super.initState();
    _isNew = widget.group == null;
    _nameController = TextEditingController(text: widget.group?.name);
    _descriptionController = TextEditingController(
      text: widget.group?.description,
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: DSTokens.background,
      title: Text(
        widget.group == null ? 'Novo Grupo' : 'Editar Grupo',
        style: const TextStyle(color: Colors.white),
      ),
      content: Form(
        key: _formKey,
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Nome do Grupo',
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Obrigatório' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Descrição',
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar', style: TextStyle(color: Colors.grey)),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              final group = ProductGroup(
                id: widget.group?.id,
                name: _nameController.text,
                description: _descriptionController.text,
                originModule: widget.originModule,
              );
              widget.onSave(group);
              Navigator.pop(context);
            }
          },
          style: ElevatedButton.styleFrom(backgroundColor: DSTokens.primary),
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
