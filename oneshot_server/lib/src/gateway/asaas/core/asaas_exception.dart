import 'package:oneshot_server/src/core/exceptions/one_shot_exception.dart';

/// Exceção base para todas as falhas do gateway Asaas.
class AsaasException extends OneShotException {
  AsaasException(super.message, {super.code = 'ASAAS_ERROR'});
}

/// HTTP 401 — chave de API inválida ou expirada.
class AsaasUnauthorizedException extends AsaasException {
  AsaasUnauthorizedException([String message = 'Chave de API do Asaas inválida ou não autorizada.'])
      : super(message, code: 'ASAAS_UNAUTHORIZED');
}

/// HTTP 400 — dados de requisição inválidos. Contém a lista de erros retornada pelo Asaas.
class AsaasValidationException extends AsaasException {
  final List<AsaasError> errors;

  AsaasValidationException(this.errors)
      : super(
          errors.map((e) => e.description).join('; '),
          code: 'ASAAS_VALIDATION_ERROR',
        );
}

/// HTTP 404 — recurso não encontrado no Asaas.
class AsaasNotFoundException extends AsaasException {
  AsaasNotFoundException([String message = 'Recurso não encontrado no Asaas.'])
      : super(message, code: 'ASAAS_NOT_FOUND');
}

/// HTTP 5xx ou erro inesperado na comunicação com o Asaas.
class AsaasGatewayException extends AsaasException {
  AsaasGatewayException([String message = 'Erro inesperado no gateway Asaas.'])
      : super(message, code: 'ASAAS_GATEWAY_ERROR');
}

/// Representa um erro individual retornado pela API Asaas.
class AsaasError {
  final String code;
  final String description;

  const AsaasError({required this.code, required this.description});

  factory AsaasError.fromJson(Map<String, dynamic> json) => AsaasError(
        code: json['code'] as String? ?? 'unknown',
        description: json['description'] as String? ?? 'Erro desconhecido',
      );
}
