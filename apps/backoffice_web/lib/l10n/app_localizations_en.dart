// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonRequired => 'Required';

  @override
  String get commonSave => 'Save';

  @override
  String get bankAccountEditTitle => 'Edit Account';

  @override
  String get bankAccountNewTitle => 'New Account';

  @override
  String get bankAccountNameLabel => 'Account Name (Alias)';

  @override
  String get bankAccountBankLabel => 'Bank';

  @override
  String get bankAccountStatusLabel => 'Status';

  @override
  String get bankAccountStatusActive => 'Active';

  @override
  String get bankAccountStatusInactive => 'Inactive';

  @override
  String get bankAccountAgencyLabel => 'Agency';

  @override
  String get bankAccountAgencyDigitLabel => 'Digit';

  @override
  String get bankAccountAccountNumberLabel => 'Account';

  @override
  String get bankAccountAccountDigitLabel => 'Digit';

  @override
  String get bankAccountBalanceLabel => 'Current Balance';

  @override
  String get bankAccountPixKeyTypeLabel => 'Pix Key Type';

  @override
  String get bankAccountPixKeyLabel => 'Pix Key';

  @override
  String get bankAccountSaveAccount => 'Save Changes';

  @override
  String get bankAccountCreateAccount => 'Create Account';

  @override
  String get bankSearchTitle => 'Search Bank';

  @override
  String get bankSearchHint => 'Type name or code...';

  @override
  String get bankSearchEmpty => 'No bank found';

  @override
  String bankSearchCode(String code) {
    return 'Code: $code';
  }

  @override
  String get pixKeyTypeCpf => 'CPF';

  @override
  String get pixKeyTypeCnpj => 'CNPJ';

  @override
  String get pixKeyTypeEmail => 'Email';

  @override
  String get pixKeyTypePhone => 'Phone';

  @override
  String get pixKeyTypeRandom => 'Random Key';

  @override
  String get importOfxTitle => 'Import OFX Statement';

  @override
  String get importOfxSelectFile => 'Select .OFX File';

  @override
  String get importOfxChangeFile => 'Change File';

  @override
  String get importOfxCredits => 'Total Credits';

  @override
  String get importOfxDebits => 'Total Debits';

  @override
  String get importOfxNewCount => 'New Transactions';

  @override
  String get importOfxDuplicatedCount => 'Already Imported';

  @override
  String get importOfxConfirm => 'Confirm Import';

  @override
  String get importOfxSuccess => 'Statement imported successfully!';

  @override
  String get importOfxAccountMismatchAlert =>
      'Warning: File bank details do not belong to this account!';

  @override
  String get importOfxButton => 'Import OFX';

  @override
  String get reconciliationButton => 'Statement & Reconciliation';

  @override
  String get reconciliationTitle => 'Bank Reconciliation';
}
