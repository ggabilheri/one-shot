import 'package:flutter/widgets.dart';
import 'package:backoffice_web/l10n/app_localizations.dart';
import 'package:oneshot_client/oneshot_client.dart';

extension LocalizationContext on BuildContext {
  /// Acesso facilitado e tipado às mensagens localizadas.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension LocalizedPixKeyType on AppLocalizations {
  /// Tradução tipada para tipos de chave PIX.
  String pixKeyTypeLabel(PixKeyType type) {
    switch (type) {
      case PixKeyType.cpf:
        return pixKeyTypeCpf;
      case PixKeyType.cnpj:
        return pixKeyTypeCnpj;
      case PixKeyType.email:
        return pixKeyTypeEmail;
      case PixKeyType.telefone:
        return pixKeyTypePhone;
      case PixKeyType.aleatoria:
        return pixKeyTypeRandom;
    }
  }

  /// Tradução para status de conta bancária.
  String formatBankAccountStatus(String status) {
    final s = status.toUpperCase();
    if (s == 'ACTIVE') return bankAccountStatusActive;
    if (s == 'INACTIVE') return bankAccountStatusInactive;
    return status;
  }
}
