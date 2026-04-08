/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'access_control/role_permission.dart' as _i2;
import 'access_control/security_role.dart' as _i3;
import 'access_control/user_role.dart' as _i4;
import 'common/accessory.dart' as _i5;
import 'common/address.dart' as _i6;
import 'common/document.dart' as _i7;
import 'common/one_shot_exception.dart' as _i8;
import 'common/supply_stock.dart' as _i9;
import 'common/user_profile.dart' as _i10;
import 'company/company.dart' as _i11;
import 'company/company_type.dart' as _i12;
import 'company/membership.dart' as _i13;
import 'company/range_visit.dart' as _i14;
import 'enums/access_level.enum.dart' as _i15;
import 'enums/accessory.enum.dart' as _i16;
import 'enums/app_module.enum.dart' as _i17;
import 'enums/asaas_webhook_event_type.enum.dart' as _i18;
import 'enums/conservation_state.enum.dart' as _i19;
import 'enums/currency.enum.dart' as _i20;
import 'enums/document_type.enum.dart' as _i21;
import 'enums/financial_entry_status.dart' as _i22;
import 'enums/financial_entry_type.dart' as _i23;
import 'enums/firearm_action.enum.dart' as _i24;
import 'enums/firearm_purpose.enum.dart' as _i25;
import 'enums/firearm_type.enum.dart' as _i26;
import 'enums/gender.enum.dart' as _i27;
import 'enums/invoice_status.enum.dart' as _i28;
import 'enums/membership_status.dart' as _i29;
import 'enums/payment_method.enum.dart' as _i30;
import 'enums/payment_status.enum.dart' as _i31;
import 'enums/plan_periodicity.enum.dart' as _i32;
import 'enums/plan_status.enum.dart' as _i33;
import 'enums/plan_type.enum.dart' as _i34;
import 'enums/platform_app.enum.dart' as _i35;
import 'enums/registry_body.enum.dart' as _i36;
import 'enums/usage_type.enum.dart' as _i37;
import 'enums/user_status.enum.dart' as _i38;
import 'enums/user_type.enum.dart' as _i39;
import 'finance/asaas_webhook_event.dart' as _i40;
import 'finance/bank.dart' as _i41;
import 'finance/bank_account.dart' as _i42;
import 'finance/financial_entry.dart' as _i43;
import 'finance/invoice.dart' as _i44;
import 'finance/invoice_item.dart' as _i45;
import 'finance/payment.dart' as _i46;
import 'greeting.dart' as _i47;
import 'gunsmith/gunsmith.dart' as _i48;
import 'gunsmith/gunsmith_client.dart' as _i49;
import 'gunsmith/service_order.dart' as _i50;
import 'gunsmith/service_order_item.dart' as _i51;
import 'product/product.dart' as _i52;
import 'product/product_group.dart' as _i53;
import 'shooter/ammunition_stock.dart' as _i54;
import 'shooter/firearm.dart' as _i55;
import 'shooter/reload_session.dart' as _i56;
import 'shooter/reload_test.dart' as _i57;
import 'shooter/training.dart' as _i58;
import 'subscription/subscription_plan.dart' as _i59;
import 'package:oneshot_client/src/protocol/common/accessory.dart' as _i60;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _i61;
import 'package:oneshot_client/src/protocol/finance/bank_account.dart' as _i62;
import 'package:oneshot_client/src/protocol/finance/bank.dart' as _i63;
import 'package:oneshot_client/src/protocol/company/company.dart' as _i64;
import 'package:oneshot_client/src/protocol/company/membership.dart' as _i65;
import 'package:oneshot_client/src/protocol/company/range_visit.dart' as _i66;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i67;
import 'package:oneshot_client/src/protocol/finance/financial_entry.dart'
    as _i68;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i69;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart' as _i70;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i71;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i72;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _i73;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart' as _i74;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _i75;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _i76;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i77;
