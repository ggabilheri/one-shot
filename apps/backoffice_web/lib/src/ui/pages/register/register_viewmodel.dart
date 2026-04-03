import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/auth_repository.dart';

abstract class IRegisterPresenter {
  Future<String?> showValidationDialog();
  void navigateToLogin();
}

abstract class IRegisterViewModel extends IViewmodel {
  bool get isPasswordVisible;
  void togglePasswordVisibility();
  Future<void> register(String name, String email, String password);
  void setPresenter(IRegisterPresenter presenter);
}

class RegisterViewModel extends Viewmodel implements IRegisterViewModel {
  final IAuthRepository _authRepository;
  IRegisterPresenter? _presenter;

  bool _isPasswordVisible = false;

  @override
  bool get isPasswordVisible => _isPasswordVisible;

  RegisterViewModel(this._authRepository);

  @override
  void setPresenter(IRegisterPresenter presenter) {
    _presenter = presenter;
  }

  @override
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  @override
  Future<void> register(String name, String email, String password) async {
    setLoading(true);
    setError(null);
    try {
      final success = await _authRepository.createAccountRequest(name, email, password);
      
      if (success) {
         setLoading(false); // Removemos o loading de background pq vamos exibir Modal
         if (_presenter != null) {
            final validationCode = await _presenter!.showValidationDialog();
            
            if (validationCode != null && validationCode.isNotEmpty) {
               setLoading(true);
               final userInfo = await _authRepository.validateAccount(email, validationCode);
               if (userInfo != null) {
                  _presenter!.navigateToLogin();
               } else {
                  setError('Código inválido ou expirado.');
               }
            } else {
               setError('Validação cancelada.');
            }
         }
      } else {
         setError('Falha ao registrar a conta. O e-mail já existe?');
      }
    } catch (e) {
      setError('Erro ao realizar cadastro: \$e');
    } finally {
      if (isLoading) {
        setLoading(false);
      }
    }
  }
}
