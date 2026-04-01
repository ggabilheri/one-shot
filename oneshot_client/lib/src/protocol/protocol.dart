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
import 'club/club.dart' as _i2;
import 'club/membership.dart' as _i3;
import 'club/range_visit.dart' as _i4;
import 'common/accessory.dart' as _i5;
import 'common/address.dart' as _i6;
import 'common/document.dart' as _i7;
import 'common/supply_stock.dart' as _i8;
import 'common/user_profile.dart' as _i9;
import 'enums/accessory.enum.dart' as _i10;
import 'enums/membership_status.dart' as _i11;
import 'enums/user_type.enum.dart' as _i12;
import 'greeting.dart' as _i13;
import 'gunsmith/gunsmith_client.dart' as _i14;
import 'gunsmith/service_order.dart' as _i15;
import 'gunsmith/service_order_item.dart' as _i16;
import 'shooter/ammunition_stock.dart' as _i17;
import 'shooter/firearm.dart' as _i18;
import 'shooter/reload_session.dart' as _i19;
import 'shooter/reload_test.dart' as _i20;
import 'shooter/training.dart' as _i21;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _i22;
import 'package:oneshot_client/src/protocol/club/club.dart' as _i23;
import 'package:oneshot_client/src/protocol/club/membership.dart' as _i24;
import 'package:oneshot_client/src/protocol/club/range_visit.dart' as _i25;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i26;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i27;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i28;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _i29;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i30;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i31;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i32;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i33;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i34;
export 'club/club.dart';
export 'club/membership.dart';
export 'club/range_visit.dart';
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
export 'enums/accessory.enum.dart';
export 'enums/membership_status.dart';
export 'enums/user_type.enum.dart';
export 'greeting.dart';
export 'gunsmith/gunsmith_client.dart';
export 'gunsmith/service_order.dart';
export 'gunsmith/service_order_item.dart';
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

    if (t == _i2.Club) {
      return _i2.Club.fromJson(data) as T;
    }
    if (t == _i3.Membership) {
      return _i3.Membership.fromJson(data) as T;
    }
    if (t == _i4.RangeVisit) {
      return _i4.RangeVisit.fromJson(data) as T;
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
    if (t == _i8.SupplyStock) {
      return _i8.SupplyStock.fromJson(data) as T;
    }
    if (t == _i9.UserProfile) {
      return _i9.UserProfile.fromJson(data) as T;
    }
    if (t == _i10.AccessoryType) {
      return _i10.AccessoryType.fromJson(data) as T;
    }
    if (t == _i11.MembershipStatus) {
      return _i11.MembershipStatus.fromJson(data) as T;
    }
    if (t == _i12.UserType) {
      return _i12.UserType.fromJson(data) as T;
    }
    if (t == _i13.Greeting) {
      return _i13.Greeting.fromJson(data) as T;
    }
    if (t == _i14.GunsmithClient) {
      return _i14.GunsmithClient.fromJson(data) as T;
    }
    if (t == _i15.ServiceOrder) {
      return _i15.ServiceOrder.fromJson(data) as T;
    }
    if (t == _i16.ServiceOrderItem) {
      return _i16.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _i17.AmmunitionStock) {
      return _i17.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i18.Firearm) {
      return _i18.Firearm.fromJson(data) as T;
    }
    if (t == _i19.ReloadSession) {
      return _i19.ReloadSession.fromJson(data) as T;
    }
    if (t == _i20.ReloadTest) {
      return _i20.ReloadTest.fromJson(data) as T;
    }
    if (t == _i21.Training) {
      return _i21.Training.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Club?>()) {
      return (data != null ? _i2.Club.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Membership?>()) {
      return (data != null ? _i3.Membership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.RangeVisit?>()) {
      return (data != null ? _i4.RangeVisit.fromJson(data) : null) as T;
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
    if (t == _i1.getType<_i8.SupplyStock?>()) {
      return (data != null ? _i8.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.UserProfile?>()) {
      return (data != null ? _i9.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.AccessoryType?>()) {
      return (data != null ? _i10.AccessoryType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.MembershipStatus?>()) {
      return (data != null ? _i11.MembershipStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.UserType?>()) {
      return (data != null ? _i12.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Greeting?>()) {
      return (data != null ? _i13.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.GunsmithClient?>()) {
      return (data != null ? _i14.GunsmithClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.ServiceOrder?>()) {
      return (data != null ? _i15.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.ServiceOrderItem?>()) {
      return (data != null ? _i16.ServiceOrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.AmmunitionStock?>()) {
      return (data != null ? _i17.AmmunitionStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.Firearm?>()) {
      return (data != null ? _i18.Firearm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.ReloadSession?>()) {
      return (data != null ? _i19.ReloadSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.ReloadTest?>()) {
      return (data != null ? _i20.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.Training?>()) {
      return (data != null ? _i21.Training.fromJson(data) : null) as T;
    }
    if (t == List<_i12.UserType>) {
      return (data as List).map((e) => deserialize<_i12.UserType>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<_i12.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i12.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_i22.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_i22.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i23.Club>) {
      return (data as List).map((e) => deserialize<_i23.Club>(e)).toList() as T;
    }
    if (t == List<_i24.Membership>) {
      return (data as List).map((e) => deserialize<_i24.Membership>(e)).toList()
          as T;
    }
    if (t == List<_i25.RangeVisit>) {
      return (data as List).map((e) => deserialize<_i25.RangeVisit>(e)).toList()
          as T;
    }
    if (t == List<_i26.Firearm>) {
      return (data as List).map((e) => deserialize<_i26.Firearm>(e)).toList()
          as T;
    }
    if (t == List<_i27.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_i27.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_i28.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_i28.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i29.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_i29.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_i30.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_i30.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_i31.ReloadTest>) {
      return (data as List).map((e) => deserialize<_i31.ReloadTest>(e)).toList()
          as T;
    }
    if (t == List<_i32.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i32.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i33.Training>) {
      return (data as List).map((e) => deserialize<_i33.Training>(e)).toList()
          as T;
    }
    try {
      return _i34.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Club => 'Club',
      _i3.Membership => 'Membership',
      _i4.RangeVisit => 'RangeVisit',
      _i5.Accessory => 'Accessory',
      _i6.Address => 'Address',
      _i7.Document => 'Document',
      _i8.SupplyStock => 'SupplyStock',
      _i9.UserProfile => 'UserProfile',
      _i10.AccessoryType => 'AccessoryType',
      _i11.MembershipStatus => 'MembershipStatus',
      _i12.UserType => 'UserType',
      _i13.Greeting => 'Greeting',
      _i14.GunsmithClient => 'GunsmithClient',
      _i15.ServiceOrder => 'ServiceOrder',
      _i16.ServiceOrderItem => 'ServiceOrderItem',
      _i17.AmmunitionStock => 'AmmunitionStock',
      _i18.Firearm => 'Firearm',
      _i19.ReloadSession => 'ReloadSession',
      _i20.ReloadTest => 'ReloadTest',
      _i21.Training => 'Training',
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
      case _i2.Club():
        return 'Club';
      case _i3.Membership():
        return 'Membership';
      case _i4.RangeVisit():
        return 'RangeVisit';
      case _i5.Accessory():
        return 'Accessory';
      case _i6.Address():
        return 'Address';
      case _i7.Document():
        return 'Document';
      case _i8.SupplyStock():
        return 'SupplyStock';
      case _i9.UserProfile():
        return 'UserProfile';
      case _i10.AccessoryType():
        return 'AccessoryType';
      case _i11.MembershipStatus():
        return 'MembershipStatus';
      case _i12.UserType():
        return 'UserType';
      case _i13.Greeting():
        return 'Greeting';
      case _i14.GunsmithClient():
        return 'GunsmithClient';
      case _i15.ServiceOrder():
        return 'ServiceOrder';
      case _i16.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _i17.AmmunitionStock():
        return 'AmmunitionStock';
      case _i18.Firearm():
        return 'Firearm';
      case _i19.ReloadSession():
        return 'ReloadSession';
      case _i20.ReloadTest():
        return 'ReloadTest';
      case _i21.Training():
        return 'Training';
    }
    className = _i34.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'Club') {
      return deserialize<_i2.Club>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i3.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_i4.RangeVisit>(data['data']);
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
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i8.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i9.UserProfile>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_i10.AccessoryType>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_i11.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i12.UserType>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i13.Greeting>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_i14.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_i15.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_i16.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_i17.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i18.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_i19.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_i20.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_i21.Training>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i34.Protocol().deserializeByClassName(data);
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
      return _i34.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
