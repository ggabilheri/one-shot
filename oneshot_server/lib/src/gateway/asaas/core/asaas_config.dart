import 'package:serverpod/serverpod.dart';

/// Lê as configurações do gateway Asaas a partir do ambiente ativo do Serverpod.
/// Tanto a [baseUrl] quanto o [accessToken] são lidos do passwords.yaml
/// (que NÃO é versionado no git) via [Session.passwords].
///
/// - development/staging → sandbox: https://api-sandbox.asaas.com
/// - production → produção: https://api.asaas.com
class AsaasConfig {
  final String baseUrl;
  final String accessToken;

  AsaasConfig._({required this.baseUrl, required this.accessToken});

  factory AsaasConfig.fromSession(Session session) {
    final baseUrl = session.passwords['asaasBaseUrl'];
    final accessToken = session.passwords['asaasAccessToken'];

    if (baseUrl == null || baseUrl.isEmpty) {
      throw StateError(
        'AsaasConfig: "asaasBaseUrl" não encontrado no passwords.yaml. '
        'Adicione a URL base do Asaas para o ambiente atual '
        '(sandbox: https://api-sandbox.asaas.com / produção: https://api.asaas.com).',
      );
    }
    if (accessToken == null || accessToken.isEmpty) {
      throw StateError(
        'AsaasConfig: "asaasAccessToken" não encontrado no passwords.yaml. '
        'Adicione a chave de API do Asaas para o ambiente atual.',
      );
    }

    return AsaasConfig._(baseUrl: baseUrl, accessToken: accessToken);
  }
}
