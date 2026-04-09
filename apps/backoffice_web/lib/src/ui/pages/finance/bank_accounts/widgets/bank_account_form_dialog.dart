import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:oneshot_client/oneshot_client.dart';

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
    _pixKeyController = TextEditingController(text: widget.account?.pixKey);
    _status = widget.account?.status ?? 'ACTIVE';
    _pixKeyType = widget.account?.pixKeyType;
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
            pixKey: _pixKeyController.text.isEmpty ? null : _pixKeyController.text,
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
            pixKey: _pixKeyController.text.isEmpty ? null : _pixKeyController.text,
            pixKeyType: _pixKeyType,
          );
      widget.onSave(account);
      Navigator.pop(context);
    }
  }

  Future<void> _openBankSearch() async {
    final selectedBank = await showDialog<Bank>(
      context: context,
      builder: (context) => _BankSearchDialog(onSearch: widget.onSearchBanks),
    );

    if (selectedBank != null) {
      setState(() {
        _bankNameController.text = selectedBank.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                    _isEditing ? 'EDITAR CONTA' : 'NOVA CONTA',
                    style: DSTokens.h2,
                  ),
                  const SizedBox(height: DSTokens.spacingLg),
                  _buildTextField(
                    label: 'NOME DA CONTA (APELIDO)',
                    controller: _nameController,
                    validator: (v) => v?.isEmpty ?? true ? 'Obrigatório' : null,
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 3,
                        child: _buildTextField(
                          label: 'BANCO',
                          controller: _bankNameController,
                          readOnly: true,
                          onTap: _openBankSearch,
                          validator: (v) =>
                              v?.isEmpty ?? true ? 'Obrigatório' : null,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingMd),
                      Expanded(
                        flex: 2,
                        child: _buildTextField(
                          label: 'STATUS',
                          isDropdown: true,
                          dropdownValue: _status,
                          items: ['ACTIVE', 'INACTIVE'],
                          onChanged: (v) => setState(() => _status = v!),
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
                        child: _buildTextField(
                          label: 'AGÊNCIA',
                          controller: _agencyController,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingSm),
                      Expanded(
                        flex: 1,
                        child: _buildTextField(
                          label: 'DÍG.',
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
                        child: _buildTextField(
                          label: 'CONTA',
                          controller: _accountNumberController,
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingSm),
                      Expanded(
                        flex: 1,
                        child: _buildTextField(
                          label: 'DÍG.',
                          controller: _accountDigitController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  _buildTextField(
                    label: 'SALDO ATUAL',
                    controller: _balanceController,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: DSTokens.spacingMd),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: _buildTextField(
                          label: 'TIPO CHAVE PIX',
                          isDropdown: true,
                          dropdownValue: _pixKeyType?.name,
                          items: PixKeyType.values.map((e) => e.name).toList(),
                          onChanged: (v) => setState(() => _pixKeyType = PixKeyType.values.byName(v!)),
                        ),
                      ),
                      const SizedBox(width: DSTokens.spacingMd),
                      Expanded(
                        flex: 3,
                        child: _buildTextField(
                          label: 'CHAVE PIX',
                          controller: _pixKeyController,
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
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    bool isDropdown = false,
    String? dropdownValue,
    List<String>? items,
    Function(String?)? onChanged,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        if (isDropdown)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: DSTokens.outlineVariant, width: 2),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                dropdownColor: DSTokens.surface,
                style: DSTokens.body,
                items: items!
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          )
        else
          TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: keyboardType,
            readOnly: readOnly,
            onTap: onTap,
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

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: _submit,
      child: BrutalistCard(
        padding: EdgeInsets.zero,
        backgroundColor: DSTokens.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            _isEditing ? 'SALVAR ALTERAÇÕES' : 'CRIAR CONTA',
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

class _BankSearchDialog extends StatefulWidget {
  final Future<List<Bank>> Function(String) onSearch;

  const _BankSearchDialog({required this.onSearch});

  @override
  State<_BankSearchDialog> createState() => _BankSearchDialogState();
}

class _BankSearchDialogState extends State<_BankSearchDialog> {
  final _searchController = TextEditingController();
  List<Bank> _banks = [];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _performSearch('');
  }

  Future<void> _performSearch(String query) async {
    setState(() => _loading = true);
    try {
      final results = await widget.onSearch(query);
      setState(() => _banks = results);
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: BrutalistCard(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        backgroundColor: DSTokens.surface,
        borderColor: DSTokens.primary,
        child: SizedBox(
          width: 400,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BUSCAR BANCO', style: DSTokens.h2),
              const SizedBox(height: DSTokens.spacingMd),
              TextField(
                controller: _searchController,
                style: DSTokens.body,
                decoration: InputDecoration(
                  hintText: 'Digite o nome ou código...',
                  prefixIcon: const Icon(Icons.search, color: DSTokens.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: DSTokens.outlineVariant,
                      width: 2,
                    ),
                  ),
                ),
                onChanged: _performSearch,
              ),
              const SizedBox(height: DSTokens.spacingMd),
              Expanded(
                child: _loading
                    ? const Center(child: CircularProgressIndicator())
                    : _banks.isEmpty
                    ? const Center(child: Text('Nenhum banco encontrado'))
                    : ListView.separated(
                        itemCount: _banks.length,
                        separatorBuilder: (_, __) => const Divider(),
                        itemBuilder: (context, index) {
                          final bank = _banks[index];
                          return ListTile(
                            title: Text(bank.name, style: DSTokens.body),
                            subtitle: Text(
                              'Código: ${bank.code}',
                              style: DSTokens.label,
                            ),
                            onTap: () => Navigator.pop(context, bank),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
