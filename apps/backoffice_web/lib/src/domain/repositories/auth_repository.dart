import 'package:serverpod_auth_client/serverpod_auth_client.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:backoffice_web/main.dart'; // import client & sessionManager

abstract class IAuthRepository {
  /// Realiza o login. Retorna NULL caso as credenciais sejam inválidas, ou lance Exception.
  Future<UserInfo?> login(String email, String password);
  
  /// Inicia o processo de criação de conta no Serverpod (dispara e-mail com código)
  Future<bool> createAccountRequest(String userName, String email, String password);

  /// Valida o código recebido pelo e-mail e ativa a conta no Serverpod
  Future<UserInfo?> validateAccount(String email, String validationCode);
}

class AuthRepository implements IAuthRepository {
  late final EmailAuthController _emailAuth;

  AuthRepository() {
    _emailAuth = EmailAuthController(client.modules.auth);
  }

  @override
  Future<UserInfo?> login(String email, String password) async {
    try {
      final result = await _emailAuth.signIn(email, password);
      // Se deu certo, ele guarda no sessionManager internamente, mas precisamos retornar
      return result; 
    } catch (e) {
      throw Exception('Falha ao autenticar.');
    }
  }

  @override
  Future<bool> createAccountRequest(String userName, String email, String password) async {
    try {
      return await _emailAuth.createAccountRequest(userName, email, password);
    } catch (e) {
      throw Exception('Falha na requisição de criação de conta: \$e');
    }
  }

  @override
  Future<UserInfo?> validateAccount(String email, String validationCode) async {
    try {
      final userInfo = await _emailAuth.validateAccount(email, validationCode);
      // Aqui, idealmente interagiríamos com client.user.create se a regra exigisse.
      return userInfo;
    } catch (e) {
      throw Exception('Falha na validação da conta: \$e');
    }
  }
}
