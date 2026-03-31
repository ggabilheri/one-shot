class OneShotException implements Exception {
  final String message;
  final String? code;

  OneShotException(this.message, {this.code});

  @override
  String toString() => 'OneShotException: [$code] $message';
}

class ValidationException extends OneShotException {
  ValidationException(super.message) : super(code: 'VALIDATION_ERROR');
}

class UnauthorizedException extends OneShotException {
  UnauthorizedException([super.message = 'Acesso não autorizado.'])
      : super(code: 'UNAUTHORIZED');
}

class NotFoundException extends OneShotException {
  NotFoundException(super.message) : super(code: 'NOT_FOUND');
}
