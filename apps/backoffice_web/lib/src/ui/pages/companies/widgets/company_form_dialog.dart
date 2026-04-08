import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/dialogs/user_search_dialog.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uuid/uuid.dart';
import 'company_form_input_field.dart';
import 'company_owner_selector.dart';

class CompanyFormDialog extends StatefulWidget {
  final ICompaniesViewmodel vm;
  final Company? company;

  const CompanyFormDialog({super.key, required this.vm, this.company});

  @override
  State<CompanyFormDialog> createState() => _CompanyFormDialogState();
}

class _CompanyFormDialogState extends State<CompanyFormDialog> {
  late TextEditingController _nameController;
  late TextEditingController _cnpjController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  late TextEditingController _zipCodeController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _streetController;
  late TextEditingController _numberController;
  late TextEditingController _complementController;
  late TextEditingController _neighborhoodController;

  late FocusNode _zipCodeFocusNode;
  late MaskTextInputFormatter _cnpjMask;
  late MaskTextInputFormatter _phoneMask;
  late MaskTextInputFormatter _zipCodeMask;
  UserProfile? _selectedOwner;
  CompanyType _selectedType = CompanyType.club;

  bool _isSaving = false;

  bool get isEditing => widget.company != null;

  @override
  void initState() {
    super.initState();
    _cnpjMask = MaskTextInputFormatter(
      mask: '##.###.###/####-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    _phoneMask = MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
    );
    _zipCodeMask = MaskTextInputFormatter(
      mask: '#####-###',
      filter: {"#": RegExp(r'[0-9]')},
    );

    _nameController = TextEditingController(text: widget.company?.name ?? '');
    _cnpjController = TextEditingController(
      text: _cnpjMask.maskText(widget.company?.cnpj ?? ''),
    );
    _phoneController = TextEditingController(
      text: _phoneMask.maskText(widget.company?.phoneNumber ?? ''),
    );
    _emailController = TextEditingController(text: widget.company?.email ?? '');

    _zipCodeController = TextEditingController(
      text: _zipCodeMask.maskText(widget.company?.address?.zipCode ?? ''),
    );
    _cityController = TextEditingController(
      text: widget.company?.address?.city ?? '',
    );
    _stateController = TextEditingController(
      text: widget.company?.address?.state ?? '',
    );
    _streetController = TextEditingController(
      text: widget.company?.address?.street ?? '',
    );
    _numberController = TextEditingController(
      text: widget.company?.address?.number ?? '',
    );
    _complementController = TextEditingController(
      text: widget.company?.address?.complement ?? '',
    );
    _neighborhoodController = TextEditingController(
      text: widget.company?.address?.neighborhood ?? '',
    );

    _selectedType = widget.company?.type ?? CompanyType.club;

    _zipCodeFocusNode = FocusNode();
    _zipCodeFocusNode.addListener(_onZipCodeFocusChange);

    if (isEditing && widget.company?.ownerId != null) {
      _loadOwner();
    }
  }

  Future<void> _loadOwner() async {
    final owner = await widget.vm.getUserById(
      widget.company!.ownerId.toString(),
    );
    if (mounted) {
      setState(() => _selectedOwner = owner);
    }
  }

  void _onZipCodeFocusChange() {
    if (!_zipCodeFocusNode.hasFocus) {
      final zipCode = _zipCodeController.text.replaceAll(RegExp(r'\D'), '');
      if (zipCode.length == 8) {
        _searchCep(zipCode);
      }
    }
  }

  Future<void> _searchCep(String cep) async {
    try {
      final address = await widget.vm.getAddressByCep(cep);
      if (address != null && mounted) {
        setState(() {
          _cityController.text = address.city;
          _stateController.text = address.state;
          _streetController.text = address.street;
          _neighborhoodController.text = address.neighborhood;
          _complementController.text = address.complement ?? '';
        });
      }
    } catch (e) {
      debugPrint('Error fetch Cep: $e');
    }
  }

  @override
  void dispose() {
    _zipCodeFocusNode.dispose();
    _nameController.dispose();
    _cnpjController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _zipCodeController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _streetController.dispose();
    _numberController.dispose();
    _complementController.dispose();
    _neighborhoodController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);

