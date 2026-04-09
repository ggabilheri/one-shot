import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:company_portal/src/core/extensions/enum_translations.dart';

class SubscriptionPlanFormDialog extends StatefulWidget {
  final SubscriptionPlan? plan;
  final Function(SubscriptionPlan, bool) onSave;

  const SubscriptionPlanFormDialog({
    super.key,
    this.plan,
    required this.onSave,
  });

  @override
  State<SubscriptionPlanFormDialog> createState() =>
      _SubscriptionPlanFormDialogState();
}

class _SubscriptionPlanFormDialogState
    extends State<SubscriptionPlanFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _unitValueController;
  late TextEditingController _quantityController;

  PlanType _selectedType = PlanType.CAC;
  PlanPeriodicity _selectedPeriodicity = PlanPeriodicity.MONTHLY;
  PlanStatus _selectedStatus = PlanStatus.ACTIVE;

  double get _totalValue =>
      (double.tryParse(_unitValueController.text) ?? 0) *
      (int.tryParse(_quantityController.text) ?? 0);

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.plan?.name);
    _unitValueController = TextEditingController(
      text: widget.plan?.unitValue.toString() ?? '0',
    );
    _quantityController = TextEditingController(
      text: widget.plan?.quantity.toString() ?? '1',
    );

    if (widget.plan != null) {
      _selectedType = widget.plan!.planType;
      _selectedPeriodicity = widget.plan!.periodicity;
      _selectedStatus = widget.plan!.status;
    }

    _unitValueController.addListener(() => setState(() {}));
    _quantityController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _unitValueController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.plan != null;

    return Dialog(
      backgroundColor: DSTokens.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 700,
        padding: const EdgeInsets.all(DSTokens.spacingXl),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                isEditing ? 'EDITAR PLANO' : 'NOVO PLANO DE ASSINATURA',
                style: DSTokens.headline,
              ),
              const SizedBox(height: DSTokens.spacingLg),

              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'NOME DO PLANO'),
                validator: (v) => v?.isEmpty ?? true ? 'Obrigatório' : null,
              ),
              const SizedBox(height: DSTokens.spacingMd),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<PlanType>(
                      value: _selectedType,
                      decoration: const InputDecoration(labelText: 'TIPO'),
                      items: PlanType.values
                          .map(
                            (t) => DropdownMenuItem(
                              value: t,
                              child: Text(t.label),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => setState(() => _selectedType = v!),
                    ),
                  ),
                  const SizedBox(width: DSTokens.spacingMd),
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<PlanPeriodicity>(
                      value: _selectedPeriodicity,
                      decoration: const InputDecoration(
                        labelText: 'PERIODICIDADE',
                      ),
                      items: PlanPeriodicity.values
                          .map(
                            (p) => DropdownMenuItem(
                              value: p,
                              child: Text(p.label),
                            ),
                          )
                          .toList(),
                      onChanged: (v) =>
                          setState(() => _selectedPeriodicity = v!),
                    ),
                  ),
                  // const Expanded(flex: 2, child: SizedBox()),
                ],
              ),
              const SizedBox(height: DSTokens.spacingMd),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      controller: _unitValueController,
                      decoration: const InputDecoration(
                        labelText: 'VALOR UNITÁRIO',
                        prefixText: 'R\$ ',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: DSTokens.spacingLg),
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      controller: _quantityController,
                      decoration: const InputDecoration(
                        labelText: 'QUANTIDADE',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: DSTokens.spacingLg),
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<PlanStatus>(
                      value: _selectedStatus,
                      decoration: const InputDecoration(labelText: 'STATUS'),
                      items: PlanStatus.values
                          .map(
                            (s) => DropdownMenuItem(
                              value: s,
                              child: Text(s.label),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => setState(() => _selectedStatus = v!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: DSTokens.spacingMd),

              Container(
                padding: const EdgeInsets.all(DSTokens.spacingMd),
                decoration: BoxDecoration(
                  color: DSTokens.surfaceContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'VALOR TOTAL:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'R\$ ${_totalValue.toStringAsFixed(2)}',
                      style: DSTokens.headline.copyWith(
                        color: DSTokens.success,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: DSTokens.spacingMd),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('CANCELAR'),
                  ),
                  const SizedBox(width: DSTokens.spacingMd),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final plan = SubscriptionPlan(
                          id: widget.plan?.id,
                          name: _nameController.text,
                          planType: _selectedType,
                          periodicity: _selectedPeriodicity,
                          unitValue:
                              double.tryParse(_unitValueController.text) ?? 0,
                          quantity: int.tryParse(_quantityController.text) ?? 0,
                          totalValue: _totalValue,
                          status: _selectedStatus,
                        );
                        widget.onSave(plan, isEditing);
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DSTokens.primary,
                    ),
                    child: const Text(
                      'SALVAR PLANO',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
