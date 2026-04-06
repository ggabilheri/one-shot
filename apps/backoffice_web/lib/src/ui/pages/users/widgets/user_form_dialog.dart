import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uuid/uuid.dart';

class UserFormDialog extends StatefulWidget {
  final IUsersViewmodel vm;
  final UserProfile? user;

  const UserFormDialog({super.key, required this.vm, this.user});

  @override
  State<UserFormDialog> createState() => _UserFormDialogState();
}

class _UserFormDialogState extends State<UserFormDialog> {
  late TextEditingController _nameController;
  late TextEditingController _cpfController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;

  late TextEditingController _rgController;
  late TextEditingController _zipCodeController;
  late TextEditingController _birthDateController;
  late TextEditingController _streetController;
  late TextEditingController _numberController;
  late TextEditingController _complementController;
  late TextEditingController _neighborhoodController;

  late FocusNode _zipCodeFocusNode;

  late MaskTextInputFormatter _cpfMask;
  late MaskTextInputFormatter _phoneMask;
  late MaskTextInputFormatter _zipCodeMask;
  late MaskTextInputFormatter _dateMask;

  Gender _selectedGender = Gender.other;
  UserStatus _selectedStatus = UserStatus.active;
  List<UserType> _selectedTypes = [];
  List<SecurityRole> _selectedRoles = [];

  bool _isSaving = false;

  bool get isEditing => widget.user != null;

  @override
  void initState() {
    super.initState();
    _initRoles();
    _cpfMask = MaskTextInputFormatter(
      mask: '###.###.###-##',
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
    _dateMask = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
    );

    _nameController = TextEditingController(text: widget.user?.name ?? '');

    var initialCpf = widget.user?.cpf ?? '';
    _cpfController = TextEditingController(text: _cpfMask.maskText(initialCpf));

    var initialPhone = widget.user?.phone ?? '';
    _phoneController = TextEditingController(
      text: _phoneMask.maskText(initialPhone),
    );

    _emailController = TextEditingController(text: widget.user?.email ?? '');

    String formattedDate = '';
    if (widget.user != null && widget.user!.birthDate != null) {
      final bDate = widget.user!.birthDate!;
      final d = bDate.day.toString().padLeft(2, '0');
      final m = bDate.month.toString().padLeft(2, '0');
      final y = bDate.year.toString().padLeft(4, '0');
      formattedDate = '$d$m$y';
    }

    _cityController = TextEditingController(
      text: widget.user?.address?.city ?? '',
    );
    _stateController = TextEditingController(
      text: widget.user?.address?.state ?? '',
    );
    _rgController = TextEditingController(text: widget.user?.rg ?? '');
    _birthDateController = TextEditingController(
      text: _dateMask.maskText(formattedDate),
    );
    _zipCodeController = TextEditingController(
      text: _zipCodeMask.maskText(widget.user?.address?.zipCode ?? ''),
    );
    _streetController = TextEditingController(
      text: widget.user?.address?.street ?? '',
    );
    _numberController = TextEditingController(
      text: widget.user?.address?.number ?? '',
    );
    _complementController = TextEditingController(
      text: widget.user?.address?.complement ?? '',
    );
    _neighborhoodController = TextEditingController(
      text: widget.user?.address?.neighborhood ?? '',
    );

    _zipCodeFocusNode = FocusNode();
    _zipCodeFocusNode.addListener(_onZipCodeFocusChange);

    if (widget.user != null) {
      if (widget.user!.gender != null) {
        _selectedGender = widget.user!.gender!;
      }
      _selectedStatus = widget.user!.status;
      if (widget.user!.types != null) {
        _selectedTypes = List.from(widget.user!.types!);
      }
    }

    if (_selectedTypes.isEmpty) {
      _selectedTypes.add(UserType.shooter);
    }
  }

  Future<void> _initRoles() async {
    if (isEditing) {
      final roles = await widget.vm.getUserRoles(widget.user!.id.toString());
      if (mounted) {
        setState(() {
          _selectedRoles = roles;
        });
      }
    }
  }

  void _onZipCodeFocusChange() {
    if (!_zipCodeFocusNode.hasFocus) {
      _searchCep();
    }
  }

