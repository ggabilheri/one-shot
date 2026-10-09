import 'dart:io';
import 'package:yaml/yaml.dart';

/// Configurações customizadas do servidor carregadas do arquivo de ambiente
/// (config/development.yaml, config/staging.yaml ou config/production.yaml).
///
/// Inicializar via [AppConfig.load] no [run] do server.dart, antes de iniciar
/// o Serverpod, passando os args recebidos.
class AppConfig {
  static AppConfig? _instance;

  /// URL base do Asaas (sandbox ou produção, conforme o ambiente).
  final String asaasBaseUrl;

  /// Configuração de SMTP para envio de e-mails.
  ///
  /// Nula quando a seção `email` não está presente no YAML do ambiente
  /// (ex.: desenvolvimento sem servidor SMTP configurado). Nesse caso o
  /// [EmailService] registra os códigos no log em vez de enviar e-mails.
  final EmailSettings? email;

  AppConfig._({required this.asaasBaseUrl, this.email});

  static AppConfig get instance {
    if (_instance == null) {
      throw StateError(
        'AppConfig não foi inicializado. '
        'Chame AppConfig.load(args) no server.dart antes de iniciar o servidor.',
      );
    }
    return _instance!;
  }

  /// Carrega as configurações do arquivo YAML correspondente ao modo passado em [args].
  /// O Serverpod aceita --mode=development|staging|production.
  /// Padrão: development.
  static Future<void> load(List<String> args) async {
    final mode = _resolveMode(args);
    final configFile = File('config/$mode.yaml');

    if (!configFile.existsSync()) {
      throw StateError('Arquivo de configuração não encontrado: config/$mode.yaml');
    }

    final content = await configFile.readAsString();
    final yaml = loadYaml(content) as YamlMap;

    final asaasMap = yaml['asaas'] as YamlMap?;
    final baseUrl = asaasMap?['baseUrl'] as String?;

    if (baseUrl == null || baseUrl.isEmpty) {
      throw StateError(
        'AppConfig: "asaas.baseUrl" não encontrado em config/$mode.yaml. '
        'Adicione a URL base do Asaas (sandbox ou produção).',
      );
    }

    _instance = AppConfig._(
      asaasBaseUrl: baseUrl,
      email: _parseEmailSettings(yaml, mode),
    );
  }

  /// Lê a seção opcional `email` do YAML do ambiente.
  ///
  /// Retorna null quando a seção não existe (SMTP não configurado).
  static EmailSettings? _parseEmailSettings(YamlMap yaml, String mode) {
    final emailMap = yaml['email'] as YamlMap?;
    if (emailMap == null) return null;

    final host = emailMap['host'] as String?;
    final port = emailMap['port'] as int?;
    final senderEmail = emailMap['senderEmail'] as String?;

    if (host == null || port == null || senderEmail == null) {
      throw StateError(
        'AppConfig: seção "email" incompleta em config/$mode.yaml. '
        'Informe "host", "port" e "senderEmail" (e opcionalmente "username", '
        '"senderName" e "ssl").',
      );
    }

    return EmailSettings(
      host: host,
      port: port,
      username: emailMap['username'] as String?,
      senderEmail: senderEmail,
      senderName: emailMap['senderName'] as String?,
      ssl: emailMap['ssl'] as bool? ?? false,
    );
  }

  static String _resolveMode(List<String> args) {
    for (final arg in args) {
      if (arg.startsWith('--mode=')) {
        return arg.replaceFirst('--mode=', '');
      }
      if (arg == '--apply-migrations') continue;
    }
    return 'development';
  }
}

/// Configuração de SMTP para envio de e-mails (seção `email` do YAML do
/// ambiente). A senha NÃO fica no YAML: deve ser configurada em
/// config/passwords.yaml (chave `email`).
class EmailSettings {
  final String host;
  final int port;
  final String? username;
  final String senderEmail;
  final String? senderName;

  /// true para TLS implícito (normalmente porta 465);
  /// false para STARTTLS (normalmente porta 587).
  final bool ssl;

  EmailSettings({
    required this.host,
    required this.port,
    this.username,
    required this.senderEmail,
    this.senderName,
    this.ssl = false,
  });
}
