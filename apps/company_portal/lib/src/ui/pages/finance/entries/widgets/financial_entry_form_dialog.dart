import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:company_portal/src/ui/widgets/brutalist_card.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:intl/intl.dart';

class FinancialEntryFormDialog extends StatefulWidget {
  final FinancialEntry? entry;
  final FinancialEntryType initialType;
  final List<BankAccount> accounts;
  final Function(FinancialEntry) onSave;

  const FinancialEntryFormDialog({
    super.key,
    this.entry,
    required this.initialType,
    required this.accounts,
    required this.onSave,
  });

  @override
  State<FinancialEntryFormDialog> createState() =>
      _FinancialEntryFormDialogState();
}

class _FinancialEntryFormDialogState extends State<FinancialEntryFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _descriptionController;
  late final TextEditingController _amountController;
  late DateTime _dueDate;
  late FinancialEntryType _type;
  late FinancialEntryStatus _status;
  UuidValue? _bankAccountId;

  bool get _isEditing => widget.entry != null;
  final _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(
      text: widget.entry?.description,
    );
    _amountController = TextEditingController(
      text: widget.entry?.amount.toString() ?? '0.0',
    );
    _dueDate = widget.entry?.dueDate ?? DateTime.now();
    _type = widget.entry?.type ?? widget.initialType;
    _status = widget.entry?.status ?? FinancialEntryStatus.pending;
    _bankAccountId =
        widget.entry?.bankAccountId ??
        (widget.accounts.isNotEmpty ? widget.accounts.first.id : null);
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => _dueDate = picked);
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate() && _bankAccountId != null) {
      final entry =
          widget.entry?.copyWith(
            description: _descriptionController.text,
            amount: double.tryParse(_amountController.text) ?? 0.0,
            dueDate: _dueDate,
            type: _type,
            status: _status,
            bankAccountId: _bankAccountId!,
          ) ??
          FinancialEntry(
            description: _descriptionController.text,
            amount: double.tryParse(_amountController.text) ?? 0.0,
            dueDate: _dueDate,
            type: _type,
            status: _status,
            originModule: PlatformApp.backoffice_web,
            bankAccountId: _bankAccountId!,
            // invoiceId: const Uuid().v4obj(), // Default/Placeholder ID for invoice if not mandatory
          );
      widget.onSave(entry);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: BrutalistCard(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        backgroundColor: DSTokens.surface,
        borderColor: _type == FinancialEntryType.payable
            ? Colors.orange
            : Colors.blue,
        child: Container(
          width: 500,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _isEditing ? 'EDITAR LANÇAMENTO' : 'NOVO LANÇAMENTO',
                  style: DSTokens.h2,
                ),
                const SizedBox(height: DSTokens.spacingLg),
                _buildTextField(
                  label: 'DESCRIÇÃO',
                  controller: _descriptionController,
                  validator: (v) => v?.isEmpty ?? true ? 'Obrigatório' : null,
                ),
                const SizedBox(height: DSTokens.spacingMd),
                Row(
                  children: [
                    Expanded(
                      child: _buildTextField(
                        label: 'VALOR',
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: DSTokens.spacingMd),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('VENCIMENTO', style: DSTokens.label),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: _selectDate,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: DSTokens.outlineVariant,
                                  width: 2,
                                ),
                                color: Colors.black.withOpacity(0.1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _dateFormat.format(_dueDate),
                                    style: DSTokens.body,
                                  ),
                                  const Icon(
                                    Icons.calendar_today,
                                    size: 16,
                                    color: DSTokens.primary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: DSTokens.spacingMd),
                _buildDropdownField<UuidValue>(
                  label: 'CONTA BANCÁRIA',
                  value: _bankAccountId,
                  items: widget.accounts
                      .map(
                        (e) =>
                            DropdownMenuItem(value: e.id, child: Text(e.name)),
                      )
                      .toList(),
                  onChanged: (v) => setState(() => _bankAccountId = v),
                ),
                const SizedBox(height: DSTokens.spacingMd),
                Row(
                  children: [
                    Expanded(
                      child: _buildDropdownField<FinancialEntryStatus>(
                        label: 'STATUS',
                        value: _status,
                        items: FinancialEntryStatus.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.name.toUpperCase()),
                              ),
                            )
                            .toList(),
                        onChanged: (v) => setState(() => _status = v!),
                      ),
                    ),
                    const SizedBox(width: DSTokens.spacingMd),
                    Expanded(
                      child: _buildDropdownField<FinancialEntryType>(
                        label: 'TIPO',
                        value: _type,
                        items: FinancialEntryType.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.name.toUpperCase()),
                              ),
                            )
                            .toList(),
                        onChanged: (v) => setState(() => _type = v!),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: DSTokens.spacingLg),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('CANCELAR', style: DSTokens.label),
                    ),
                    const SizedBox(width: DSTokens.spacingMd),
                    _buildSubmitButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          style: DSTokens.body,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.1),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: DSTokens.outlineVariant,
                width: 2,
              ),
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: DSTokens.primary, width: 2),
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField<T>({
    required String label,
    required T? value,
    required List<DropdownMenuItem<T>> items,
    required Function(T?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: DSTokens.outlineVariant, width: 2),
            color: Colors.black.withOpacity(0.1),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isExpanded: true,
              dropdownColor: DSTokens.surface,
              style: DSTokens.body,
              items: items,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: _submit,
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: DSTokens.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            _isEditing ? 'SALVAR ALTERAÇÕES' : 'CRIAR LANÇAMENTO',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
