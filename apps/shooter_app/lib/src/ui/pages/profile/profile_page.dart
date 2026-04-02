import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/viewmodel_state.dart';
import '../../../core/utils/i18n.dart';
import '../../widgets/ds_button.dart';
import '../../widgets/ds_text_field.dart';
import '../../widgets/ds_tokens.dart';
import 'profile_viewmodel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ViewmodelState<ProfilePage, IProfileViewmodel>
    implements IProfilePresenter, IPresenterBase {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _rgController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void onInit() {
    vm.loadProfile();
    super.onInit();
  }

  void _updateControllers(UserProfile profile) {
    _nameController.text = profile.name;
    _cpfController.text = profile.cpf ?? '';
    _rgController.text = profile.rg ?? '';
    _phoneController.text = profile.phone ?? '';
    _emailController.text = profile.email ?? '';
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final profile = UserProfile(
        id: vm.profile?.id,
        userInfoId: vm.profile?.userInfoId,
        name: _nameController.text,
        cpf: _cpfController.text,
        rg: _rgController.text,
        phone: _phoneController.text,
        email: _emailController.text,
        gender: vm.profile?.gender ?? Gender.other,
      );
      vm.saveProfile(profile);
    }
  }

  @override
  void onProfileLoaded(UserProfile profile) {
    _updateControllers(profile);
  }

  @override
  void back() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "profile.title".tr().toUpperCase(),
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
                Text(
                  "DADOS PESSOAIS".toUpperCase(),
                  style: DSTokens.label.copyWith(
                    color: DSTokens.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                DSTextField(
                  label: "profile.name".tr(),
                  placeholder: "Seu nome completo",
                  controller: _nameController,
                  validator: (v) => v!.isEmpty ? "common.error".tr() : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: DSTextField(
                        label: "profile.cpf".tr(),
                        placeholder: "000.000.000-00",
                        controller: _cpfController,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DSTextField(
                        label: "profile.rg".tr(),
                        placeholder: "00.000.000-0",
                        controller: _rgController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  "CONTATO".toUpperCase(),
                  style: DSTokens.label.copyWith(
                    color: DSTokens.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                DSTextField(
                  label: "profile.phone".tr(),
                  placeholder: "(00) 00000-0000",
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                DSTextField(
                  label: "profile.email".tr(),
                  placeholder: "email@exemplo.com",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
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
}
