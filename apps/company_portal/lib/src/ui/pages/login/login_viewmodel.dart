import 'package:company_portal/src/core/viewmodel.dart';
import 'package:company_portal/src/domain/repositories/auth_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class ILoginPresenter {
  void navigateToDashboard();
}

abstract class ILoginViewModel extends IViewmodel {
  bool get isPasswordVisible;
  void togglePasswordVisibility();
  Future<void> login(String email, String password);
  void setPresenter(ILoginPresenter presenter);
}

class LoginViewModel extends Viewmodel implements ILoginViewModel {
  final IAuthRepository _authRepository;
  ILoginPresenter? _presenter;

  bool _isPasswordVisible = false;

  LoginViewModel(this._authRepository);

  @override
  bool get isPasswordVisible => _isPasswordVisible;

  @override
  void setPresenter(ILoginPresenter presenter) {
    _presenter = presenter;
  }

  @override
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  @override
  Future<void> login(String email, String password) async {
    setLoading(true);
    setError(null);
    try {
      final userInfo = await _authRepository.login(email, password);
      
      if (userInfo != null) {
         _presenter?.navigateToDashboard();
      } else {
        setError('Falha ao autenticar. Tente novamente.');
      }
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('E-mail ou senha incorretos.');
    } finally {
      setLoading(false);
    }
  }
}
