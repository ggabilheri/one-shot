/// Exceção base para toda lógica de negócio do sistema OneShot.
/// Subtipos cobrem os cenários mais comuns de erros de domínio.
///
/// Esta classe é usada internamente no servidor.
/// Para enviar erros ao cliente Flutter, utilize [AppException]
/// (definida em models/common/app_exception.spy.yaml e serializada pelo Serverpod).
class OneShotException implements Exception {
  final String message;
  final String? code;

  OneShotException(this.message, {this.code});

  @override
  String toString() => 'OneShotException: [$code] $message';
}

/// Exceção de validação de dados de entrada.
/// código: VALIDATION_ERROR
class ValidationException extends OneShotException {
  ValidationException(super.message) : super(code: 'VALIDATION_ERROR');
}

/// Exceção de acesso não autorizado.
/// código: UNAUTHORIZED
class UnauthorizedException extends OneShotException {
  UnauthorizedException([super.message = 'Acesso não autorizado.'])
      : super(code: 'UNAUTHORIZED');
}

/// Exceção de recurso não encontrado.
/// código: NOT_FOUND
class NotFoundException extends OneShotException {
  NotFoundException(super.message) : super(code: 'NOT_FOUND');
}

/// Exceção de conflito (ex: CPF ou e-mail duplicado).
/// código: CONFLICT
class ConflictException extends OneShotException {
  ConflictException(super.message) : super(code: 'CONFLICT');
}
