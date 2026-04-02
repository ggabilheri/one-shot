import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_text_field.dart';
import '../../widgets/ds_tokens.dart';
import 'firearm_viewmodel.dart';

class FirearmFormPage extends StatefulWidget {
  final Firearm? firearm;
  final UuidValue userId;
  const FirearmFormPage({super.key, this.firearm, required this.userId});

  @override
  State<FirearmFormPage> createState() => _FirearmFormPageState();
}

class _FirearmFormPageState
    extends ViewmodelState<FirearmFormPage, IFirearmViewmodel>
    implements IFirearmPresenter, IPresenterBase {
  final _formKey = GlobalKey<FormState>();

  final _serialController = TextEditingController();
  final _manufacturerController = TextEditingController();
  final _modelController = TextEditingController();
  final _caliberController = TextEditingController();
  final _capacityController = TextEditingController();
  final _countryController = TextEditingController();

  FirearmPurpose _purpose = FirearmPurpose.collection;
  FirearmType _type = FirearmType.pistol;
  FirearmAction _action = FirearmAction.semiAutomatic;
  UsageType _usage = UsageType.permitted;
  ConservationState _state = ConservationState.brandNew;

  @override
  void onInit() {
    if (widget.firearm != null) {
      _serialController.text = widget.firearm!.serialNumber;
      _manufacturerController.text = widget.firearm!.manufacturer;
      _modelController.text = widget.firearm!.model;
      _caliberController.text = widget.firearm!.caliber;
      _capacityController.text = widget.firearm!.magazineCapacity.toString();
      _countryController.text = widget.firearm!.manufactureCountry;
      _purpose = widget.firearm!.purpose;
      _type = widget.firearm!.type;
      _action = widget.firearm!.action;
      _usage = widget.firearm!.usageType;
      _state = widget.firearm!.conservationState;
    }
    super.onInit();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final firearm = Firearm(
        id: widget.firearm?.id,
        userId: widget.userId,
        serialNumber: _serialController.text,
        manufacturer: _manufacturerController.text,
        model: _modelController.text,
        caliber: _caliberController.text,
        manufactureCountry: _countryController.text,
        magazineCapacity: int.tryParse(_capacityController.text) ?? 0,
        purpose: _purpose,
        type: _type,
        action: _action,
        usageType: _usage,
        conservationState: _state,
      );
      vm.saveFirearm(firearm);
    }
  }

  @override
  void back() => Navigator.pop(context);

  @override
  void goToForm([Firearm? firearm]) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          (widget.firearm == null ? "firearm.form.title".tr() : "common.edit".tr()).toUpperCase(),
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
                _SectionHeader(title: "Dados de Identificação".toUpperCase()),
                const SizedBox(height: 24),
                DSTextField(
                  label: "firearm.serialNumber".tr(),
                  placeholder: "Número de série gravado",
                  controller: _serialController,
                  validator: (v) => v!.isEmpty ? "common.error".tr() : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: DSTextField(
                        label: "firearm.manufacturer".tr(),
                        placeholder: "Fabricante",
                        controller: _manufacturerController,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DSTextField(
                        label: "País".toUpperCase(),
                        placeholder: "Origem",
                        controller: _countryController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                DSTextField(
                  label: "firearm.model".tr(),
                  placeholder: "Modelo do armamento",
                  controller: _modelController,
                ),
                const SizedBox(height: 32),
                _SectionHeader(title: "Especificações Técnicas".toUpperCase()),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: DSTextField(
                        label: "firearm.caliber".tr(),
                        placeholder: "Ex: 9mm, .40",
                        controller: _caliberController,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DSTextField(
                        label: "CAPACIDADE",
                        placeholder: "Qtd. tiros",
                        controller: _capacityController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildDropdown<FirearmType>(
                  label: "firearm.type".tr(),
                  value: _type,
                  items: FirearmType.values,
                  onChanged: (val) => setState(() => _type = val!),
                  itemLabel: (t) => "enum.firearmType.${t.name}".tr(),
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
