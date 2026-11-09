// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonRequired => 'Obrigatório';

  @override
  String get commonSave => 'Salvar';

  @override
  String get bankAccountEditTitle => 'Editar Conta';

  @override
  String get bankAccountNewTitle => 'Nova Conta';

  @override
  String get bankAccountNameLabel => 'Nome da Conta (Apelido)';

  @override
  String get bankAccountBankLabel => 'Banco';

  @override
  String get bankAccountStatusLabel => 'Status';

  @override
  String get bankAccountStatusActive => 'Ativo';

  @override
  String get bankAccountStatusInactive => 'Inativo';

  @override
  String get bankAccountAgencyLabel => 'Agência';

  @override
  String get bankAccountAgencyDigitLabel => 'Díg.';

  @override
  String get bankAccountAccountNumberLabel => 'Conta';

  @override
  String get bankAccountAccountDigitLabel => 'Díg.';

  @override
  String get bankAccountBalanceLabel => 'Saldo Atual';

  @override
  String get bankAccountPixKeyTypeLabel => 'Tipo Chave PIX';

  @override
  String get bankAccountPixKeyLabel => 'Chave PIX';

  @override
  String get bankAccountSaveAccount => 'Salvar Alterações';

  @override
  String get bankAccountCreateAccount => 'Criar Conta';

  @override
  String get bankSearchTitle => 'Buscar Banco';

  @override
  String get bankSearchHint => 'Digite o nome ou código...';

  @override
  String get bankSearchEmpty => 'Nenhum banco encontrado';

  @override
  String bankSearchCode(String code) {
    return 'Código: $code';
  }

  @override
  String get pixKeyTypeCpf => 'CPF';

  @override
  String get pixKeyTypeCnpj => 'CNPJ';

  @override
  String get pixKeyTypeEmail => 'E-mail';

  @override
  String get pixKeyTypePhone => 'Telefone';

  @override
  String get pixKeyTypeRandom => 'Chave Aleatória';

  @override
  String get importOfxTitle => 'Importar Extrato OFX';

  @override
  String get importOfxSelectFile => 'Selecionar Arquivo .OFX';

  @override
  String get importOfxChangeFile => 'Trocar Arquivo';

  @override
  String get importOfxCredits => 'Total Créditos';

  @override
  String get importOfxDebits => 'Total Débitos';

  @override
  String get importOfxNewCount => 'Novas Transações';

  @override
  String get importOfxDuplicatedCount => 'Já Importadas';

  @override
  String get importOfxConfirm => 'Confirmar Importação';

  @override
  String get importOfxSuccess => 'Extrato importado com sucesso!';

  @override
  String get importOfxAccountMismatchAlert =>
      'Atenção: Os dados bancários do arquivo não pertencem a esta conta!';

  @override
  String get importOfxButton => 'Importar OFX';

  @override
  String get reconciliationButton => 'Extrato & Conciliação';

  @override
  String get reconciliationTitle => 'Conciliação Bancária';
}
