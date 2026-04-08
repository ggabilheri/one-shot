import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/dialogs/user_search_dialog.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ClubFormDialog extends StatefulWidget {
  final IClubsViewmodel vm;
  final Club? club; // Será passado null no 'Novo', e a instancia no 'Edit'

  const ClubFormDialog({super.key, required this.vm, this.club});

  @override
  State<ClubFormDialog> createState() => _ClubFormDialogState();
}

class _ClubFormDialogState extends State<ClubFormDialog> {
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

  bool _isSaving = false;

  bool get isEditing => widget.club != null;

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

    _nameController = TextEditingController(text: widget.club?.name ?? '');
    _cnpjController = TextEditingController(
      text: _cnpjMask.maskText(widget.club?.cnpj ?? ''),
    );
    _phoneController = TextEditingController(
      text: _phoneMask.maskText(widget.club?.phoneNumber ?? ''),
    );
    _emailController = TextEditingController(text: widget.club?.email ?? '');

    _zipCodeController = TextEditingController(
      text: _zipCodeMask.maskText(widget.club?.address?.zipCode ?? ''),
    );
    _cityController = TextEditingController(
      text: widget.club?.address?.city ?? '',
    );
    _stateController = TextEditingController(
      text: widget.club?.address?.state ?? '',
    );
    _streetController = TextEditingController(
      text: widget.club?.address?.street ?? '',
    );
    _numberController = TextEditingController(
      text: widget.club?.address?.number ?? '',
    );
    _complementController = TextEditingController(
      text: widget.club?.address?.complement ?? '',
    );
    _neighborhoodController = TextEditingController(
      text: widget.club?.address?.neighborhood ?? '',
    );

    _zipCodeFocusNode = FocusNode();
    _zipCodeFocusNode.addListener(_onZipCodeFocusChange);

    if (isEditing && widget.club?.ownerId != null) {
      _loadOwner();
    }
  }

  Future<void> _loadOwner() async {
    final owner = await widget.vm.getUserById(widget.club!.ownerId.toString());
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
      debugPrint('Error fetch Cep: \$e');
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
          widget.club?.address ??
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

      final clubData = Club(
        id: isEditing ? widget.club!.id : const Uuid().v4obj(),
        addressId: isEditing
            ? widget.club?.addressId ?? currentAddress.id
            : currentAddress.id,
        ownerId: _selectedOwner?.id,
        name: _nameController.text.trim(),
        cnpj: clearCnpj,
        phoneNumber: clearPhone.isNotEmpty ? clearPhone : null,
        email: _emailController.text.trim().isNotEmpty
            ? _emailController.text.trim()
            : null,
        address: currentAddress,
        active: widget.club?.active ?? true,
      );

      await widget.vm.saveClub(clubData, isEditing: isEditing);

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
                      isEditing ? 'EDITAR CLUBE' : 'NOVO CLUBE',
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
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInputField(
                      'NOME DA ENTIDADE',
                      'Ex: Clube de Tiro ...',
                      _nameController,
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    Row(
                      children: [
                        Expanded(
                          child: _buildInputField(
                            'CNPJ',
                            '00.000.000/0000-00',
                            _cnpjController,
                            inputFormatters: [_cnpjMask],
                          ),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        Expanded(
                          child: _buildInputField(
                            'TELEFONE',
                            '+55 ...',
                            _phoneController,
                            inputFormatters: [_phoneMask],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    _buildInputField(
                      'EMAIL DE CONTATO',
                      'admin@clube.com',
                      _emailController,
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    _buildOwnerSelector(),
                    const SizedBox(height: DSTokens.spacingLg),
                    Text(
                      'ENDEREÇO DA ENTIDADE',
                      style: DSTokens.label.copyWith(color: DSTokens.outline),
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: _buildInputField(
                            'CEP',
                            '00000-000',
                            _zipCodeController,
                            focusNode: _zipCodeFocusNode,
                            inputFormatters: [_zipCodeMask],
                          ),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        Expanded(
                          flex: 5,
                          child: _buildInputField(
                            'CIDADE',
                            'Cidade',
                            _cityController,
                          ),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        Expanded(
                          flex: 2,
                          child: _buildInputField('UF', 'UF', _stateController),
                        ),
                      ],
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    _buildInputField(
                      'LOGRADOURO (RUA/AV)',
                      'Rua...',
                      _streetController,
                    ),
                    const SizedBox(height: DSTokens.spacingMd),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: _buildInputField(
                            'NÚMERO',
                            'Nr',
                            _numberController,
                          ),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        Expanded(
                          flex: 3,
                          child: _buildInputField(
                            'COMPLEMENTO',
                            'Compl.',
                            _complementController,
                          ),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        Expanded(
                          flex: 4,
                          child: _buildInputField(
                            'BAIRRO',
                            'Bairro',
                            _neighborhoodController,
                          ),
                        ),
                      ],
                    ),
                  ],
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

  Widget _buildOwnerSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('PROPRIETÁRIO / RESPONSÁVEL', style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _selectedOwner?.name ?? 'NENHUM PROPRIETÁRIO SELECIONADO',
                      style: DSTokens.body.copyWith(
                        color: _selectedOwner != null
                            ? DSTokens.highlight
                            : DSTokens.outline,
                        fontWeight: _selectedOwner != null
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (_selectedOwner != null)
                      Text(
                        'CPF: ${_selectedOwner?.cpf ?? "N/A"}',
                        style: DSTokens.label.copyWith(color: DSTokens.outline),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _showUserSearch,
                style: ElevatedButton.styleFrom(
                  backgroundColor: DSTokens.surfaceContainerHigh,
                  foregroundColor: DSTokens.highlight,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('BUSCAR'),
              ),
            ],
          ),
        ),
      ],
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

  Widget _buildInputField(
    String label,
    String hint,
    TextEditingController controller, {
    FocusNode? focusNode,
    List<MaskTextInputFormatter>? inputFormatters,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DSTokens.label),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: DSTokens.background,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
          ),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            inputFormatters: inputFormatters,
            style: DSTokens.body.copyWith(color: DSTokens.highlight),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
            ),
          ),
        ),
      ],
    );
  }
}
