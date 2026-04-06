import 'package:oneshot_server/src/core/config/app_config.dart';
import 'package:serverpod/serverpod.dart';

/// Lê as configurações do gateway Asaas a partir do ambiente ativo do Serverpod.
///
/// - [baseUrl]: lida do config/*.yaml (asaas.baseUrl) via [AppConfig], inicializado
///   no server.dart. Não é dado sensível, pode ser versionado.
///
/// - [accessToken]: lida do passwords.yaml via [Session.passwords] (nunca versionado).
///
/// Ambientes:
/// - development/staging → sandbox: https://api-sandbox.asaas.com
/// - production          → produção: https://api.asaas.com
class AsaasConfig {
  final String baseUrl;
  final String accessToken;

  AsaasConfig._({required this.baseUrl, required this.accessToken});

  factory AsaasConfig.fromSession(Session session) {
    // baseUrl: vem do config/*.yaml lido no startup (não sensível)
    final baseUrl = AppConfig.instance.asaasBaseUrl;

    // accessToken: vem do passwords.yaml (sensível, nunca versionado)
    final accessToken = session.passwords['asaasAccessToken'];

    if (accessToken == null || accessToken.isEmpty) {
      throw StateError(
        'AsaasConfig: "asaasAccessToken" não encontrado no passwords.yaml. '
        'Adicione a chave de API do Asaas para o ambiente atual.',
      );
    }

    return AsaasConfig._(baseUrl: baseUrl, accessToken: accessToken);
  }
}
