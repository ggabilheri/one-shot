import 'package:mailer/mailer.dart' as mailer;
import 'package:mailer/smtp_server.dart';
import 'package:serverpod/serverpod.dart';

import '../config/app_config.dart';

/// Serviço de envio de e-mails de autenticação (validação de cadastro e
/// recuperação de senha).
///
/// O SMTP é configurado pela seção `email` de config/<ambiente>.yaml e a senha
/// pela chave `email` de config/passwords.yaml.
///
/// Quando o SMTP não está configurado (ex.: desenvolvimento), os códigos são
/// apenas registrados no log do servidor e o envio é considerado bem-sucedido.
class EmailService {
  final EmailSettings? settings;
  final String? password;

  EmailService({this.settings, this.password});

  bool get isConfigured => settings != null;

  /// Envia o código de validação de cadastro.
  Future<bool> sendValidationEmail(
    Session session,
    String email,
    String validationCode,
  ) {
    return _send(
      session,
      to: email,
      subject: 'One-Shot: código de validação',
      text: 'Seu código de validação é: $validationCode',
    );
  }

  /// Envia o código de recuperação de senha.
  Future<bool> sendPasswordResetEmail(
    Session session,
    String email,
    String validationCode,
  ) {
    return _send(
      session,
      to: email,
      subject: 'One-Shot: recuperação de senha',
      text: 'Seu código para redefinir a senha é: $validationCode',
    );
  }

  Future<bool> _send(
    Session session, {
    required String to,
    required String subject,
    required String text,
  }) async {
    final settings = this.settings;

    if (settings == null) {
      session.log(
        'EmailService (SMTP não configurado) — "$subject" para $to: $text',
        level: LogLevel.info,
      );
      return true;
    }

    try {
      final smtpServer = SmtpServer(
        settings.host,
        port: settings.port,
        username: settings.username,
        password: password,
        ssl: settings.ssl,
      );

      final message = mailer.Message()
        ..from = mailer.Address(settings.senderEmail, settings.senderName)
        ..recipients.add(to)
        ..subject = subject
        ..text = text;

      await mailer.send(message, smtpServer);
      return true;
    } catch (e) {
      session.log(
        'EmailService — falha ao enviar "$subject" para $to: $e',
        level: LogLevel.error,
      );
      return false;
    }
  }
}
