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

  AppConfig._({required this.asaasBaseUrl});

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

    _instance = AppConfig._(asaasBaseUrl: baseUrl);
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
