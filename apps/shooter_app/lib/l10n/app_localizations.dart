import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @commonSave.
  ///
  /// In pt, this message translates to:
  /// **'Salvar'**
  String get commonSave;

  /// No description provided for @commonCancel.
  ///
  /// In pt, this message translates to:
  /// **'Cancelar'**
  String get commonCancel;

  /// No description provided for @commonEdit.
  ///
  /// In pt, this message translates to:
  /// **'Editar'**
  String get commonEdit;

  /// No description provided for @commonDelete.
  ///
  /// In pt, this message translates to:
  /// **'Excluir'**
  String get commonDelete;

  /// No description provided for @commonAdd.
  ///
  /// In pt, this message translates to:
  /// **'Adicionar'**
  String get commonAdd;

  /// No description provided for @commonSearch.
  ///
  /// In pt, this message translates to:
  /// **'Buscar'**
  String get commonSearch;

  /// No description provided for @commonLoading.
  ///
  /// In pt, this message translates to:
  /// **'Carregando...'**
  String get commonLoading;

  /// No description provided for @commonError.
  ///
  /// In pt, this message translates to:
  /// **'Ocorreu um erro'**
  String get commonError;

  /// No description provided for @homeOperation.
  ///
  /// In pt, this message translates to:
  /// **'Operação Alpha'**
  String get homeOperation;

  /// No description provided for @homeWelcome.
  ///
  /// In pt, this message translates to:
  /// **'Bem-vindo, Atirador'**
  String get homeWelcome;

  /// No description provided for @homeSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Gerencie seu perfil e acervo com precisão balística.'**
  String get homeSubtitle;

  /// No description provided for @homeProfileSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Dados pessoais e documentos'**
  String get homeProfileSubtitle;

  /// No description provided for @homeFirearmsSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Controle de armas e registros'**
  String get homeFirearmsSubtitle;

  /// No description provided for @homeAccessoriesSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Ópticos e supressores'**
  String get homeAccessoriesSubtitle;

  /// No description provided for @homeDocumentsTitle.
  ///
  /// In pt, this message translates to:
  /// **'Documentos'**
  String get homeDocumentsTitle;

  /// No description provided for @homeDocumentsSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Certidões e autorizações'**
  String get homeDocumentsSubtitle;

  /// No description provided for @homeLogout.
  ///
  /// In pt, this message translates to:
  /// **'Encerrar Sessão'**
  String get homeLogout;

  /// No description provided for @profileTitle.
  ///
  /// In pt, this message translates to:
  /// **'Meu Perfil'**
  String get profileTitle;

  /// No description provided for @profilePersonalData.
  ///
  /// In pt, this message translates to:
  /// **'DADOS PESSOAIS'**
  String get profilePersonalData;

  /// No description provided for @profileContact.
  ///
  /// In pt, this message translates to:
  /// **'CONTATO'**
  String get profileContact;

  /// No description provided for @profileName.
  ///
  /// In pt, this message translates to:
  /// **'Nome Completo'**
  String get profileName;

  /// No description provided for @profileNamePlaceholder.
  ///
  /// In pt, this message translates to:
  /// **'Seu nome completo'**
  String get profileNamePlaceholder;

  /// No description provided for @profileCpf.
  ///
  /// In pt, this message translates to:
  /// **'CPF'**
  String get profileCpf;

  /// No description provided for @profileRg.
  ///
  /// In pt, this message translates to:
  /// **'RG'**
  String get profileRg;

  /// No description provided for @profileBirthDate.
  ///
  /// In pt, this message translates to:
  /// **'Data de Nascimento'**
  String get profileBirthDate;

  /// No description provided for @profileGender.
  ///
  /// In pt, this message translates to:
  /// **'Gênero'**
  String get profileGender;

  /// No description provided for @profilePhone.
  ///
  /// In pt, this message translates to:
  /// **'Telefone'**
  String get profilePhone;

  /// No description provided for @profileEmail.
  ///
  /// In pt, this message translates to:
  /// **'E-mail'**
  String get profileEmail;

  /// No description provided for @profileAddress.
  ///
  /// In pt, this message translates to:
  /// **'Endereço'**
  String get profileAddress;

  /// No description provided for @profileCep.
  ///
  /// In pt, this message translates to:
  /// **'CEP'**
  String get profileCep;

  /// No description provided for @profileStreet.
  ///
  /// In pt, this message translates to:
  /// **'Logradouro'**
  String get profileStreet;

  /// No description provided for @profileNumber.
  ///
  /// In pt, this message translates to:
  /// **'Número'**
  String get profileNumber;

  /// No description provided for @profileNeighborhood.
  ///
  /// In pt, this message translates to:
  /// **'Bairro'**
  String get profileNeighborhood;

  /// No description provided for @profileCity.
  ///
  /// In pt, this message translates to:
  /// **'Cidade'**
  String get profileCity;

  /// No description provided for @profileState.
  ///
  /// In pt, this message translates to:
  /// **'Estado/UF'**
  String get profileState;

  /// No description provided for @firearmListTitle.
  ///
  /// In pt, this message translates to:
  /// **'Meu Acervo'**
  String get firearmListTitle;

  /// No description provided for @firearmFormTitle.
  ///
  /// In pt, this message translates to:
  /// **'Dados da Arma'**
  String get firearmFormTitle;

  /// No description provided for @firearmSerialNumber.
  ///
  /// In pt, this message translates to:
  /// **'Número de Série'**
  String get firearmSerialNumber;

  /// No description provided for @firearmCaliber.
  ///
  /// In pt, this message translates to:
  /// **'Calibre'**
  String get firearmCaliber;

  /// No description provided for @firearmManufacturer.
  ///
  /// In pt, this message translates to:
  /// **'Fabricante'**
  String get firearmManufacturer;

  /// No description provided for @firearmModel.
  ///
  /// In pt, this message translates to:
  /// **'Modelo'**
  String get firearmModel;

  /// No description provided for @firearmType.
  ///
  /// In pt, this message translates to:
  /// **'Tipo de Arma'**
  String get firearmType;

  /// No description provided for @firearmPurpose.
  ///
  /// In pt, this message translates to:
  /// **'Finalidade'**
  String get firearmPurpose;

  /// No description provided for @firearmAction.
  ///
  /// In pt, this message translates to:
  /// **'Ação'**
  String get firearmAction;

  /// No description provided for @firearmUsage.
  ///
  /// In pt, this message translates to:
  /// **'Tipo de Uso'**
  String get firearmUsage;

  /// No description provided for @enumFirearmTypePistol.
  ///
  /// In pt, this message translates to:
  /// **'Pistola'**
  String get enumFirearmTypePistol;

  /// No description provided for @enumFirearmTypeRevolver.
  ///
  /// In pt, this message translates to:
  /// **'Revólver'**
  String get enumFirearmTypeRevolver;

  /// No description provided for @enumFirearmTypeRifle.
  ///
  /// In pt, this message translates to:
  /// **'Rifle'**
  String get enumFirearmTypeRifle;

  /// No description provided for @enumFirearmTypeCarbine.
  ///
  /// In pt, this message translates to:
  /// **'Carabina'**
  String get enumFirearmTypeCarbine;

  /// No description provided for @enumFirearmTypeShotgun.
  ///
  /// In pt, this message translates to:
  /// **'Espingarda'**
  String get enumFirearmTypeShotgun;

  /// No description provided for @enumFirearmTypeMachineGun.
  ///
  /// In pt, this message translates to:
  /// **'Metralhadora'**
  String get enumFirearmTypeMachineGun;

  /// No description provided for @enumFirearmTypeSubmachineGun.
  ///
  /// In pt, this message translates to:
  /// **'Submetralhadora'**
  String get enumFirearmTypeSubmachineGun;

  /// No description provided for @enumFirearmTypeAirPistol.
  ///
  /// In pt, this message translates to:
  /// **'Pistola de Pressão'**
  String get enumFirearmTypeAirPistol;

  /// No description provided for @enumFirearmTypeAirRifle.
  ///
  /// In pt, this message translates to:
  /// **'Carabina de Pressão'**
  String get enumFirearmTypeAirRifle;

  /// No description provided for @enumFirearmPurposeDefense.
  ///
  /// In pt, this message translates to:
  /// **'Defesa Pessoal'**
  String get enumFirearmPurposeDefense;

  /// No description provided for @enumFirearmPurposeSport.
  ///
  /// In pt, this message translates to:
  /// **'Tiro Esportivo'**
  String get enumFirearmPurposeSport;

  /// No description provided for @enumFirearmPurposeCollection.
  ///
  /// In pt, this message translates to:
  /// **'Coleção'**
  String get enumFirearmPurposeCollection;

  /// No description provided for @enumFirearmPurposeHunting.
  ///
  /// In pt, this message translates to:
  /// **'Caça'**
  String get enumFirearmPurposeHunting;

  /// No description provided for @enumFirearmActionSingleAction.
  ///
  /// In pt, this message translates to:
  /// **'Ação Simples'**
  String get enumFirearmActionSingleAction;

  /// No description provided for @enumFirearmActionDoubleAction.
  ///
  /// In pt, this message translates to:
  /// **'Ação Dupla'**
  String get enumFirearmActionDoubleAction;

  /// No description provided for @enumFirearmActionBoltAction.
  ///
  /// In pt, this message translates to:
  /// **'Repetição por Ferrolho'**
  String get enumFirearmActionBoltAction;

  /// No description provided for @enumFirearmActionSemiAutomatic.
  ///
  /// In pt, this message translates to:
  /// **'Semiautomática'**
  String get enumFirearmActionSemiAutomatic;

  /// No description provided for @enumFirearmActionAutomatic.
  ///
  /// In pt, this message translates to:
  /// **'Automática'**
  String get enumFirearmActionAutomatic;

  /// No description provided for @enumFirearmActionPumpAction.
  ///
  /// In pt, this message translates to:
  /// **'Repetição por Bomba (Pump)'**
  String get enumFirearmActionPumpAction;

  /// No description provided for @enumFirearmActionLeverAction.
  ///
  /// In pt, this message translates to:
  /// **'Ação por Alavanca'**
  String get enumFirearmActionLeverAction;

  /// No description provided for @enumFirearmActionBreakAction.
  ///
  /// In pt, this message translates to:
  /// **'Basculante'**
  String get enumFirearmActionBreakAction;

  /// No description provided for @enumUsageTypePermitted.
  ///
  /// In pt, this message translates to:
  /// **'Permitido'**
  String get enumUsageTypePermitted;

  /// No description provided for @enumUsageTypeRestricted.
  ///
  /// In pt, this message translates to:
  /// **'Restrito'**
  String get enumUsageTypeRestricted;

  /// No description provided for @documentListTitle.
  ///
  /// In pt, this message translates to:
  /// **'Meus Documentos'**
  String get documentListTitle;

  /// No description provided for @documentFormTitle.
  ///
  /// In pt, this message translates to:
  /// **'Dados do Documento'**
  String get documentFormTitle;

  /// No description provided for @documentType.
  ///
  /// In pt, this message translates to:
  /// **'Tipo de Documento'**
  String get documentType;

  /// No description provided for @documentNumber.
  ///
  /// In pt, this message translates to:
  /// **'Número'**
  String get documentNumber;

  /// No description provided for @documentExpiry.
  ///
  /// In pt, this message translates to:
  /// **'Data de Vencimento'**
  String get documentExpiry;

  /// No description provided for @documentAttachment.
  ///
  /// In pt, this message translates to:
  /// **'Anexo/Arquivo'**
  String get documentAttachment;

  /// No description provided for @documentRegistryBody.
  ///
  /// In pt, this message translates to:
  /// **'Órgão'**
  String get documentRegistryBody;

  /// No description provided for @enumDocumentTypeCr.
  ///
  /// In pt, this message translates to:
  /// **'CR'**
  String get enumDocumentTypeCr;

  /// No description provided for @enumDocumentTypeCraf.
  ///
  /// In pt, this message translates to:
  /// **'CRAF'**
  String get enumDocumentTypeCraf;

  /// No description provided for @enumDocumentTypeGt.
  ///
  /// In pt, this message translates to:
  /// **'Guia de Tráfego'**
  String get enumDocumentTypeGt;

  /// No description provided for @enumDocumentTypeNf.
  ///
  /// In pt, this message translates to:
  /// **'Nota Fiscal'**
  String get enumDocumentTypeNf;

  /// No description provided for @enumRegistryBodySigma.
  ///
  /// In pt, this message translates to:
  /// **'SIGMA'**
  String get enumRegistryBodySigma;

  /// No description provided for @enumRegistryBodySinarm.
  ///
  /// In pt, this message translates to:
  /// **'SINARM'**
  String get enumRegistryBodySinarm;

  /// No description provided for @accessoryListTitle.
  ///
  /// In pt, this message translates to:
  /// **'Meus Acessórios'**
  String get accessoryListTitle;

  /// No description provided for @accessoryFormTitle.
  ///
  /// In pt, this message translates to:
  /// **'Dados do Acessório'**
  String get accessoryFormTitle;

  /// No description provided for @accessoryType.
  ///
  /// In pt, this message translates to:
  /// **'Tipo de Acessório'**
  String get accessoryType;

  /// No description provided for @accessoryManufacturer.
  ///
  /// In pt, this message translates to:
  /// **'Fabricante'**
  String get accessoryManufacturer;

  /// No description provided for @accessoryModel.
  ///
  /// In pt, this message translates to:
  /// **'Modelo'**
  String get accessoryModel;

  /// No description provided for @accessorySerialNumber.
  ///
  /// In pt, this message translates to:
  /// **'Número de Série'**
  String get accessorySerialNumber;

  /// No description provided for @enumAccessoryTypePress.
  ///
  /// In pt, this message translates to:
  /// **'Prensa de Recarga'**
  String get enumAccessoryTypePress;

  /// No description provided for @enumAccessoryTypeDie.
  ///
  /// In pt, this message translates to:
  /// **'Die de Recarga'**
  String get enumAccessoryTypeDie;

  /// No description provided for @enumAccessoryTypeScope.
  ///
  /// In pt, this message translates to:
  /// **'Luneta'**
  String get enumAccessoryTypeScope;

  /// No description provided for @enumAccessoryTypeRedDot.
  ///
  /// In pt, this message translates to:
  /// **'Red Dot'**
  String get enumAccessoryTypeRedDot;

  /// No description provided for @enumAccessoryTypeLaser.
  ///
  /// In pt, this message translates to:
  /// **'Mira Laser'**
  String get enumAccessoryTypeLaser;

  /// No description provided for @enumAccessoryTypeSilencer.
  ///
  /// In pt, this message translates to:
  /// **'Silenciador / Supressor'**
  String get enumAccessoryTypeSilencer;

  /// No description provided for @enumAccessoryTypeMagazine.
  ///
  /// In pt, this message translates to:
  /// **'Carregador'**
  String get enumAccessoryTypeMagazine;

  /// No description provided for @enumAccessoryTypeGrip.
  ///
  /// In pt, this message translates to:
  /// **'Empunhadura / Grip'**
  String get enumAccessoryTypeGrip;

  /// No description provided for @enumAccessoryTypeHolster.
  ///
  /// In pt, this message translates to:
  /// **'Coldre'**
  String get enumAccessoryTypeHolster;

  /// No description provided for @enumAccessoryTypeBoxCase.
  ///
  /// In pt, this message translates to:
  /// **'Maleta / Case'**
  String get enumAccessoryTypeBoxCase;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
