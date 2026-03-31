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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class Accessory implements _i1.SerializableModel {
  Accessory._({
    this.id,
    this.userId,
    required this.userInfoId,
    this.userInfo,
    this.firearmId,
    required this.firearmId,
    this.firearm,
    required this.purpose,
    required this.type,
    required this.manufacturer,
    required this.model,
    this.serialNumber,
    required this.condition,
    this.purchasePrice,
    this.acquisitionDate,
  });

  factory Accessory({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    required String purpose,
    required String type,
    required String manufacturer,
    required String model,
    String? serialNumber,
    required String condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  }) = _AccessoryImpl;

  factory Accessory.fromJson(Map<String, dynamic> jsonSerialization) {
    return Accessory(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      firearmId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['firearmId'],
      ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      purpose: jsonSerialization['purpose'] as String,
      type: jsonSerialization['type'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      condition: jsonSerialization['condition'] as String,
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? userId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  _i1.UuidValue? firearmId;

  _i1.UuidValue firearmId;

  _i3.Firearm? firearm;

  String purpose;

  String type;

  String manufacturer;

  String model;

  String? serialNumber;

  String condition;

  double? purchasePrice;

  DateTime? acquisitionDate;

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Accessory copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    String? purpose,
    String? type,
    String? manufacturer,
    String? model,
    String? serialNumber,
    String? condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Accessory',
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      'firearmId': firearmId.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'purpose': purpose,
      'type': type,
      'manufacturer': manufacturer,
      'model': model,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AccessoryImpl extends Accessory {
  _AccessoryImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    required String purpose,
    required String type,
    required String manufacturer,
    required String model,
    String? serialNumber,
    required String condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  }) : super._(
         id: id,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
         firearmId: firearmId,
         firearm: firearm,
         purpose: purpose,
         type: type,
         manufacturer: manufacturer,
         model: model,
         serialNumber: serialNumber,
         condition: condition,
         purchasePrice: purchasePrice,
         acquisitionDate: acquisitionDate,
       );

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Accessory copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    Object? firearmId = _Undefined,
    _i1.UuidValue? firearmId,
    Object? firearm = _Undefined,
    String? purpose,
    String? type,
    String? manufacturer,
    String? model,
    Object? serialNumber = _Undefined,
    String? condition,
    Object? purchasePrice = _Undefined,
    Object? acquisitionDate = _Undefined,
  }) {
    return Accessory(
      id: id is _i1.UuidValue? ? id : this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      firearmId: firearmId ?? this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      purpose: purpose ?? this.purpose,
      type: type ?? this.type,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      condition: condition ?? this.condition,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
    );
  }
}
