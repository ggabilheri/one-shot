import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:backoffice_web/src/core/utils/l10n_extension.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_dropdown.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'bank_account_input_field.dart';
import 'bank_account_submit_button.dart';
import 'bank_search_dialog.dart';

class BankAccountFormDialog extends StatefulWidget {
  final BankAccount? account;
  final Function(BankAccount) onSave;
  final Future<List<Bank>> Function(String) onSearchBanks;

  const BankAccountFormDialog({
    super.key,
    this.account,
    required this.onSave,
    required this.onSearchBanks,
  });

  @override
  State<BankAccountFormDialog> createState() => _BankAccountFormDialogState();
}

class _BankAccountFormDialogState extends State<BankAccountFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _bankNameController;
  late final TextEditingController _agencyController;
  late final TextEditingController _agencyDigitController;
  late final TextEditingController _accountNumberController;
  late final TextEditingController _accountDigitController;
  late final TextEditingController _balanceController;
  late final TextEditingController _pixKeyController;
  late String _status;
  PixKeyType? _pixKeyType;

  bool get _isEditing => widget.account != null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.account?.name);
    _bankNameController = TextEditingController(text: widget.account?.bankName);
    _agencyController = TextEditingController(text: widget.account?.agency);
    _agencyDigitController = TextEditingController(
      text: widget.account?.agencyDigit,
    );
    _accountNumberController = TextEditingController(
      text: widget.account?.accountNumber,
    );
    _accountDigitController = TextEditingController(
      text: widget.account?.accountDigit,
    );
    _balanceController = TextEditingController(
      text: widget.account?.balance.toString() ?? '0.0',
    );
    _status = widget.account?.status ?? 'ACTIVE';
    _pixKeyType = widget.account?.pixKeyType;

    final initialPixKey = widget.account?.pixKey ?? '';
    final formatter = _getPixKeyFormatter(_pixKeyType);
    final formattedPixKey = formatter != null
        ? formatter.maskText(
            _pixKeyType == PixKeyType.aleatoria
                ? initialPixKey.replaceAll('-', '')
                : initialPixKey.replaceAll(RegExp(r'[^0-9]'), ''),
          )
        : initialPixKey;
    _pixKeyController = TextEditingController(text: formattedPixKey);
  }

  MaskTextInputFormatter? _getPixKeyFormatter(PixKeyType? type) {
    if (type == null) return null;
    switch (type) {
      case PixKeyType.cpf:
        return MaskTextInputFormatter(
          mask: '###.###.###-##',
          filter: {"#": RegExp(r'[0-9]')},
        );
      case PixKeyType.cnpj:
        return MaskTextInputFormatter(
          mask: '##.###.###/####-##',
          filter: {"#": RegExp(r'[0-9]')},
        );
      case PixKeyType.telefone:
        return MaskTextInputFormatter(
          mask: '(##) #####-####',
          filter: {"#": RegExp(r'[0-9]')},
        );
      case PixKeyType.aleatoria:
        return MaskTextInputFormatter(
          mask: '########-####-####-####-############',
          filter: {"#": RegExp(r'[a-zA-Z0-9]')},
        );
      case PixKeyType.email:
        return null;
    }
  }

  TextInputType _getPixKeyKeyboardType(PixKeyType? type) {
    switch (type) {
      case PixKeyType.cpf:
      case PixKeyType.cnpj:
        return TextInputType.number;
      case PixKeyType.telefone:
        return TextInputType.phone;
      case PixKeyType.email:
        return TextInputType.emailAddress;
      case PixKeyType.aleatoria:
      case null:
        return TextInputType.text;
    }
  }

  String? _getPixKeyHint(PixKeyType? type) {
    switch (type) {
      case PixKeyType.cpf:
        return '000.000.000-00';
      case PixKeyType.cnpj:
        return '00.000.000/0000-00';
      case PixKeyType.telefone:
        return '(00) 00000-0000';
      case PixKeyType.email:
        return 'exemplo@dominio.com';
      case PixKeyType.aleatoria:
        return '00000000-0000-0000-0000-000000000000';
      case null:
        return null;
    }
  }

  void _onPixKeyTypeChanged(PixKeyType? newType) {
    setState(() {
      _pixKeyType = newType;
      final formatter = _getPixKeyFormatter(newType);
      if (formatter != null) {
        final rawText = newType == PixKeyType.aleatoria
            ? _pixKeyController.text.replaceAll('-', '')
            : _pixKeyController.text.replaceAll(RegExp(r'[^0-9]'), '');
        final maskedText = formatter.maskText(rawText);
        _pixKeyController.value = TextEditingValue(
          text: maskedText,
          selection: TextSelection.collapsed(offset: maskedText.length),
        );
      }
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bankNameController.dispose();
    _agencyController.dispose();
    _agencyDigitController.dispose();
    _accountNumberController.dispose();
    _accountDigitController.dispose();
    _balanceController.dispose();
    _pixKeyController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final account =
          widget.account?.copyWith(
            name: _nameController.text,
            bankName: _bankNameController.text,
            agency: _agencyController.text,
            agencyDigit: _agencyDigitController.text,
            accountNumber: _accountNumberController.text,
            accountDigit: _accountDigitController.text,
            balance: double.tryParse(_balanceController.text) ?? 0.0,
            status: _status,
            pixKey: _pixKeyController.text.isEmpty
                ? null
                : _pixKeyController.text,
            pixKeyType: _pixKeyType,
          ) ??
          BankAccount(
            name: _nameController.text,
            bankName: _bankNameController.text,
            agency: _agencyController.text,
            agencyDigit: _agencyDigitController.text,
            accountNumber: _accountNumberController.text,
            accountDigit: _accountDigitController.text,
            balance: double.tryParse(_balanceController.text) ?? 0.0,
            status: _status,
            originModule: 'BACKOFFICE',
            pixKey: _pixKeyController.text.isEmpty
                ? null
                : _pixKeyController.text,
            pixKeyType: _pixKeyType,
          );

      widget.onSave(account);
      Navigator.pop(context);
    }
  }

  Future<void> _openBankSearch() async {
    final selectedBank = await showDialog<Bank>(
      context: context,
      builder: (context) => BankSearchDialog(onSearch: widget.onSearchBanks),
    );

    if (selectedBank != null) {
      setState(() {
        _bankNameController.text = selectedBank.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: BrutalistCard(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        backgroundColor: DSTokens.surface,
        borderColor: DSTokens.primary,
        child: SizedBox(
          width: 600,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _isEditing
                        ? l10n.bankAccountEditTitle.toUpperCase()
                        : l10n.bankAccountNewTitle.toUpperCase(),
                    style: DSTokens.h2,
                  ),
                  const SizedBox(height: DSTokens.spacingLg),
                  BankAccountInputField(
                    label: l10n.bankAccountNameLabel.toUpperCase(),
                    controller: _nameController,
                    validator: (v) =>
                        v?.isEmpty ?? true ? l10n.commonRequired : null,
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: BankAccountInputField(
                          label: l10n.bankAccountBankLabel.toUpperCase(),
                          controller: _bankNameController,
                          readOnly: true,
                          onTap: _openBankSearch,
                          validator: (v) =>
                              v?.isEmpty ?? true ? l10n.commonRequired : null,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingMd),
                      Expanded(
                        flex: 2,
                        child: DSDropdown<String>.fromValues(
                          label: l10n.bankAccountStatusLabel.toUpperCase(),
                          value: _status,
                          values: const ['ACTIVE', 'INACTIVE'],
                          labelBuilder: (s) =>
                              l10n.formatBankAccountStatus(s).toUpperCase(),
                          onChanged: (v) {
                            if (v != null) setState(() => _status = v);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: BankAccountInputField(
                          label: l10n.bankAccountAgencyLabel.toUpperCase(),
                          controller: _agencyController,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingSm),
                      Expanded(
                        flex: 1,
                        child: BankAccountInputField(
                          label:
                              l10n.bankAccountAgencyDigitLabel.toUpperCase(),
                          controller: _agencyDigitController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: BankAccountInputField(
                          label:
                              l10n.bankAccountAccountNumberLabel.toUpperCase(),
                          controller: _accountNumberController,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingSm),
                      Expanded(
                        flex: 1,
                        child: BankAccountInputField(
                          label:
                              l10n.bankAccountAccountDigitLabel.toUpperCase(),
                          controller: _accountDigitController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  BankAccountInputField(
                    label: l10n.bankAccountBalanceLabel.toUpperCase(),
                    controller: _balanceController,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: DSDropdown<PixKeyType?>.fromValues(
                          label:
                              l10n.bankAccountPixKeyTypeLabel.toUpperCase(),
                          value: _pixKeyType,
                          values: [null, ...PixKeyType.values],
                          labelBuilder: (t) => t == null
                              ? '--'
                              : l10n.pixKeyTypeLabel(t).toUpperCase(),
                          onChanged: _onPixKeyTypeChanged,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingMd),
                      Expanded(
                        flex: 3,
                        child: BankAccountInputField(
                          key: ValueKey(_pixKeyType),
                          label: l10n.bankAccountPixKeyLabel.toUpperCase(),
                          controller: _pixKeyController,
                          keyboardType: _getPixKeyKeyboardType(_pixKeyType),
                          hintText: _getPixKeyHint(_pixKeyType),
                          inputFormatters: _getPixKeyFormatter(_pixKeyType) != null
                              ? [_getPixKeyFormatter(_pixKeyType)!]
                              : null,
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
                        child: Text(
                          l10n.commonCancel.toUpperCase(),
                          style: DSTokens.label,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingMd),
                      BankAccountSubmitButton(
                        label: _isEditing
                            ? l10n.bankAccountSaveAccount
                            : l10n.bankAccountCreateAccount,
                        onTap: _submit,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