    try {
      final String clearCnpj = _cnpjController.text.replaceAll(
        RegExp(r'\D'),
        '',
      );
      final String clearPhone = _phoneController.text.replaceAll(
        RegExp(r'\D'),
        '',
      );
      final String clearZipCode = _zipCodeController.text.replaceAll(
        RegExp(r'\D'),
        '',
      );

      final Address currentAddress =
          widget.company?.address ??
          Address(
            id: const Uuid().v4obj(),
            street: '',
            number: '',
            neighborhood: '',
            city: '',
            state: '',
            zipCode: clearZipCode,
          );

      currentAddress.city = _cityController.text.trim();
      currentAddress.state = _stateController.text.trim();
      currentAddress.street = _streetController.text.trim();
      currentAddress.number = _numberController.text.trim();
      currentAddress.complement = _complementController.text.trim();
      currentAddress.neighborhood = _neighborhoodController.text.trim();
      currentAddress.zipCode = clearZipCode;

      final companyData = Company(
        id: isEditing ? widget.company!.id : const Uuid().v4obj(),
        addressId: isEditing
            ? widget.company?.addressId ?? currentAddress.id
            : currentAddress.id,
        ownerId: _selectedOwner?.id,
        name: _nameController.text.trim(),
        cnpj: clearCnpj,
        type: _selectedType,
        phoneNumber: clearPhone.isNotEmpty ? clearPhone : null,
        email: _emailController.text.trim().isNotEmpty
            ? _emailController.text.trim()
            : null,
        address: currentAddress,
        active: widget.company?.active ?? true,
      );

      await widget.vm.saveCompany(companyData, isEditing: isEditing);

      if (mounted) {
        Navigator.of(context).pop();
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            color: DSTokens.surface,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
                  ),
                  color: DSTokens.background,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isEditing ? 'EDITAR EMPRESA' : 'NOVA EMPRESA',
                      style: DSTokens.headline.copyWith(fontSize: 18),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.close, color: DSTokens.outline),
                      ),
                    ),
                  ],
                ),
              ),

              // Body Fields
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CompanyFormInputField(
                        label: 'NOME DA EMPRESA',
                        hint: 'Ex: OneShot Solutions...',
                        controller: _nameController,
                      ),
                      const SizedBox(height: DSTokens.spacingMd),

                      // Tipo de Empresa
                      Text('TIPO DE EMPRESA', style: DSTokens.label),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: DSTokens.background,
                          border: Border.all(
                            color: DSTokens.surfaceContainerHigh,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<CompanyType>(
                            value: _selectedType,
                            dropdownColor: DSTokens.surface,
                            isExpanded: true,
                            items: CompanyType.values.map((type) {
                              return DropdownMenuItem(
                                value: type,
                                child: Text(type.name.toUpperCase()),
                              );
                            }).toList(),
                            onChanged: (val) {
                              if (val != null)
                                setState(() => _selectedType = val);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: DSTokens.spacingMd),

                      Row(
                        children: [
                          Expanded(
                            child: CompanyFormInputField(
                              label: 'CNPJ',
                              hint: '00.000.000/0000-00',
                              controller: _cnpjController,
                              inputFormatters: [_cnpjMask],
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            child: CompanyFormInputField(
                              label: 'TELEFONE',
                              hint: '+55 ...',
                              controller: _phoneController,
                              inputFormatters: [_phoneMask],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      CompanyFormInputField(
                        label: 'EMAIL DE CONTATO',
                        hint: 'admin@empresa.com',
                        controller: _emailController,
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      CompanyOwnerSelector(
                        selectedOwner: _selectedOwner,
                        onSearch: _showUserSearch,
                      ),
                      const SizedBox(height: DSTokens.spacingLg),
                      Text(
                        'ENDEREÇO DA EMPRESA',
                        style: DSTokens.label.copyWith(color: DSTokens.outline),
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CompanyFormInputField(
                              label: 'CEP',
                              hint: '00000-000',
                              controller: _zipCodeController,
                              focusNode: _zipCodeFocusNode,
                              inputFormatters: [_zipCodeMask],
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 5,
                            child: CompanyFormInputField(
                              label: 'CIDADE',
                              hint: 'Cidade',
                              controller: _cityController,
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 2,
                            child: CompanyFormInputField(
                              label: 'UF',
                              hint: 'UF',
                              controller: _stateController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      CompanyFormInputField(
                        label: 'LOGRADOURO (RUA/AV)',
                        hint: 'Rua...',
                        controller: _streetController,
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CompanyFormInputField(
                              label: 'NÚMERO',
                              hint: 'Nr',
                              controller: _numberController,
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 3,
                            child: CompanyFormInputField(
                              label: 'COMPLEMENTO',
                              hint: 'Compl.',
                              controller: _complementController,
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 4,
                            child: CompanyFormInputField(
                              label: 'BAIRRO',
                              hint: 'Bairro',
                              controller: _neighborhoodController,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Footer Actions
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: DSTokens.surfaceContainerHigh),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: _isSaving
                          ? null
                          : () => Navigator.of(context).pop(),
                      child: Text(
                        'CANCELAR',
                        style: DSTokens.label.copyWith(color: DSTokens.outline),
                      ),
                    ),
                    const SizedBox(width: DSTokens.spacingMd),
                    ElevatedButton(
                      onPressed: _isSaving ? null : _save,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: DSTokens.primary,
                        foregroundColor: DSTokens.onPrimary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                      ),
                      child: _isSaving
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                color: DSTokens.onPrimary,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              'SALVAR REGISTRO',
                              style: DSTokens.label.copyWith(
                                color: DSTokens.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showUserSearch() {
    showDialog(
      context: context,
      builder: (context) => UserSearchDialog(
        onSearch: (query) => widget.vm.searchUsers(query),
        onSelect: (user) {
          setState(() => _selectedOwner = user);
        },
      ),
    );
  }
}