  Future<void> _searchCep() async {
    final cepRaw = _zipCodeMask.getUnmaskedText();
    if (cepRaw.length == 8) {
      final address = await widget.vm.getAddressByCep(cepRaw);
      if (address != null && mounted) {
        setState(() {
          _cityController.text = address.city;
          _stateController.text = address.state;
          _streetController.text = address.street;
          _neighborhoodController.text = address.neighborhood;
          _complementController.text = address.complement ?? '';
        });
      }
    }
  }

  @override
  void dispose() {
    _zipCodeFocusNode.removeListener(_onZipCodeFocusChange);
    _zipCodeFocusNode.dispose();
    _nameController.dispose();
    _cpfController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _rgController.dispose();
    _birthDateController.dispose();
    _zipCodeController.dispose();
    _streetController.dispose();
    _numberController.dispose();
    _complementController.dispose();
    _neighborhoodController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);

    try {
      final String clearCpf = _cpfController.text.replaceAll(RegExp(r'\D'), '');
      final String clearPhone = _phoneController.text.replaceAll(
        RegExp(r'\D'),
        '',
      );
      final String clearZipCode = _zipCodeController.text.replaceAll(
        RegExp(r'\D'),
        '',
      );

      DateTime? parsedBirthDate;
      try {
        final dateStr = _birthDateController.text; // "DD/MM/YYYY"
        if (dateStr.length == 10) {
          final parts = dateStr.split('/');
          parsedBirthDate = DateTime(
            int.parse(parts[2]),
            int.parse(parts[1]),
            int.parse(parts[0]),
          );
        }
      } catch (_) {}

      final Address currentAddress =
          widget.user?.address ??
          Address(
            id: const Uuid().v4obj(),
            street: '',
            number: '',
            neighborhood: '',
            city: '',
            state: '',
            zipCode: '',
          );

      currentAddress.city = _cityController.text.trim();
      currentAddress.state = _stateController.text.trim();
      currentAddress.street = _streetController.text.trim();
      currentAddress.number = _numberController.text.trim();
      currentAddress.complement = _complementController.text.trim();
      currentAddress.neighborhood = _neighborhoodController.text.trim();
      currentAddress.zipCode = clearZipCode;

      final userData = UserProfile(
        id: isEditing ? widget.user!.id : const Uuid().v4obj(),
        addressId: isEditing
            ? widget.user?.addressId ?? currentAddress.id
            : currentAddress.id,
        name: _nameController.text.trim(),
        rg: _rgController.text.trim().isNotEmpty
            ? _rgController.text.trim()
            : null,
        birthDate: parsedBirthDate,
        gender: _selectedGender,
        cpf: clearCpf.isNotEmpty ? clearCpf : null,
        phone: clearPhone.isNotEmpty ? clearPhone : null,
        email: _emailController.text.trim().isNotEmpty
            ? _emailController.text.trim()
            : null,
        address: currentAddress,
        status: _selectedStatus,
        types: _selectedTypes,
      );

      if (isEditing) {
        await widget.vm.updateUser(userData);
      } else {
        await widget.vm.createUser(userData);
      }

      await widget.vm.updateUserRoles(
        userData.id.toString(),
        _selectedRoles.map((r) => r.id.toString()).toList(),
      );

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
          width: 600,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                        isEditing ? 'EDITAR USUÁRIO' : 'NOVO USUÁRIO',
                        style: DSTokens.headline.copyWith(fontSize: 18),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: const Icon(
                            Icons.close,
                            color: DSTokens.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInputField(
                        'NOME COMPLETO',
                        'Ex: João da Silva',
                        _nameController,
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            child: _buildInputField(
                              'CPF',
                              '000.000.000-00',
                              _cpfController,
                              inputFormatters: [_cpfMask],
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            child: _buildInputField(
                              'RG',
                              '00.000.000-0',
                              _rgController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            child: _buildInputField(
                              'DATA DE NASCIMENTO',
                              'DD/MM/AAAA',
                              _birthDateController,
                              inputFormatters: [_dateMask],
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            child: _buildDropdownField<Gender>(
                              'GÊNERO',
                              Gender.values,
                              _selectedGender,
                              (newVal) {
                                if (newVal != null) {
                                  setState(() {
                                    _selectedGender = newVal;
                                  });
                                }
                              },
                              labelBuilder: (g) => g.name.toUpperCase(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            child: _buildInputField(
                              'TELEFONE',
                              '(00) 00000-0000',
                              _phoneController,
                              inputFormatters: [_phoneMask],
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            child: _buildInputField(
                              'EMAIL',
                              'usuario@email.com',
                              _emailController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: _buildDropdownField<UserStatus>(
                              'STATUS',
                              UserStatus.values,
                              _selectedStatus,
                              (newVal) {
                                if (newVal != null) {
                                  setState(() {
                                    _selectedStatus = newVal;
                                  });
                                }
                              },
                              labelBuilder: (s) => s.name.toUpperCase(), // UserStatus mapping if needed
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PERFIS DE ACESSO (TIPOS)',
                                  style: DSTokens.label.copyWith(
                                    color: DSTokens.outline,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  children: UserType.values.map((type) {
                                    final isSelected = _selectedTypes.contains(
                                      type,
                                    );
                                    return FilterChip(
                                      label: Text(
                                        type.label.toUpperCase(),
                                        style: DSTokens.body.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      selected: isSelected,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          if (selected) {
                                            _selectedTypes.add(type);
                                          } else {
                                            _selectedTypes.remove(type);
                                          }
                                        });
                                      },
                                      selectedColor: DSTokens.primary
                                          .withOpacity(0.2),
                                      checkmarkColor: DSTokens.primary,
                                      backgroundColor:
                                          DSTokens.surfaceContainerHigh,
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      if (widget.vm.availableRoles.isNotEmpty) ...[
                        Text(
                          'PAPÉIS DE SEGURANÇA (RBAC)',
                          style: DSTokens.label.copyWith(
                            color: DSTokens.outline,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: widget.vm.availableRoles.map((role) {
                            final isSelected = _selectedRoles.any(
                              (r) => r.id == role.id,
                            );
                            return FilterChip(
                              label: Text(
                                role.name.toUpperCase(),
                                style: DSTokens.body.copyWith(fontSize: 12),
                              ),
                              selected: isSelected,
                              onSelected: (bool selected) {
                                setState(() {
                                  if (selected) {
                                    _selectedRoles.add(role);
                                  } else {
                                    _selectedRoles.removeWhere(
                                      (r) => r.id == role.id,
                                    );
                                  }
                                });
                              },
                              selectedColor: DSTokens.primary.withOpacity(0.2),
                              checkmarkColor: DSTokens.primary,
                              backgroundColor: DSTokens.surfaceContainerHigh,
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: DSTokens.spacingMd),
                      ],
                      const SizedBox(height: DSTokens.spacingLg),
                      Text(
                        'ENDEREÇO BÁSICO',
                        style: DSTokens.label.copyWith(color: DSTokens.outline),
                      ),
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 3,
                            child: _buildInputField(
                              'CEP',
                              '00000-000',
                              _zipCodeController,
                              inputFormatters: [_zipCodeMask],
                              focusNode: _zipCodeFocusNode,
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            flex: 7,
                            child: _buildInputField(
                              'ENDEREÇO (RUA/AVENIDA)',
                              'Logradouro',
                              _streetController,
                            ),
                          ),
                        ],
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
                      const SizedBox(height: DSTokens.spacingMd),
                      Row(
                        children: [
                          Expanded(
                            child: _buildInputField(
                              'CIDADE',
                              'Nome da Cidade',
                              _cityController,
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingMd),
                          Expanded(
                            child: _buildInputField(
                              'ESTADO (UF)',
                              'Ex: SP',
                              _stateController,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

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
                          style: DSTokens.label.copyWith(
                            color: DSTokens.outline,
                          ),
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
                                'SALVAR USUÁRIO',
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
      ),
    );
  }

  Widget _buildInputField(
    String label,
    String hint,
    TextEditingController controller, {
    List<TextInputFormatter>? inputFormatters,
    FocusNode? focusNode,
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

  Widget _buildDropdownField<T>(
    String label,
    List<T> items,
    T value,
    ValueChanged<T?> onChanged, {
    required String Function(T) labelBuilder,
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
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down, color: DSTokens.outline),
              dropdownColor: DSTokens.background,
              style: DSTokens.body.copyWith(color: DSTokens.highlight),
              onChanged: onChanged,
              items: items.map((T item) {
                return DropdownMenuItem<T>(
                  value: item,
                  child: Text(labelBuilder(item)),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
