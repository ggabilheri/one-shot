import 'package:oneshot_server/src/core/config/app_config.dart';
import 'package:oneshot_server/src/core/email/email_service.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

import 'package:oneshot_server/src/web/routes/root.dart';

import 'package:oneshot_server/src/core/injections/injections.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Carrega configurações customizadas do config/*.yaml (ex: asaas.baseUrl)
  await AppConfig.load(args);

  // Initialize Service Locator
  sl.init();

  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args, 
    Protocol(), 
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  // Serviço de e-mail para os códigos de validação de cadastro e recuperação
  // de senha. A senha do SMTP é lida de config/passwords.yaml (chave `email`).
  final emailService = EmailService(
    settings: AppConfig.instance.email,
    password: pod.getPassword('email'),
  );

  auth.AuthConfig.set(auth.AuthConfig(
    sendValidationEmail: (session, email, validationCode) async {
      return emailService.sendValidationEmail(session, email, validationCode);
    },
    sendPasswordResetEmail: (session, userInfo, validationCode) async {
      final email = userInfo.email;
      if (email == null) {
        session.log(
          'Não é possível enviar e-mail de recuperação de senha: '
          'usuário ${userInfo.id} não possui e-mail cadastrado.',
          level: LogLevel.warning,
        );
        return false;
      }
      return emailService.sendPasswordResetEmail(
        session,
        email,
        validationCode,
      );
    },
  ));

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  // pod.webServer.addRoute(
  //   RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
  //   '/*',
  // );

  // Start the server.
  await pod.start();

  // No Serverpod 4 os future calls são registrados automaticamente pelo código
  // gerado (lib/src/generated/future_calls.dart) durante o start. Para agendar
  // um future call, use a API tipada `pod.futureCalls` — também disponível
  // dentro de endpoints/webroutes via `session`.
  // Exemplo: agenda o BirthdayReminder de demonstração 5s após o start.
  await pod.futureCalls
      .callWithDelay(const Duration(seconds: 5))
      .birthdayReminder
      .invoke(Greeting(
        message: 'Hello!',
        author: 'Serverpod Server',
        timestamp: DateTime.now(),
      ));
}
