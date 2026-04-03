import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/viewmodel_state.dart';
import 'package:backoffice_web/src/ui/pages/register/register_viewmodel.dart';
import 'widgets/register_form.dart';
import 'widgets/register_button.dart';
import 'package:backoffice_web/src/routes/app_routes.dart';
import 'package:qlevar_router/qlevar_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ViewmodelState<RegisterPage, IRegisterViewModel> implements IRegisterPresenter {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    vm.setPresenter(this);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void navigateToLogin() {
    QR.toName(AppRoutes.login);
  }

  @override
  Future<String?> showValidationDialog() async {
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        final codeController = TextEditingController();
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text('Validar Conta', style: TextStyle(color: Theme.of(context).primaryColor)),
          content: TextField(
            controller: codeController,
            decoration: const InputDecoration(
              hintText: 'Digite o código envidado...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar', style: TextStyle(color: Colors.grey)),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(codeController.text),
              style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor, foregroundColor: Colors.black),
              child: const Text('Verificar'),
            ),
          ],
        );
      },
    );
  }

  void _onRegisterPressed() {
    vm.register(
      _nameController.text,
      _emailController.text,
      _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(0),
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Criar Conta',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Cadastre-se para acessar o BackOffice',
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              RegisterForm(
                nameController: _nameController,
                emailController: _emailController,
                passwordController: _passwordController,
                isPasswordVisible: vm.isPasswordVisible,
                onTogglePassword: vm.togglePasswordVisibility,
              ),
              const SizedBox(height: 24),
              if (vm.error != null)
                Text(
                  vm.error!,
                  style: const TextStyle(color: Colors.red, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 16),
              loadable(
                builder: (loading) => RegisterButton(
                  onPressed: _onRegisterPressed,
                  isLoading: loading,
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => QR.back(),
                child: Text(
                  'Já possui uma conta? Entre aqui',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
