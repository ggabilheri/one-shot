import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';

/// Cliente HTTP centralizado para comunicação com a API Asaas.
/// Injeta automaticamente o header de autenticação e trata erros HTTP.
class AsaasHttpClient {
  final AsaasConfig _config;

  AsaasHttpClient(this._config);

  Map<String, String> get _headers => {
        'Content-Type': 'application/json',
        'access_token': _config.accessToken,
      };

  Uri _buildUri(String path, {Map<String, String>? queryParams}) {
    final base = Uri.parse(_config.baseUrl);
    return Uri(
      scheme: base.scheme,
      host: base.host,
      path: path,
      queryParameters: queryParams,
    );
  }

  /// GET
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? queryParams,
  }) async {
    final response = await http.get(
      _buildUri(path, queryParams: queryParams),
      headers: _headers,
    );
    return _handleResponse(response);
  }

  /// POST
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? body,
  }) async {
    final response = await http.post(
      _buildUri(path),
      headers: _headers,
      body: body != null ? jsonEncode(body) : null,
    );
    return _handleResponse(response);
  }

  /// PUT
  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? body,
  }) async {
    final response = await http.put(
      _buildUri(path),
      headers: _headers,
      body: body != null ? jsonEncode(body) : null,
    );
    return _handleResponse(response);
  }

  /// DELETE
  Future<void> delete(String path) async {
    final response = await http.delete(
      _buildUri(path),
      headers: _headers,
    );
    _handleResponse(response, allowEmpty: true);
  }

  Map<String, dynamic> _handleResponse(
    http.Response response, {
    bool allowEmpty = false,
  }) {
    final statusCode = response.statusCode;

    if (statusCode == 401) {
      throw AsaasUnauthorizedException();
    }

    Map<String, dynamic> body = {};
    if (response.body.isNotEmpty) {
      try {
        body = jsonDecode(response.body) as Map<String, dynamic>;
      } catch (_) {
        throw AsaasGatewayException(
          'Resposta inválida do Asaas (status $statusCode): ${response.body}',
        );
      }
    }

    if (statusCode == 400) {
      final rawErrors = body['errors'] as List<dynamic>? ?? [];
      final errors = rawErrors
          .whereType<Map<String, dynamic>>()
          .map(AsaasError.fromJson)
          .toList();
      throw AsaasValidationException(
        errors.isEmpty
            ? [AsaasError(code: 'unknown', description: 'Erro de validação sem detalhes')]
            : errors,
      );
    }

    if (statusCode == 404) {
      throw AsaasNotFoundException();
    }

    if (statusCode >= 500) {
      throw AsaasGatewayException(
        'Erro interno do servidor Asaas (status $statusCode).',
      );
    }

    if (statusCode >= 200 && statusCode < 300) {
      if (allowEmpty && body.isEmpty) return {};
      return body;
    }

    throw AsaasGatewayException('Status inesperado do Asaas: $statusCode');
  }
}
