import 'package:flutter/widgets.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:shooter_app/l10n/app_localizations.dart';

extension LocalizationContext on BuildContext {
  /// Acesso facilitado e tipado às mensagens localizadas.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension LocalizedEnums on AppLocalizations {
  /// Tradução tipada para tipos de armas.
  String firearmTypeLabel(FirearmType type) {
    switch (type) {
      case FirearmType.pistol:
        return enumFirearmTypePistol;
      case FirearmType.revolver:
        return enumFirearmTypeRevolver;
      case FirearmType.rifle:
        return enumFirearmTypeRifle;
      case FirearmType.carbine:
        return enumFirearmTypeCarbine;
      case FirearmType.shotgun:
        return enumFirearmTypeShotgun;
      case FirearmType.machine_gun:
        return enumFirearmTypeMachineGun;
      case FirearmType.submachine_gun:
        return enumFirearmTypeSubmachineGun;
      case FirearmType.air_pistol:
        return enumFirearmTypeAirPistol;
      case FirearmType.air_rifle:
        return enumFirearmTypeAirRifle;
    }
  }

  /// Tradução tipada para finalidades de armas.
  String firearmPurposeLabel(FirearmPurpose purpose) {
    switch (purpose) {
      case FirearmPurpose.defense:
        return enumFirearmPurposeDefense;
      case FirearmPurpose.sport:
        return enumFirearmPurposeSport;
      case FirearmPurpose.collection:
        return enumFirearmPurposeCollection;
      case FirearmPurpose.hunting:
        return enumFirearmPurposeHunting;
    }
  }

  /// Tradução tipada para ações mecânicas de armas.
  String firearmActionLabel(FirearmAction action) {
    switch (action) {
      case FirearmAction.singleAction:
        return enumFirearmActionSingleAction;
      case FirearmAction.doubleAction:
        return enumFirearmActionDoubleAction;
      case FirearmAction.boltAction:
        return enumFirearmActionBoltAction;
      case FirearmAction.semiAutomatic:
        return enumFirearmActionSemiAutomatic;
      case FirearmAction.automatic:
        return enumFirearmActionAutomatic;
      case FirearmAction.pumpAction:
        return enumFirearmActionPumpAction;
      case FirearmAction.leverAction:
        return enumFirearmActionLeverAction;
      case FirearmAction.breakAction:
        return enumFirearmActionBreakAction;
    }
  }

  /// Tradução tipada para tipos de uso.
  String usageTypeLabel(UsageType usage) {
    switch (usage) {
      case UsageType.permitted:
        return enumUsageTypePermitted;
      case UsageType.restricted:
        return enumUsageTypeRestricted;
    }
  }

  /// Tradução tipada para tipos de documentos.
  String documentTypeLabel(DocumentType type) {
    switch (type) {
      case DocumentType.cr:
        return enumDocumentTypeCr;
      case DocumentType.craf:
        return enumDocumentTypeCraf;
      case DocumentType.gt:
        return enumDocumentTypeGt;
      case DocumentType.nf:
        return enumDocumentTypeNf;
    }
  }

  /// Tradução tipada para órgãos de registro.
  String registryBodyLabel(RegistryBody body) {
    switch (body) {
      case RegistryBody.sigma:
        return enumRegistryBodySigma;
      case RegistryBody.sinarm:
        return enumRegistryBodySinarm;
    }
  }

  /// Tradução tipada para tipos de acessórios.
  String accessoryTypeLabel(AccessoryType type) {
    switch (type) {
      case AccessoryType.press:
        return enumAccessoryTypePress;
      case AccessoryType.die:
        return enumAccessoryTypeDie;
      case AccessoryType.scope:
        return enumAccessoryTypeScope;
      case AccessoryType.redDot:
        return enumAccessoryTypeRedDot;
      case AccessoryType.laser:
        return enumAccessoryTypeLaser;
      case AccessoryType.silencer:
        return enumAccessoryTypeSilencer;
      case AccessoryType.magazine:
        return enumAccessoryTypeMagazine;
      case AccessoryType.grip:
        return enumAccessoryTypeGrip;
      case AccessoryType.holster:
        return enumAccessoryTypeHolster;
      case AccessoryType.boxCase:
        return enumAccessoryTypeBoxCase;
    }
  }
}
