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
import 'club/club.dart' as _i5;
import 'club/membership.dart' as _i6;
import 'club/range_visit.dart' as _i7;
import 'common/accessory.dart' as _i8;
import 'common/address.dart' as _i9;
import 'common/document.dart' as _i10;
import 'common/supply_stock.dart' as _i11;
import 'common/user_profile.dart' as _i12;
import 'enums/access_level.enum.dart' as _i13;
import 'enums/accessory.enum.dart' as _i14;
import 'enums/app_module.enum.dart' as _i15;
import 'enums/conservation_state.enum.dart' as _i16;
import 'enums/currency.enum.dart' as _i17;
import 'enums/document_type.enum.dart' as _i18;
import 'enums/firearm_action.enum.dart' as _i19;
import 'enums/firearm_purpose.enum.dart' as _i20;
import 'enums/firearm_type.enum.dart' as _i21;
import 'enums/gender.enum.dart' as _i22;
import 'enums/invoice_status.enum.dart' as _i23;
import 'enums/membership_status.dart' as _i24;
import 'enums/payment_method.enum.dart' as _i25;
import 'enums/payment_status.enum.dart' as _i26;
import 'enums/platform_app.enum.dart' as _i27;
import 'enums/registry_body.enum.dart' as _i28;
import 'enums/usage_type.enum.dart' as _i29;
import 'enums/user_status.enum.dart' as _i30;
import 'enums/user_type.enum.dart' as _i31;
import 'finance/invoice.dart' as _i32;
import 'finance/invoice_item.dart' as _i33;
import 'finance/payment.dart' as _i34;
import 'greeting.dart' as _i35;
import 'gunsmith/gunsmith.dart' as _i36;
import 'gunsmith/gunsmith_client.dart' as _i37;
import 'gunsmith/service_order.dart' as _i38;
import 'gunsmith/service_order_item.dart' as _i39;
import 'product/product.dart' as _i40;
import 'product/product_group.dart' as _i41;
import 'shooter/ammunition_stock.dart' as _i42;
import 'shooter/firearm.dart' as _i43;
import 'shooter/reload_session.dart' as _i44;
import 'shooter/reload_test.dart' as _i45;
import 'shooter/training.dart' as _i46;
import 'package:oneshot_client/src/protocol/common/accessory.dart' as _i47;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _i48;
import 'package:oneshot_client/src/protocol/club/club.dart' as _i49;
import 'package:oneshot_client/src/protocol/club/membership.dart' as _i50;
import 'package:oneshot_client/src/protocol/club/range_visit.dart' as _i51;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i52;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i53;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart' as _i54;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i55;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i56;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _i57;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart' as _i58;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _i59;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _i60;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i61;
import 'package:oneshot_client/src/protocol/product/product_group.dart' as _i62;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i63;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i64;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i65;
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _i66;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _i67;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i68;
import 'package:oneshot_client/src/protocol/common/user_profile.dart' as _i69;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i70;
export 'access_control/role_permission.dart';
export 'access_control/security_role.dart';
export 'access_control/user_role.dart';
export 'club/club.dart';
export 'club/membership.dart';
export 'club/range_visit.dart';
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
export 'enums/access_level.enum.dart';
export 'enums/accessory.enum.dart';
export 'enums/app_module.enum.dart';
export 'enums/conservation_state.enum.dart';
export 'enums/currency.enum.dart';
export 'enums/document_type.enum.dart';
export 'enums/firearm_action.enum.dart';
export 'enums/firearm_purpose.enum.dart';
export 'enums/firearm_type.enum.dart';
export 'enums/gender.enum.dart';
export 'enums/invoice_status.enum.dart';
export 'enums/membership_status.dart';
export 'enums/payment_method.enum.dart';
export 'enums/payment_status.enum.dart';
export 'enums/platform_app.enum.dart';
export 'enums/registry_body.enum.dart';
export 'enums/usage_type.enum.dart';
export 'enums/user_status.enum.dart';
export 'enums/user_type.enum.dart';
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
    if (t == _i5.Club) {
      return _i5.Club.fromJson(data) as T;
    }
    if (t == _i6.Membership) {
      return _i6.Membership.fromJson(data) as T;
    }
    if (t == _i7.RangeVisit) {
      return _i7.RangeVisit.fromJson(data) as T;
    }
    if (t == _i8.Accessory) {
      return _i8.Accessory.fromJson(data) as T;
    }
    if (t == _i9.Address) {
      return _i9.Address.fromJson(data) as T;
    }
    if (t == _i10.Document) {
      return _i10.Document.fromJson(data) as T;
    }
    if (t == _i11.SupplyStock) {
      return _i11.SupplyStock.fromJson(data) as T;
    }
    if (t == _i12.UserProfile) {
      return _i12.UserProfile.fromJson(data) as T;
    }
    if (t == _i13.AccessLevel) {
      return _i13.AccessLevel.fromJson(data) as T;
    }
    if (t == _i14.AccessoryType) {
      return _i14.AccessoryType.fromJson(data) as T;
    }
    if (t == _i15.AppModule) {
      return _i15.AppModule.fromJson(data) as T;
    }
    if (t == _i16.ConservationState) {
      return _i16.ConservationState.fromJson(data) as T;
    }
    if (t == _i17.Currency) {
      return _i17.Currency.fromJson(data) as T;
    }
    if (t == _i18.DocumentType) {
      return _i18.DocumentType.fromJson(data) as T;
    }
    if (t == _i19.FirearmAction) {
      return _i19.FirearmAction.fromJson(data) as T;
    }
    if (t == _i20.FirearmPurpose) {
      return _i20.FirearmPurpose.fromJson(data) as T;
    }
    if (t == _i21.FirearmType) {
      return _i21.FirearmType.fromJson(data) as T;
    }
    if (t == _i22.Gender) {
      return _i22.Gender.fromJson(data) as T;
    }
    if (t == _i23.InvoiceStatus) {
      return _i23.InvoiceStatus.fromJson(data) as T;
    }
    if (t == _i24.MembershipStatus) {
      return _i24.MembershipStatus.fromJson(data) as T;
    }
    if (t == _i25.PaymentMethod) {
      return _i25.PaymentMethod.fromJson(data) as T;
    }
    if (t == _i26.PaymentStatus) {
      return _i26.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i27.PlatformApp) {
      return _i27.PlatformApp.fromJson(data) as T;
    }
    if (t == _i28.RegistryBody) {
      return _i28.RegistryBody.fromJson(data) as T;
    }
    if (t == _i29.UsageType) {
      return _i29.UsageType.fromJson(data) as T;
    }
    if (t == _i30.UserStatus) {
      return _i30.UserStatus.fromJson(data) as T;
    }
    if (t == _i31.UserType) {
      return _i31.UserType.fromJson(data) as T;
    }
    if (t == _i32.Invoice) {
      return _i32.Invoice.fromJson(data) as T;
    }
    if (t == _i33.InvoiceItem) {
      return _i33.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i34.Payment) {
      return _i34.Payment.fromJson(data) as T;
    }
    if (t == _i35.Greeting) {
      return _i35.Greeting.fromJson(data) as T;
    }
    if (t == _i36.Gunsmith) {
      return _i36.Gunsmith.fromJson(data) as T;
    }
    if (t == _i37.GunsmithClient) {
      return _i37.GunsmithClient.fromJson(data) as T;
    }
    if (t == _i38.ServiceOrder) {
      return _i38.ServiceOrder.fromJson(data) as T;
    }
    if (t == _i39.ServiceOrderItem) {
      return _i39.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _i40.Product) {
      return _i40.Product.fromJson(data) as T;
    }
    if (t == _i41.ProductGroup) {
      return _i41.ProductGroup.fromJson(data) as T;
    }
    if (t == _i42.AmmunitionStock) {
      return _i42.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i43.Firearm) {
      return _i43.Firearm.fromJson(data) as T;
    }
    if (t == _i44.ReloadSession) {
      return _i44.ReloadSession.fromJson(data) as T;
    }
    if (t == _i45.ReloadTest) {
      return _i45.ReloadTest.fromJson(data) as T;
    }
    if (t == _i46.Training) {
      return _i46.Training.fromJson(data) as T;
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
    if (t == _i1.getType<_i5.Club?>()) {
      return (data != null ? _i5.Club.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Membership?>()) {
      return (data != null ? _i6.Membership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.RangeVisit?>()) {
      return (data != null ? _i7.RangeVisit.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Accessory?>()) {
      return (data != null ? _i8.Accessory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Address?>()) {
      return (data != null ? _i9.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Document?>()) {
      return (data != null ? _i10.Document.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.SupplyStock?>()) {
      return (data != null ? _i11.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.UserProfile?>()) {
      return (data != null ? _i12.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.AccessLevel?>()) {
      return (data != null ? _i13.AccessLevel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.AccessoryType?>()) {
      return (data != null ? _i14.AccessoryType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.AppModule?>()) {
      return (data != null ? _i15.AppModule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.ConservationState?>()) {
      return (data != null ? _i16.ConservationState.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.Currency?>()) {
      return (data != null ? _i17.Currency.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.DocumentType?>()) {
      return (data != null ? _i18.DocumentType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.FirearmAction?>()) {
      return (data != null ? _i19.FirearmAction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.FirearmPurpose?>()) {
      return (data != null ? _i20.FirearmPurpose.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.FirearmType?>()) {
      return (data != null ? _i21.FirearmType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.Gender?>()) {
      return (data != null ? _i22.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.InvoiceStatus?>()) {
      return (data != null ? _i23.InvoiceStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.MembershipStatus?>()) {
      return (data != null ? _i24.MembershipStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.PaymentMethod?>()) {
      return (data != null ? _i25.PaymentMethod.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.PaymentStatus?>()) {
      return (data != null ? _i26.PaymentStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.PlatformApp?>()) {
      return (data != null ? _i27.PlatformApp.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.RegistryBody?>()) {
      return (data != null ? _i28.RegistryBody.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.UsageType?>()) {
      return (data != null ? _i29.UsageType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.UserStatus?>()) {
      return (data != null ? _i30.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.UserType?>()) {
      return (data != null ? _i31.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.Invoice?>()) {
      return (data != null ? _i32.Invoice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.InvoiceItem?>()) {
      return (data != null ? _i33.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.Payment?>()) {
      return (data != null ? _i34.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.Greeting?>()) {
      return (data != null ? _i35.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.Gunsmith?>()) {
      return (data != null ? _i36.Gunsmith.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.GunsmithClient?>()) {
      return (data != null ? _i37.GunsmithClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i38.ServiceOrder?>()) {
      return (data != null ? _i38.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i39.ServiceOrderItem?>()) {
      return (data != null ? _i39.ServiceOrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i40.Product?>()) {
      return (data != null ? _i40.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i41.ProductGroup?>()) {
      return (data != null ? _i41.ProductGroup.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i42.AmmunitionStock?>()) {
      return (data != null ? _i42.AmmunitionStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i43.Firearm?>()) {
      return (data != null ? _i43.Firearm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i44.ReloadSession?>()) {
      return (data != null ? _i44.ReloadSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i45.ReloadTest?>()) {
      return (data != null ? _i45.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i46.Training?>()) {
      return (data != null ? _i46.Training.fromJson(data) : null) as T;
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
    if (t == List<_i31.UserType>) {
      return (data as List).map((e) => deserialize<_i31.UserType>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<_i31.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i31.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_i47.Accessory>) {
      return (data as List).map((e) => deserialize<_i47.Accessory>(e)).toList()
          as T;
    }
    if (t == List<_i48.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_i48.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i49.Club>) {
      return (data as List).map((e) => deserialize<_i49.Club>(e)).toList() as T;
    }
    if (t == List<_i50.Membership>) {
      return (data as List).map((e) => deserialize<_i50.Membership>(e)).toList()
          as T;
    }
    if (t == List<_i51.RangeVisit>) {
      return (data as List).map((e) => deserialize<_i51.RangeVisit>(e)).toList()
          as T;
    }
    if (t == List<_i52.Document>) {
      return (data as List).map((e) => deserialize<_i52.Document>(e)).toList()
          as T;
    }
    if (t == List<_i53.Firearm>) {
      return (data as List).map((e) => deserialize<_i53.Firearm>(e)).toList()
          as T;
    }
    if (t == List<_i54.Gunsmith>) {
      return (data as List).map((e) => deserialize<_i54.Gunsmith>(e)).toList()
          as T;
    }
    if (t == List<_i55.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_i55.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_i56.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_i56.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i57.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_i57.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_i58.InvoiceItem>) {
      return (data as List)
              .map((e) => deserialize<_i58.InvoiceItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i59.Invoice>) {
      return (data as List).map((e) => deserialize<_i59.Invoice>(e)).toList()
          as T;
    }
    if (t == List<_i60.Payment>) {
      return (data as List).map((e) => deserialize<_i60.Payment>(e)).toList()
          as T;
    }
    if (t == List<_i61.Product>) {
      return (data as List).map((e) => deserialize<_i61.Product>(e)).toList()
          as T;
    }
    if (t == List<_i62.ProductGroup>) {
      return (data as List)
              .map((e) => deserialize<_i62.ProductGroup>(e))
              .toList()
          as T;
    }
    if (t == List<_i63.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_i63.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_i64.ReloadTest>) {
      return (data as List).map((e) => deserialize<_i64.ReloadTest>(e)).toList()
          as T;
    }
    if (t == List<_i65.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i65.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i66.RolePermission>) {
      return (data as List)
              .map((e) => deserialize<_i66.RolePermission>(e))
              .toList()
          as T;
    }
    if (t == List<_i67.SecurityRole>) {
      return (data as List)
              .map((e) => deserialize<_i67.SecurityRole>(e))
              .toList()
          as T;
    }
    if (t == List<_i68.Training>) {
      return (data as List).map((e) => deserialize<_i68.Training>(e)).toList()
          as T;
    }
    if (t == List<_i69.UserProfile>) {
      return (data as List)
              .map((e) => deserialize<_i69.UserProfile>(e))
              .toList()
          as T;
    }
    if (t == List<_i1.UuidValue>) {
      return (data as List).map((e) => deserialize<_i1.UuidValue>(e)).toList()
          as T;
    }
    try {
      return _i70.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.RolePermission => 'RolePermission',
      _i3.SecurityRole => 'SecurityRole',
      _i4.UserRole => 'UserRole',
      _i5.Club => 'Club',
      _i6.Membership => 'Membership',
      _i7.RangeVisit => 'RangeVisit',
      _i8.Accessory => 'Accessory',
      _i9.Address => 'Address',
      _i10.Document => 'Document',
      _i11.SupplyStock => 'SupplyStock',
      _i12.UserProfile => 'UserProfile',
      _i13.AccessLevel => 'AccessLevel',
      _i14.AccessoryType => 'AccessoryType',
      _i15.AppModule => 'AppModule',
      _i16.ConservationState => 'ConservationState',
      _i17.Currency => 'Currency',
      _i18.DocumentType => 'DocumentType',
      _i19.FirearmAction => 'FirearmAction',
      _i20.FirearmPurpose => 'FirearmPurpose',
      _i21.FirearmType => 'FirearmType',
      _i22.Gender => 'Gender',
      _i23.InvoiceStatus => 'InvoiceStatus',
      _i24.MembershipStatus => 'MembershipStatus',
      _i25.PaymentMethod => 'PaymentMethod',
      _i26.PaymentStatus => 'PaymentStatus',
      _i27.PlatformApp => 'PlatformApp',
      _i28.RegistryBody => 'RegistryBody',
      _i29.UsageType => 'UsageType',
      _i30.UserStatus => 'UserStatus',
      _i31.UserType => 'UserType',
      _i32.Invoice => 'Invoice',
      _i33.InvoiceItem => 'InvoiceItem',
      _i34.Payment => 'Payment',
      _i35.Greeting => 'Greeting',
      _i36.Gunsmith => 'Gunsmith',
      _i37.GunsmithClient => 'GunsmithClient',
      _i38.ServiceOrder => 'ServiceOrder',
      _i39.ServiceOrderItem => 'ServiceOrderItem',
      _i40.Product => 'Product',
      _i41.ProductGroup => 'ProductGroup',
      _i42.AmmunitionStock => 'AmmunitionStock',
      _i43.Firearm => 'Firearm',
      _i44.ReloadSession => 'ReloadSession',
      _i45.ReloadTest => 'ReloadTest',
      _i46.Training => 'Training',
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
      case _i5.Club():
        return 'Club';
      case _i6.Membership():
        return 'Membership';
      case _i7.RangeVisit():
        return 'RangeVisit';
      case _i8.Accessory():
        return 'Accessory';
      case _i9.Address():
        return 'Address';
      case _i10.Document():
        return 'Document';
      case _i11.SupplyStock():
        return 'SupplyStock';
      case _i12.UserProfile():
        return 'UserProfile';
      case _i13.AccessLevel():
        return 'AccessLevel';
      case _i14.AccessoryType():
        return 'AccessoryType';
      case _i15.AppModule():
        return 'AppModule';
      case _i16.ConservationState():
        return 'ConservationState';
      case _i17.Currency():
        return 'Currency';
      case _i18.DocumentType():
        return 'DocumentType';
      case _i19.FirearmAction():
        return 'FirearmAction';
      case _i20.FirearmPurpose():
        return 'FirearmPurpose';
      case _i21.FirearmType():
        return 'FirearmType';
      case _i22.Gender():
        return 'Gender';
      case _i23.InvoiceStatus():
        return 'InvoiceStatus';
      case _i24.MembershipStatus():
        return 'MembershipStatus';
      case _i25.PaymentMethod():
        return 'PaymentMethod';
      case _i26.PaymentStatus():
        return 'PaymentStatus';
      case _i27.PlatformApp():
        return 'PlatformApp';
      case _i28.RegistryBody():
        return 'RegistryBody';
      case _i29.UsageType():
        return 'UsageType';
      case _i30.UserStatus():
        return 'UserStatus';
      case _i31.UserType():
        return 'UserType';
      case _i32.Invoice():
        return 'Invoice';
      case _i33.InvoiceItem():
        return 'InvoiceItem';
      case _i34.Payment():
        return 'Payment';
      case _i35.Greeting():
        return 'Greeting';
      case _i36.Gunsmith():
        return 'Gunsmith';
      case _i37.GunsmithClient():
        return 'GunsmithClient';
      case _i38.ServiceOrder():
        return 'ServiceOrder';
      case _i39.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _i40.Product():
        return 'Product';
      case _i41.ProductGroup():
        return 'ProductGroup';
      case _i42.AmmunitionStock():
        return 'AmmunitionStock';
      case _i43.Firearm():
        return 'Firearm';
      case _i44.ReloadSession():
        return 'ReloadSession';
      case _i45.ReloadTest():
        return 'ReloadTest';
      case _i46.Training():
        return 'Training';
    }
    className = _i70.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'Club') {
      return deserialize<_i5.Club>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i6.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_i7.RangeVisit>(data['data']);
    }
    if (dataClassName == 'Accessory') {
      return deserialize<_i8.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_i9.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i10.Document>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i11.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i12.UserProfile>(data['data']);
    }
    if (dataClassName == 'AccessLevel') {
      return deserialize<_i13.AccessLevel>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_i14.AccessoryType>(data['data']);
    }
    if (dataClassName == 'AppModule') {
      return deserialize<_i15.AppModule>(data['data']);
    }
    if (dataClassName == 'ConservationState') {
      return deserialize<_i16.ConservationState>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_i17.Currency>(data['data']);
    }
    if (dataClassName == 'DocumentType') {
      return deserialize<_i18.DocumentType>(data['data']);
    }
    if (dataClassName == 'FirearmAction') {
      return deserialize<_i19.FirearmAction>(data['data']);
    }
    if (dataClassName == 'FirearmPurpose') {
      return deserialize<_i20.FirearmPurpose>(data['data']);
    }
    if (dataClassName == 'FirearmType') {
      return deserialize<_i21.FirearmType>(data['data']);
    }
    if (dataClassName == 'Gender') {
      return deserialize<_i22.Gender>(data['data']);
    }
    if (dataClassName == 'InvoiceStatus') {
      return deserialize<_i23.InvoiceStatus>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_i24.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_i25.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_i26.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'PlatformApp') {
      return deserialize<_i27.PlatformApp>(data['data']);
    }
    if (dataClassName == 'RegistryBody') {
      return deserialize<_i28.RegistryBody>(data['data']);
    }
    if (dataClassName == 'UsageType') {
      return deserialize<_i29.UsageType>(data['data']);
    }
    if (dataClassName == 'UserStatus') {
      return deserialize<_i30.UserStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i31.UserType>(data['data']);
    }
    if (dataClassName == 'Invoice') {
      return deserialize<_i32.Invoice>(data['data']);
    }
    if (dataClassName == 'InvoiceItem') {
      return deserialize<_i33.InvoiceItem>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i34.Payment>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i35.Greeting>(data['data']);
    }
    if (dataClassName == 'Gunsmith') {
      return deserialize<_i36.Gunsmith>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_i37.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_i38.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_i39.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i40.Product>(data['data']);
    }
    if (dataClassName == 'ProductGroup') {
      return deserialize<_i41.ProductGroup>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_i42.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i43.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_i44.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_i45.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_i46.Training>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i70.Protocol().deserializeByClassName(data);
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
      return _i70.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
