import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class ProductFormDialog extends StatefulWidget {
  final IProductsViewmodel vm;
  final Product? product;
  const ProductFormDialog({super.key, required this.vm, this.product});

  @override
  State<ProductFormDialog> createState() => _ProductFormDialogState();
}

class _ProductFormDialogState extends State<ProductFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _codeController;
  late TextEditingController _descController;
  late TextEditingController _priceController;
  String _unit = 'UN';
  UuidValue? _selectedGroupId;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController(text: widget.product?.code ?? '');
    _descController = TextEditingController(
      text: widget.product?.description ?? '',
    );
    _priceController = TextEditingController(
      text: widget.product?.unitPrice.toString() ?? '0.0',
    );
    _unit = widget.product?.unit ?? 'UN';
    _selectedGroupId = widget.product?.groupId;
  }

  @override
  void dispose() {
    _codeController.dispose();
    _descController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.product != null;

    return Dialog(
      backgroundColor: DSTokens.surface,
      insetPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Container(
        width: 600,
        padding: const EdgeInsets.all(DSTokens.spacingXl),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  isEditing ? 'EDITAR PRODUTO' : 'NOVO PRODUTO',
                  style: DSTokens.h2,
                ),
                const SizedBox(height: DSTokens.spacingLg),
                _buildField('CÓDIGO / SKU', _codeController, isRequired: true),
                const SizedBox(height: DSTokens.spacingMd),
                _buildField('DESCRIÇÃO', _descController, isRequired: true),
                const SizedBox(height: DSTokens.spacingMd),
                _buildGroupDropdown(),
                const SizedBox(height: DSTokens.spacingMd),
                Row(
                  children: [
                    Expanded(child: _buildUnitDropdown()),
                    const SizedBox(width: DSTokens.spacingMd),
                    Expanded(
                      child: _buildField(
                        'PREÇO UNITÁRIO',
                        _priceController,
                        isNumber: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: DSTokens.spacingXl),
                _buildActions(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String label,
    TextEditingController controller, {
    bool isRequired = false,
    bool isNumber = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: DSTokens.spacingSm),
        TextFormField(
          controller: controller,
          keyboardType: isNumber
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
          style: DSTokens.body,
          decoration: InputDecoration(
            fillColor: DSTokens.surfaceContainer,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: DSTokens.surfaceContainerHigh),
            ),
          ),
          validator: (value) {
            if (isRequired && (value == null || value.isEmpty))
              return 'Campo obrigatório';
            if (isNumber && double.tryParse(value ?? '0') == null)
              return 'Valor inválido';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildGroupDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('GRUPO / CATEGORIA', style: DSTokens.label),
        const SizedBox(height: DSTokens.spacingSm),
        DropdownButtonFormField<UuidValue>(
          value: _selectedGroupId,
          dropdownColor: DSTokens.surface,
          decoration: InputDecoration(
            fillColor: DSTokens.surfaceContainer,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: DSTokens.surfaceContainerHigh),
            ),
          ),
          hint: const Text(
            'Selecione um grupo',
            style: TextStyle(color: Colors.grey),
          ),
          items: widget.vm.groups
              .map(
                (g) => DropdownMenuItem(
                  value: g.id,
                  child: Text(
                    g.name,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )
              .toList(),
          onChanged: (val) => setState(() => _selectedGroupId = val),
        ),
      ],
    );
  }

  Widget _buildUnitDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('UNIDADE', style: DSTokens.label),
        const SizedBox(height: DSTokens.spacingSm),
        DropdownButtonFormField<String>(
          value: _unit,
          dropdownColor: DSTokens.surface,
          decoration: InputDecoration(
            fillColor: DSTokens.surfaceContainer,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: DSTokens.surfaceContainerHigh),
            ),
          ),
          items: const [
            DropdownMenuItem(value: 'UN', child: Text('UN')),
            DropdownMenuItem(value: 'KG', child: Text('KG')),
            DropdownMenuItem(value: 'CAIXA', child: Text('CAIXA')),
            DropdownMenuItem(value: 'GRAINS', child: Text('GRAINS')),
            DropdownMenuItem(value: 'LITROS', child: Text('LITROS')),
          ],
          onChanged: (val) => setState(() => _unit = val!),
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('CANCELAR', style: DSTokens.label),
        ),
        const SizedBox(width: DSTokens.spacingMd),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: DSTokens.primary,
            foregroundColor: DSTokens.onPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: _save,
          child: const Text(
            'SALVAR REGISTRO',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  void _save() async {
    if (_formKey.currentState!.validate()) {
      try {
        final product = Product(
          id: widget.product?.id,
          code: _codeController.text,
          description: _descController.text,
          unit: _unit,
          unitPrice: double.parse(_priceController.text),
          originModule:
              widget.product?.originModule ?? widget.vm.selectedOrigin,
          groupId: _selectedGroupId!,
        );

        await widget.vm.saveProduct(product, isEditing: widget.product != null);
        if (mounted) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Produto salvo com sucesso!'),
              backgroundColor: DSTokens.success,
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: DSTokens.error,
          ),
        );
      }
    }
  }
}
