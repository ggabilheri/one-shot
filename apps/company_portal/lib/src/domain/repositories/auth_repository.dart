import 'package:oneshot_client/oneshot_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:company_portal/main.dart'; // import client & sessionManager

abstract class IAuthRepository {
  /// Realiza o login. Retorna NULL caso as credenciais sejam inválidas, ou lance Exception.
  Future<UserInfo?> login(String email, String password);

  /// Inicia o processo de criação de conta no Serverpod (dispara e-mail com código)
  Future<bool> createAccountRequest(
    String userName,
    String email,
    String password,
  );

  /// Valida o código recebido pelo e-mail e ativa a conta no Serverpod
  Future<UserInfo?> validateAccount(String email, String validationCode);

  Future<UserProfile?> getOwner(UuidValue id);
}

class AuthRepository implements IAuthRepository {
  late final EmailAuthController _emailAuth;

  AuthRepository() {
    _emailAuth = EmailAuthController(client.modules.auth);
  }

  @override
  Future<UserInfo?> login(String email, String password) async {
    try {
      return await _emailAuth.signIn(email, password);
    } on AppException {
      rethrow; // Propaga a mensagem do servidor ao ViewModel
    } catch (e) {
      throw Exception('Falha ao autenticar. Verifique suas credenciais.');
    }
  }

  @override
  Future<bool> createAccountRequest(
    String userName,
    String email,
    String password,
  ) async {
    try {
      return await _emailAuth.createAccountRequest(userName, email, password);
    } on AppException {
      rethrow; // Propaga a mensagem do servidor ao ViewModel
    } catch (e) {
      throw Exception('Falha ao criar conta. Tente novamente.');
    }
  }

  @override
  Future<UserInfo?> validateAccount(String email, String validationCode) async {
    try {
      return await _emailAuth.validateAccount(email, validationCode);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha na validação do código. Tente novamente.');
    }
  }

  @override
  Future<UserProfile?> getOwner(UuidValue id) async {
    try {
      return await client.user.getById(id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao buscar proprietário.');
    }
  }
}
