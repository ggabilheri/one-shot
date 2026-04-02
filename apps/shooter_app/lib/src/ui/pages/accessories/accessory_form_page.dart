import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_text_field.dart';
import '../../widgets/ds_tokens.dart';
import 'accessory_viewmodel.dart';

class AccessoryFormPage extends StatefulWidget {
  final Accessory? accessory;
  final UuidValue userId;
  const AccessoryFormPage({super.key, this.accessory, required this.userId});

  @override
  State<AccessoryFormPage> createState() => _AccessoryFormPageState();
}

class _AccessoryFormPageState
    extends ViewmodelState<AccessoryFormPage, IAccessoryViewmodel>
    implements IAccessoryPresenter, IPresenterBase {
  final _formKey = GlobalKey<FormState>();

  final _serialController = TextEditingController();
  final _manufacturerController = TextEditingController();
  final _modelController = TextEditingController();
  final _descController = TextEditingController();

  AccessoryType _type = AccessoryType.magazine;
  ConservationState _state = ConservationState.brandNew;

  @override
  void onInit() {
    if (widget.accessory != null) {
      _serialController.text = widget.accessory!.serialNumber ?? '';
      _manufacturerController.text = widget.accessory!.manufacturer ?? '';
      _modelController.text = widget.accessory!.model ?? '';
      _descController.text = widget.accessory!.description ?? '';
      _type = widget.accessory!.type;
      _state = widget.accessory!.conservationState ?? ConservationState.brandNew;
    }
    super.onInit();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final accessory = Accessory(
        id: widget.accessory?.id,
        userId: widget.userId,
        serialNumber: _serialController.text,
        manufacturer: _manufacturerController.text,
        model: _modelController.text,
        description: _descController.text,
        type: _type,
        conservationState: _state,
      );
      vm.saveAccessory(accessory);
    }
  }

  @override
  void back() => Navigator.pop(context);

  @override
  void goToForm([Accessory? accessory]) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          (widget.accessory == null ? "accessory.form.title".tr() : "common.edit".tr()).toUpperCase(),
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
                  label: "accessory.serialNumber".tr(),
                  placeholder: "Número de série ou ID",
                  controller: _serialController,
                ),
                const SizedBox(height: 16),
                DSTextField(
                  label: "accessory.manufacturer".tr(),
                  placeholder: "Fabricante / Marca",
                  controller: _manufacturerController,
                ),
                const SizedBox(height: 16),
                DSTextField(
                  label: "accessory.model".tr(),
                  placeholder: "Modelo do acessório",
                  controller: _modelController,
                ),
                const SizedBox(height: 32),
                _SectionHeader(title: "Especificação".toUpperCase()),
                const SizedBox(height: 24),
                _buildDropdown<AccessoryType>(
                  label: "accessory.type".tr(),
                  value: _type,
                  items: AccessoryType.values,
                  onChanged: (val) => setState(() => _type = val!),
                  itemLabel: (t) => t.name.toUpperCase(),
                ),
                const SizedBox(height: 16),
                DSTextField(
                  label: "DESCRIÇÃO",
                  placeholder: "Detalhes adicionais...",
                  controller: _descController,
                ),
                const SizedBox(height: 40),
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
