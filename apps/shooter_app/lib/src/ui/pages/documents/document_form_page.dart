import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_text_field.dart';
import '../../widgets/ds_tokens.dart';
import 'document_viewmodel.dart';

class DocumentFormPage extends StatefulWidget {
  final Document? document;
  final UuidValue userId;
  const DocumentFormPage({super.key, this.document, required this.userId});

  @override
  State<DocumentFormPage> createState() => _DocumentFormPageState();
}

class _DocumentFormPageState
    extends ViewmodelState<DocumentFormPage, IDocumentViewmodel>
    implements IDocumentPresenter, IPresenterBase {
  final _formKey = GlobalKey<FormState>();

  final _numberController = TextEditingController();
  final _supplierNameController = TextEditingController();

  DocumentType _type = DocumentType.cr;
  RegistryBody _registry = RegistryBody.sigma;
  DateTime _emissionDate = DateTime.now();

  @override
  void onInit() {
    if (widget.document != null) {
      _numberController.text = widget.document!.number;
      _supplierNameController.text = widget.document!.supplierName ?? '';
      _type = widget.document!.type;
      _registry = widget.document!.registryBody;
      _emissionDate = widget.document!.emissionDate;
    }
    super.onInit();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final document = Document(
        id: widget.document?.id,
        userId: widget.userId,
        type: _type,
        registryBody: _registry,
        number: _numberController.text,
        emissionDate: _emissionDate,
        supplierName: _supplierNameController.text.isNotEmpty ? _supplierNameController.text : null,
      );
      vm.saveDocument(document);
    }
  }

  @override
  void back() => Navigator.pop(context);

  @override
  void goToForm([Document? document]) {}

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _emissionDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: DSTokens.primary,
              onPrimary: Colors.black,
              surface: Color(0xFF1E2022),
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _emissionDate) {
      setState(() => _emissionDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          (widget.document == null ? "Novo Documento" : "Editar Documento").toUpperCase(),
          style: DSTokens.headline.copyWith(fontSize: 18, letterSpacing: 1.2),
        ),
      ),
      body: loadable(
        builder: (load) => SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _SectionHeader(title: "Identificação".toUpperCase()),
                const SizedBox(height: 24),
                DSTextField(
                  label: "document.number".tr(),
                  placeholder: "Ex: 000000000",
                  controller: _numberController,
                  validator: (v) => v!.isEmpty ? "Campo obrigatório" : null,
                ),
                const SizedBox(height: 16),
                _buildDropdown<DocumentType>(
                  label: "document.type".tr(),
                  value: _type,
                  items: DocumentType.values,
                  onChanged: (val) => setState(() => _type = val!),
                  itemLabel: (t) => "enum.documentType.${t.name}".tr(),
                ),
                const SizedBox(height: 32),
                _SectionHeader(title: "Expedição".toUpperCase()),
                const SizedBox(height: 24),
                _buildDropdown<RegistryBody>(
                  label: "Orgão Expedidor",
                  value: _registry,
                  items: RegistryBody.values,
                  onChanged: (val) => setState(() => _registry = val!),
                  itemLabel: (r) => r.name.toUpperCase(),
                ),
                const SizedBox(height: 16),
                _DatePickerField(
                  label: "Data de Emissão",
                  date: _emissionDate,
                  onTap: () => _selectDate(context),
                ),
                const SizedBox(height: 48),
                DSButton(
                  label: "common.save".tr(),
                  onPressed: _save,
                  isLoading: load,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown<T>({
    required String label,
    required T value,
    required List<T> items,
    required ValueChanged<T?> onChanged,
    required String Function(T) itemLabel,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            label.toUpperCase(),
            style: DSTokens.label.copyWith(
              letterSpacing: 1.1,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: DSTokens.primary.withOpacity(0.8),
            ),
          ),
        ),
        DropdownButtonFormField<T>(
          value: value,
          style: DSTokens.body.copyWith(fontSize: 15),
          dropdownColor: const Color(0xFF1E2022),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF0C0E10),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: BorderSide(color: DSTokens.outline.withOpacity(0.1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              borderSide: BorderSide(color: DSTokens.outline.withOpacity(0.1)),
            ),
          ),
          items: items.map((t) {
            return DropdownMenuItem(
              value: t,
              child: Text(itemLabel(t)),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class _DatePickerField extends StatelessWidget {
  final String label;
  final DateTime date;
  final VoidCallback onTap;

  const _DatePickerField({required this.label, required this.date, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(DSTokens.borderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              label.toUpperCase(),
              style: DSTokens.label.copyWith(
                letterSpacing: 1.1,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: DSTokens.primary.withOpacity(0.8),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: const Color(0xFF0C0E10),
              borderRadius: BorderRadius.circular(DSTokens.borderRadius),
              border: Border.all(color: DSTokens.outline.withOpacity(0.1)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    date.toLocal().toString().split(' ')[0],
                    style: DSTokens.data.copyWith(fontSize: 15),
                  ),
                ),
                Icon(Icons.calendar_today_outlined, size: 18, color: DSTokens.primary.withOpacity(0.5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: DSTokens.label.copyWith(
            color: DSTokens.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: Divider(color: Color(0xFF282A2C), height: 1),
        ),
      ],
    );
  }
}
