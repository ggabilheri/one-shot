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
import 'common/accessory.dart' as _i2;
import 'common/address.dart' as _i3;
import 'common/document.dart' as _i4;
import 'common/supply_stock.dart' as _i5;
import 'common/user_profile.dart' as _i6;
import 'enums/user_type.enum.dart' as _i7;
import 'greeting.dart' as _i8;
import 'gunsmith/gunsmith_client.dart' as _i9;
import 'gunsmith/service_order.dart' as _i10;
import 'gunsmith/service_order_item.dart' as _i11;
import 'shooter/ammunition_stock.dart' as _i12;
import 'shooter/firearm.dart' as _i13;
import 'shooter/reload_session.dart' as _i14;
import 'shooter/reload_test.dart' as _i15;
import 'shooter/training.dart' as _i16;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i17;
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
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

    if (t == _i2.Accessory) {
      return _i2.Accessory.fromJson(data) as T;
    }
    if (t == _i3.Address) {
      return _i3.Address.fromJson(data) as T;
    }
    if (t == _i4.Document) {
      return _i4.Document.fromJson(data) as T;
    }
    if (t == _i5.SupplyStock) {
      return _i5.SupplyStock.fromJson(data) as T;
    }
    if (t == _i6.UserProfile) {
      return _i6.UserProfile.fromJson(data) as T;
    }
    if (t == _i7.UserType) {
      return _i7.UserType.fromJson(data) as T;
    }
    if (t == _i8.Greeting) {
      return _i8.Greeting.fromJson(data) as T;
    }
    if (t == _i9.GunsmithClient) {
      return _i9.GunsmithClient.fromJson(data) as T;
    }
    if (t == _i10.ServiceOrder) {
      return _i10.ServiceOrder.fromJson(data) as T;
    }
    if (t == _i11.ServiceOrderItem) {
      return _i11.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _i12.AmmunitionStock) {
      return _i12.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i13.Firearm) {
      return _i13.Firearm.fromJson(data) as T;
    }
    if (t == _i14.ReloadSession) {
      return _i14.ReloadSession.fromJson(data) as T;
    }
    if (t == _i15.ReloadTest) {
      return _i15.ReloadTest.fromJson(data) as T;
    }
    if (t == _i16.Training) {
      return _i16.Training.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Accessory?>()) {
      return (data != null ? _i2.Accessory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Address?>()) {
      return (data != null ? _i3.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Document?>()) {
      return (data != null ? _i4.Document.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.SupplyStock?>()) {
      return (data != null ? _i5.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.UserProfile?>()) {
      return (data != null ? _i6.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.UserType?>()) {
      return (data != null ? _i7.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Greeting?>()) {
      return (data != null ? _i8.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.GunsmithClient?>()) {
      return (data != null ? _i9.GunsmithClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ServiceOrder?>()) {
      return (data != null ? _i10.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ServiceOrderItem?>()) {
      return (data != null ? _i11.ServiceOrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.AmmunitionStock?>()) {
      return (data != null ? _i12.AmmunitionStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Firearm?>()) {
      return (data != null ? _i13.Firearm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.ReloadSession?>()) {
      return (data != null ? _i14.ReloadSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.ReloadTest?>()) {
      return (data != null ? _i15.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Training?>()) {
      return (data != null ? _i16.Training.fromJson(data) : null) as T;
    }
    if (t == List<_i7.UserType>) {
      return (data as List).map((e) => deserialize<_i7.UserType>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<_i7.UserType>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<_i7.UserType>(e)).toList()
              : null)
          as T;
    }
    try {
      return _i17.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Accessory => 'Accessory',
      _i3.Address => 'Address',
      _i4.Document => 'Document',
      _i5.SupplyStock => 'SupplyStock',
      _i6.UserProfile => 'UserProfile',
      _i7.UserType => 'UserType',
      _i8.Greeting => 'Greeting',
      _i9.GunsmithClient => 'GunsmithClient',
      _i10.ServiceOrder => 'ServiceOrder',
      _i11.ServiceOrderItem => 'ServiceOrderItem',
      _i12.AmmunitionStock => 'AmmunitionStock',
      _i13.Firearm => 'Firearm',
      _i14.ReloadSession => 'ReloadSession',
      _i15.ReloadTest => 'ReloadTest',
      _i16.Training => 'Training',
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
      case _i2.Accessory():
        return 'Accessory';
      case _i3.Address():
        return 'Address';
      case _i4.Document():
        return 'Document';
      case _i5.SupplyStock():
        return 'SupplyStock';
      case _i6.UserProfile():
        return 'UserProfile';
      case _i7.UserType():
        return 'UserType';
      case _i8.Greeting():
        return 'Greeting';
      case _i9.GunsmithClient():
        return 'GunsmithClient';
      case _i10.ServiceOrder():
        return 'ServiceOrder';
      case _i11.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _i12.AmmunitionStock():
        return 'AmmunitionStock';
      case _i13.Firearm():
        return 'Firearm';
      case _i14.ReloadSession():
        return 'ReloadSession';
      case _i15.ReloadTest():
        return 'ReloadTest';
      case _i16.Training():
        return 'Training';
    }
    className = _i17.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'Accessory') {
      return deserialize<_i2.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_i3.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i4.Document>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i5.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i6.UserProfile>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i7.UserType>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i8.Greeting>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_i9.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_i10.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_i11.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_i12.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i13.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_i14.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_i15.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_i16.Training>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i17.Protocol().deserializeByClassName(data);
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
      return _i17.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
