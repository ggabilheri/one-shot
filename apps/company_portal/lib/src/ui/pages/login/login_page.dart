import 'package:flutter/material.dart';
import 'package:company_portal/src/core/viewmodel_state.dart';
import 'package:company_portal/src/ui/pages/login/login_viewmodel.dart';
import 'package:company_portal/src/routes/app_routes.dart';
import 'package:company_portal/src/ui/pages/login/widgets/login_form.dart';
import 'package:company_portal/src/ui/pages/login/widgets/login_button.dart';
import 'package:qlevar_router/qlevar_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ViewmodelState<LoginPage, ILoginViewModel>
    implements ILoginPresenter {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    vm.setPresenter(this);
  }

  @override
  void navigateToDashboard() {
    QR.toName(AppRoutes.dashboard);
  }

  Future<void> _onLoginPressed() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) return;
    await vm.login(email, password);
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 450),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(
              0,
            ), // Conforme design brutalista
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'OneShot Portal do Clube',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              LoginForm(
                emailController: _emailController,
                passwordController: _passwordController,
                isPasswordVisible: vm.isPasswordVisible,
                onTogglePassword: vm.togglePasswordVisibility,
              ),
              const SizedBox(height: 16),
              loadable(
                builder: (loading) =>
                    LoginButton(onPressed: _onLoginPressed, isLoading: loading),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => QR.toName(AppRoutes.register),
                child: Text(
                  'Não tem uma conta? Registre-se',
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