import 'package:oneshot_client/src/protocol/product/product_group.dart' as _i78;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i79;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i80;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i81;
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _i82;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _i83;
import 'package:oneshot_client/src/protocol/subscription/subscription_plan.dart'
    as _i84;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i85;
import 'package:oneshot_client/src/protocol/common/user_profile.dart' as _i86;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i87;
export 'access_control/role_permission.dart';
export 'access_control/security_role.dart';
export 'access_control/user_role.dart';
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/one_shot_exception.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
export 'company/company.dart';
export 'company/company_type.dart';
export 'company/membership.dart';
export 'company/range_visit.dart';
export 'enums/access_level.enum.dart';
export 'enums/accessory.enum.dart';
export 'enums/app_module.enum.dart';
export 'enums/asaas_webhook_event_type.enum.dart';
export 'enums/conservation_state.enum.dart';
export 'enums/currency.enum.dart';
export 'enums/document_type.enum.dart';
export 'enums/financial_entry_status.dart';
export 'enums/financial_entry_type.dart';
export 'enums/firearm_action.enum.dart';
export 'enums/firearm_purpose.enum.dart';
export 'enums/firearm_type.enum.dart';
export 'enums/gender.enum.dart';
export 'enums/invoice_status.enum.dart';
export 'enums/membership_status.dart';
export 'enums/payment_method.enum.dart';
export 'enums/payment_status.enum.dart';
export 'enums/plan_periodicity.enum.dart';
export 'enums/plan_status.enum.dart';
export 'enums/plan_type.enum.dart';
export 'enums/platform_app.enum.dart';
export 'enums/registry_body.enum.dart';
export 'enums/usage_type.enum.dart';
export 'enums/user_status.enum.dart';
export 'enums/user_type.enum.dart';
export 'finance/asaas_webhook_event.dart';
export 'finance/bank.dart';
export 'finance/bank_account.dart';
export 'finance/financial_entry.dart';
export 'finance/invoice.dart';
export 'finance/invoice_item.dart';
export 'finance/payment.dart';
export 'greeting.dart';
export 'gunsmith/gunsmith.dart';
export 'gunsmith/gunsmith_client.dart';
export 'gunsmith/service_order.dart';
export 'gunsmith/service_order_item.dart';
export 'product/product.dart';
export 'product/product_group.dart';
export 'shooter/ammunition_stock.dart';
export 'shooter/firearm.dart';
export 'shooter/reload_session.dart';
export 'shooter/reload_test.dart';
export 'shooter/training.dart';
export 'subscription/subscription_plan.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.RolePermission) {
      return _i2.RolePermission.fromJson(data) as T;
    }
    if (t == _i3.SecurityRole) {
      return _i3.SecurityRole.fromJson(data) as T;
    }
    if (t == _i4.UserRole) {
      return _i4.UserRole.fromJson(data) as T;
    }
    if (t == _i5.Accessory) {
      return _i5.Accessory.fromJson(data) as T;
    }
    if (t == _i6.Address) {
      return _i6.Address.fromJson(data) as T;
    }
    if (t == _i7.Document) {
      return _i7.Document.fromJson(data) as T;
    }
    if (t == _i8.AppException) {
      return _i8.AppException.fromJson(data) as T;
    }
    if (t == _i9.SupplyStock) {
      return _i9.SupplyStock.fromJson(data) as T;
    }
    if (t == _i10.UserProfile) {
      return _i10.UserProfile.fromJson(data) as T;
    }
    if (t == _i11.Company) {
      return _i11.Company.fromJson(data) as T;
    }
    if (t == _i12.CompanyType) {
      return _i12.CompanyType.fromJson(data) as T;
    }
    if (t == _i13.Membership) {
      return _i13.Membership.fromJson(data) as T;
    }
    if (t == _i14.RangeVisit) {
      return _i14.RangeVisit.fromJson(data) as T;
    }
    if (t == _i15.AccessLevel) {
      return _i15.AccessLevel.fromJson(data) as T;
    }
    if (t == _i16.AccessoryType) {
      return _i16.AccessoryType.fromJson(data) as T;
    }
    if (t == _i17.AppModule) {
      return _i17.AppModule.fromJson(data) as T;
    }
    if (t == _i18.AsaasWebhookEventType) {
      return _i18.AsaasWebhookEventType.fromJson(data) as T;
    }
    if (t == _i19.ConservationState) {
      return _i19.ConservationState.fromJson(data) as T;
    }
    if (t == _i20.Currency) {
      return _i20.Currency.fromJson(data) as T;
    }
    if (t == _i21.DocumentType) {
      return _i21.DocumentType.fromJson(data) as T;
    }
    if (t == _i22.FinancialEntryStatus) {
      return _i22.FinancialEntryStatus.fromJson(data) as T;
    }
    if (t == _i23.FinancialEntryType) {
      return _i23.FinancialEntryType.fromJson(data) as T;
    }
    if (t == _i24.FirearmAction) {
      return _i24.FirearmAction.fromJson(data) as T;
    }
    if (t == _i25.FirearmPurpose) {
      return _i25.FirearmPurpose.fromJson(data) as T;
    }
    if (t == _i26.FirearmType) {
      return _i26.FirearmType.fromJson(data) as T;
    }
    if (t == _i27.Gender) {
      return _i27.Gender.fromJson(data) as T;
    }
    if (t == _i28.InvoiceStatus) {
      return _i28.InvoiceStatus.fromJson(data) as T;
    }
    if (t == _i29.MembershipStatus) {
      return _i29.MembershipStatus.fromJson(data) as T;
    }
    if (t == _i30.PaymentMethod) {
      return _i30.PaymentMethod.fromJson(data) as T;
    }
    if (t == _i31.PaymentStatus) {
      return _i31.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i32.PlanPeriodicity) {
      return _i32.PlanPeriodicity.fromJson(data) as T;
    }
    if (t == _i33.PlanStatus) {
      return _i33.PlanStatus.fromJson(data) as T;
    }
    if (t == _i34.PlanType) {
      return _i34.PlanType.fromJson(data) as T;
    }
    if (t == _i35.PlatformApp) {
      return _i35.PlatformApp.fromJson(data) as T;
    }
    if (t == _i36.RegistryBody) {
      return _i36.RegistryBody.fromJson(data) as T;
    }
    if (t == _i37.UsageType) {
      return _i37.UsageType.fromJson(data) as T;
    }
    if (t == _i38.UserStatus) {
      return _i38.UserStatus.fromJson(data) as T;
    }
    if (t == _i39.UserType) {
      return _i39.UserType.fromJson(data) as T;
    }
    if (t == _i40.AsaasWebhookEvent) {
      return _i40.AsaasWebhookEvent.fromJson(data) as T;
    }
    if (t == _i41.Bank) {
      return _i41.Bank.fromJson(data) as T;
    }
    if (t == _i42.BankAccount) {
      return _i42.BankAccount.fromJson(data) as T;
    }
    if (t == _i43.FinancialEntry) {
      return _i43.FinancialEntry.fromJson(data) as T;
    }
    if (t == _i44.Invoice) {
      return _i44.Invoice.fromJson(data) as T;
    }
    if (t == _i45.InvoiceItem) {
      return _i45.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i46.Payment) {
      return _i46.Payment.fromJson(data) as T;
    }
    if (t == _i47.Greeting) {
      return _i47.Greeting.fromJson(data) as T;
    }
    if (t == _i48.Gunsmith) {
      return _i48.Gunsmith.fromJson(data) as T;
    }
    if (t == _i49.GunsmithClient) {
      return _i49.GunsmithClient.fromJson(data) as T;
    }
    if (t == _i50.ServiceOrder) {
      return _i50.ServiceOrder.fromJson(data) as T;
    }
    if (t == _i51.ServiceOrderItem) {
      return _i51.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _i52.Product) {
      return _i52.Product.fromJson(data) as T;
    }
    if (t == _i53.ProductGroup) {
      return _i53.ProductGroup.fromJson(data) as T;
    }
    if (t == _i54.AmmunitionStock) {
      return _i54.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i55.Firearm) {
      return _i55.Firearm.fromJson(data) as T;
    }
    if (t == _i56.ReloadSession) {
      return _i56.ReloadSession.fromJson(data) as T;
    }
    if (t == _i57.ReloadTest) {
      return _i57.ReloadTest.fromJson(data) as T;
    }
    if (t == _i58.Training) {
      return _i58.Training.fromJson(data) as T;
    }
    if (t == _i59.SubscriptionPlan) {
      return _i59.SubscriptionPlan.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.RolePermission?>()) {
      return (data != null ? _i2.RolePermission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.SecurityRole?>()) {
      return (data != null ? _i3.SecurityRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.UserRole?>()) {
      return (data != null ? _i4.UserRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Accessory?>()) {
      return (data != null ? _i5.Accessory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Address?>()) {
      return (data != null ? _i6.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Document?>()) {
      return (data != null ? _i7.Document.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.AppException?>()) {
      return (data != null ? _i8.AppException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.SupplyStock?>()) {
      return (data != null ? _i9.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.UserProfile?>()) {
      return (data != null ? _i10.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Company?>()) {
      return (data != null ? _i11.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.CompanyType?>()) {
      return (data != null ? _i12.CompanyType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Membership?>()) {
      return (data != null ? _i13.Membership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.RangeVisit?>()) {
      return (data != null ? _i14.RangeVisit.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.AccessLevel?>()) {
      return (data != null ? _i15.AccessLevel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.AccessoryType?>()) {
      return (data != null ? _i16.AccessoryType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.AppModule?>()) {
      return (data != null ? _i17.AppModule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.AsaasWebhookEventType?>()) {
      return (data != null ? _i18.AsaasWebhookEventType.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i19.ConservationState?>()) {
      return (data != null ? _i19.ConservationState.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.Currency?>()) {
      return (data != null ? _i20.Currency.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.DocumentType?>()) {
      return (data != null ? _i21.DocumentType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.FinancialEntryStatus?>()) {
      return (data != null ? _i22.FinancialEntryStatus.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i23.FinancialEntryType?>()) {
      return (data != null ? _i23.FinancialEntryType.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i24.FirearmAction?>()) {
      return (data != null ? _i24.FirearmAction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.FirearmPurpose?>()) {
      return (data != null ? _i25.FirearmPurpose.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.FirearmType?>()) {
      return (data != null ? _i26.FirearmType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.Gender?>()) {
      return (data != null ? _i27.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.InvoiceStatus?>()) {
      return (data != null ? _i28.InvoiceStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.MembershipStatus?>()) {
      return (data != null ? _i29.MembershipStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.PaymentMethod?>()) {
      return (data != null ? _i30.PaymentMethod.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.PaymentStatus?>()) {
      return (data != null ? _i31.PaymentStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.PlanPeriodicity?>()) {
      return (data != null ? _i32.PlanPeriodicity.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.PlanStatus?>()) {
      return (data != null ? _i33.PlanStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.PlanType?>()) {
      return (data != null ? _i34.PlanType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.PlatformApp?>()) {
      return (data != null ? _i35.PlatformApp.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.RegistryBody?>()) {
      return (data != null ? _i36.RegistryBody.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.UsageType?>()) {
      return (data != null ? _i37.UsageType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i38.UserStatus?>()) {
      return (data != null ? _i38.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i39.UserType?>()) {
      return (data != null ? _i39.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i40.AsaasWebhookEvent?>()) {
      return (data != null ? _i40.AsaasWebhookEvent.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i41.Bank?>()) {
      return (data != null ? _i41.Bank.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i42.BankAccount?>()) {
      return (data != null ? _i42.BankAccount.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i43.FinancialEntry?>()) {
      return (data != null ? _i43.FinancialEntry.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i44.Invoice?>()) {
      return (data != null ? _i44.Invoice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i45.InvoiceItem?>()) {
      return (data != null ? _i45.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i46.Payment?>()) {
      return (data != null ? _i46.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i47.Greeting?>()) {
      return (data != null ? _i47.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i48.Gunsmith?>()) {
      return (data != null ? _i48.Gunsmith.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i49.GunsmithClient?>()) {
      return (data != null ? _i49.GunsmithClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i50.ServiceOrder?>()) {
      return (data != null ? _i50.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i51.ServiceOrderItem?>()) {
      return (data != null ? _i51.ServiceOrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i52.Product?>()) {
      return (data != null ? _i52.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i53.ProductGroup?>()) {
      return (data != null ? _i53.ProductGroup.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i54.AmmunitionStock?>()) {
      return (data != null ? _i54.AmmunitionStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i55.Firearm?>()) {
      return (data != null ? _i55.Firearm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i56.ReloadSession?>()) {
      return (data != null ? _i56.ReloadSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i57.ReloadTest?>()) {
      return (data != null ? _i57.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i58.Training?>()) {
      return (data != null ? _i58.Training.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i59.SubscriptionPlan?>()) {
      return (data != null ? _i59.SubscriptionPlan.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i39.UserType>) {
      return (data as List).map((e) => deserialize<_i39.UserType>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<_i39.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i39.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_i60.Accessory>) {
      return (data as List).map((e) => deserialize<_i60.Accessory>(e)).toList()
          as T;
    }
    if (t == List<_i61.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_i61.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i62.BankAccount>) {
      return (data as List)
              .map((e) => deserialize<_i62.BankAccount>(e))
              .toList()
          as T;
    }
    if (t == List<_i63.Bank>) {
      return (data as List).map((e) => deserialize<_i63.Bank>(e)).toList() as T;
    }
    if (t == List<_i64.Company>) {
      return (data as List).map((e) => deserialize<_i64.Company>(e)).toList()
          as T;
    }
    if (t == List<_i65.Membership>) {
      return (data as List).map((e) => deserialize<_i65.Membership>(e)).toList()
          as T;
    }
    if (t == List<_i66.RangeVisit>) {
      return (data as List).map((e) => deserialize<_i66.RangeVisit>(e)).toList()
          as T;
    }
    if (t == List<_i67.Document>) {
      return (data as List).map((e) => deserialize<_i67.Document>(e)).toList()
          as T;
    }
    if (t == List<_i68.FinancialEntry>) {
      return (data as List)
              .map((e) => deserialize<_i68.FinancialEntry>(e))
              .toList()
          as T;
    }
    if (t == List<_i69.Firearm>) {
      return (data as List).map((e) => deserialize<_i69.Firearm>(e)).toList()
          as T;
    }
    if (t == List<_i70.Gunsmith>) {
      return (data as List).map((e) => deserialize<_i70.Gunsmith>(e)).toList()
          as T;
    }
    if (t == List<_i71.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_i71.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_i72.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_i72.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i73.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_i73.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_i74.InvoiceItem>) {
      return (data as List)
              .map((e) => deserialize<_i74.InvoiceItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i75.Invoice>) {
      return (data as List).map((e) => deserialize<_i75.Invoice>(e)).toList()
          as T;
    }
    if (t == List<_i76.Payment>) {
      return (data as List).map((e) => deserialize<_i76.Payment>(e)).toList()
          as T;
    }
    if (t == List<_i77.Product>) {
      return (data as List).map((e) => deserialize<_i77.Product>(e)).toList()
          as T;
    }
    if (t == List<_i78.ProductGroup>) {
      return (data as List)
              .map((e) => deserialize<_i78.ProductGroup>(e))
              .toList()
          as T;
    }
    if (t == List<_i79.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_i79.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_i80.ReloadTest>) {
      return (data as List).map((e) => deserialize<_i80.ReloadTest>(e)).toList()
          as T;
    }
    if (t == List<_i81.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i81.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i82.RolePermission>) {
      return (data as List)
              .map((e) => deserialize<_i82.RolePermission>(e))
              .toList()
          as T;
    }
    if (t == List<_i83.SecurityRole>) {
      return (data as List)
              .map((e) => deserialize<_i83.SecurityRole>(e))
              .toList()
          as T;
    }
    if (t == List<_i84.SubscriptionPlan>) {
      return (data as List)
              .map((e) => deserialize<_i84.SubscriptionPlan>(e))
              .toList()
          as T;
    }
    if (t == List<_i85.Training>) {
      return (data as List).map((e) => deserialize<_i85.Training>(e)).toList()
          as T;
    }
    if (t == List<_i86.UserProfile>) {
      return (data as List)
              .map((e) => deserialize<_i86.UserProfile>(e))
              .toList()
          as T;
    }
    if (t == List<_i1.UuidValue>) {
      return (data as List).map((e) => deserialize<_i1.UuidValue>(e)).toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    try {
      return _i87.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.RolePermission => 'RolePermission',
      _i3.SecurityRole => 'SecurityRole',
      _i4.UserRole => 'UserRole',
      _i5.Accessory => 'Accessory',
      _i6.Address => 'Address',
      _i7.Document => 'Document',
      _i8.AppException => 'AppException',
      _i9.SupplyStock => 'SupplyStock',
      _i10.UserProfile => 'UserProfile',
      _i11.Company => 'Company',
      _i12.CompanyType => 'CompanyType',
      _i13.Membership => 'Membership',
      _i14.RangeVisit => 'RangeVisit',
      _i15.AccessLevel => 'AccessLevel',
      _i16.AccessoryType => 'AccessoryType',
      _i17.AppModule => 'AppModule',
      _i18.AsaasWebhookEventType => 'AsaasWebhookEventType',
      _i19.ConservationState => 'ConservationState',
      _i20.Currency => 'Currency',
      _i21.DocumentType => 'DocumentType',
      _i22.FinancialEntryStatus => 'FinancialEntryStatus',
      _i23.FinancialEntryType => 'FinancialEntryType',
      _i24.FirearmAction => 'FirearmAction',
      _i25.FirearmPurpose => 'FirearmPurpose',
      _i26.FirearmType => 'FirearmType',
      _i27.Gender => 'Gender',
      _i28.InvoiceStatus => 'InvoiceStatus',
      _i29.MembershipStatus => 'MembershipStatus',
      _i30.PaymentMethod => 'PaymentMethod',
      _i31.PaymentStatus => 'PaymentStatus',
      _i32.PlanPeriodicity => 'PlanPeriodicity',
      _i33.PlanStatus => 'PlanStatus',
      _i34.PlanType => 'PlanType',
      _i35.PlatformApp => 'PlatformApp',
      _i36.RegistryBody => 'RegistryBody',
      _i37.UsageType => 'UsageType',
      _i38.UserStatus => 'UserStatus',
      _i39.UserType => 'UserType',
      _i40.AsaasWebhookEvent => 'AsaasWebhookEvent',
      _i41.Bank => 'Bank',
      _i42.BankAccount => 'BankAccount',
      _i43.FinancialEntry => 'FinancialEntry',
      _i44.Invoice => 'Invoice',
      _i45.InvoiceItem => 'InvoiceItem',
      _i46.Payment => 'Payment',
      _i47.Greeting => 'Greeting',
      _i48.Gunsmith => 'Gunsmith',
      _i49.GunsmithClient => 'GunsmithClient',
      _i50.ServiceOrder => 'ServiceOrder',
      _i51.ServiceOrderItem => 'ServiceOrderItem',
      _i52.Product => 'Product',
      _i53.ProductGroup => 'ProductGroup',
      _i54.AmmunitionStock => 'AmmunitionStock',
      _i55.Firearm => 'Firearm',
      _i56.ReloadSession => 'ReloadSession',
      _i57.ReloadTest => 'ReloadTest',
      _i58.Training => 'Training',
      _i59.SubscriptionPlan => 'SubscriptionPlan',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('oneshot.', '');
    }

    switch (data) {
      case _i2.RolePermission():
        return 'RolePermission';
      case _i3.SecurityRole():
        return 'SecurityRole';
      case _i4.UserRole():
        return 'UserRole';
      case _i5.Accessory():
        return 'Accessory';
      case _i6.Address():
        return 'Address';
      case _i7.Document():
        return 'Document';
      case _i8.AppException():
        return 'AppException';
      case _i9.SupplyStock():
        return 'SupplyStock';
      case _i10.UserProfile():
        return 'UserProfile';
      case _i11.Company():
        return 'Company';
      case _i12.CompanyType():
        return 'CompanyType';
      case _i13.Membership():
        return 'Membership';
      case _i14.RangeVisit():
        return 'RangeVisit';
      case _i15.AccessLevel():
        return 'AccessLevel';
      case _i16.AccessoryType():
        return 'AccessoryType';
      case _i17.AppModule():
        return 'AppModule';
      case _i18.AsaasWebhookEventType():
        return 'AsaasWebhookEventType';
      case _i19.ConservationState():
        return 'ConservationState';
      case _i20.Currency():
        return 'Currency';
      case _i21.DocumentType():
        return 'DocumentType';
      case _i22.FinancialEntryStatus():
        return 'FinancialEntryStatus';
      case _i23.FinancialEntryType():
        return 'FinancialEntryType';
      case _i24.FirearmAction():
        return 'FirearmAction';
      case _i25.FirearmPurpose():
        return 'FirearmPurpose';
      case _i26.FirearmType():
        return 'FirearmType';
      case _i27.Gender():
        return 'Gender';
      case _i28.InvoiceStatus():
        return 'InvoiceStatus';
      case _i29.MembershipStatus():
        return 'MembershipStatus';
      case _i30.PaymentMethod():
        return 'PaymentMethod';
      case _i31.PaymentStatus():
        return 'PaymentStatus';
      case _i32.PlanPeriodicity():
        return 'PlanPeriodicity';
      case _i33.PlanStatus():
        return 'PlanStatus';
      case _i34.PlanType():
        return 'PlanType';
      case _i35.PlatformApp():
        return 'PlatformApp';
      case _i36.RegistryBody():
        return 'RegistryBody';
      case _i37.UsageType():
        return 'UsageType';
      case _i38.UserStatus():
        return 'UserStatus';
      case _i39.UserType():
        return 'UserType';
      case _i40.AsaasWebhookEvent():
        return 'AsaasWebhookEvent';
      case _i41.Bank():
        return 'Bank';
      case _i42.BankAccount():
        return 'BankAccount';
      case _i43.FinancialEntry():
        return 'FinancialEntry';
      case _i44.Invoice():
        return 'Invoice';
      case _i45.InvoiceItem():
        return 'InvoiceItem';
      case _i46.Payment():
        return 'Payment';
      case _i47.Greeting():
        return 'Greeting';
      case _i48.Gunsmith():
        return 'Gunsmith';
      case _i49.GunsmithClient():
        return 'GunsmithClient';
      case _i50.ServiceOrder():
        return 'ServiceOrder';
      case _i51.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _i52.Product():
        return 'Product';
      case _i53.ProductGroup():
        return 'ProductGroup';
      case _i54.AmmunitionStock():
        return 'AmmunitionStock';
      case _i55.Firearm():
        return 'Firearm';
      case _i56.ReloadSession():
        return 'ReloadSession';
      case _i57.ReloadTest():
        return 'ReloadTest';
      case _i58.Training():
        return 'Training';
      case _i59.SubscriptionPlan():
        return 'SubscriptionPlan';
    }
    className = _i87.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'RolePermission') {
      return deserialize<_i2.RolePermission>(data['data']);
    }
    if (dataClassName == 'SecurityRole') {
      return deserialize<_i3.SecurityRole>(data['data']);
    }
    if (dataClassName == 'UserRole') {
      return deserialize<_i4.UserRole>(data['data']);
    }
    if (dataClassName == 'Accessory') {
      return deserialize<_i5.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_i6.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i7.Document>(data['data']);
    }
    if (dataClassName == 'AppException') {
      return deserialize<_i8.AppException>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i9.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i10.UserProfile>(data['data']);
    }
    if (dataClassName == 'Company') {
      return deserialize<_i11.Company>(data['data']);
    }
    if (dataClassName == 'CompanyType') {
      return deserialize<_i12.CompanyType>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i13.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_i14.RangeVisit>(data['data']);
    }
    if (dataClassName == 'AccessLevel') {
      return deserialize<_i15.AccessLevel>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_i16.AccessoryType>(data['data']);
    }
    if (dataClassName == 'AppModule') {
      return deserialize<_i17.AppModule>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEventType') {
      return deserialize<_i18.AsaasWebhookEventType>(data['data']);
    }
    if (dataClassName == 'ConservationState') {
      return deserialize<_i19.ConservationState>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_i20.Currency>(data['data']);
    }
    if (dataClassName == 'DocumentType') {
      return deserialize<_i21.DocumentType>(data['data']);
    }
    if (dataClassName == 'FinancialEntryStatus') {
      return deserialize<_i22.FinancialEntryStatus>(data['data']);
    }
    if (dataClassName == 'FinancialEntryType') {
      return deserialize<_i23.FinancialEntryType>(data['data']);
    }
    if (dataClassName == 'FirearmAction') {
      return deserialize<_i24.FirearmAction>(data['data']);
    }
    if (dataClassName == 'FirearmPurpose') {
      return deserialize<_i25.FirearmPurpose>(data['data']);
    }
    if (dataClassName == 'FirearmType') {
      return deserialize<_i26.FirearmType>(data['data']);
    }
    if (dataClassName == 'Gender') {
      return deserialize<_i27.Gender>(data['data']);
    }
    if (dataClassName == 'InvoiceStatus') {
      return deserialize<_i28.InvoiceStatus>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_i29.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_i30.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_i31.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'PlanPeriodicity') {
      return deserialize<_i32.PlanPeriodicity>(data['data']);
    }
    if (dataClassName == 'PlanStatus') {
      return deserialize<_i33.PlanStatus>(data['data']);
    }
    if (dataClassName == 'PlanType') {
      return deserialize<_i34.PlanType>(data['data']);
    }
    if (dataClassName == 'PlatformApp') {
      return deserialize<_i35.PlatformApp>(data['data']);
    }
    if (dataClassName == 'RegistryBody') {
      return deserialize<_i36.RegistryBody>(data['data']);
    }
    if (dataClassName == 'UsageType') {
      return deserialize<_i37.UsageType>(data['data']);
    }
    if (dataClassName == 'UserStatus') {
      return deserialize<_i38.UserStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i39.UserType>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEvent') {
      return deserialize<_i40.AsaasWebhookEvent>(data['data']);
    }
    if (dataClassName == 'Bank') {
      return deserialize<_i41.Bank>(data['data']);
    }
    if (dataClassName == 'BankAccount') {
      return deserialize<_i42.BankAccount>(data['data']);
    }
    if (dataClassName == 'FinancialEntry') {
      return deserialize<_i43.FinancialEntry>(data['data']);
    }
    if (dataClassName == 'Invoice') {
      return deserialize<_i44.Invoice>(data['data']);
    }
    if (dataClassName == 'InvoiceItem') {
      return deserialize<_i45.InvoiceItem>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i46.Payment>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i47.Greeting>(data['data']);
    }
    if (dataClassName == 'Gunsmith') {
      return deserialize<_i48.Gunsmith>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_i49.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_i50.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_i51.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i52.Product>(data['data']);
    }
    if (dataClassName == 'ProductGroup') {
      return deserialize<_i53.ProductGroup>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_i54.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i55.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_i56.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_i57.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_i58.Training>(data['data']);
    }
    if (dataClassName == 'SubscriptionPlan') {
      return deserialize<_i59.SubscriptionPlan>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i87.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i87.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
