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
import 'package:oneshot_client/src/protocol/protocol.dart' as _i3;

abstract class Firearm implements _i1.SerializableModel {
  Firearm._({
    this.id,
    this.userId,
    required this.userInfoId,
    this.userInfo,
    required this.purpose,
    required this.type,
    required this.action,
    required this.usageType,
    required this.serialNumber,
    required this.manufactureCountry,
    required this.manufacturer,
    required this.model,
    required this.caliber,
    required this.magazineCapacity,
    required this.barrelLength,
    required this.weight,
    this.acquisitionDate,
    this.purchasePrice,
    this.saleDate,
    this.salePrice,
    required this.condition,
  });

  factory Firearm({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String purpose,
    required String type,
    required String action,
    required String usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    required String caliber,
    required int magazineCapacity,
    required String barrelLength,
    required double weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    required String condition,
  }) = _FirearmImpl;

  factory Firearm.fromJson(Map<String, dynamic> jsonSerialization) {
    return Firearm(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      purpose: jsonSerialization['purpose'] as String,
      type: jsonSerialization['type'] as String,
      action: jsonSerialization['action'] as String,
      usageType: jsonSerialization['usageType'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      caliber: jsonSerialization['caliber'] as String,
      magazineCapacity: jsonSerialization['magazineCapacity'] as int,
      barrelLength: jsonSerialization['barrelLength'] as String,
      weight: (jsonSerialization['weight'] as num).toDouble(),
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      saleDate: jsonSerialization['saleDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['saleDate']),
      salePrice: (jsonSerialization['salePrice'] as num?)?.toDouble(),
      condition: jsonSerialization['condition'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? userId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  String purpose;

  String type;

  String action;

  String usageType;

  String serialNumber;

  String manufactureCountry;

  String manufacturer;

  String model;

  String caliber;

  int magazineCapacity;

  String barrelLength;

  double weight;

  DateTime? acquisitionDate;

  double? purchasePrice;

  DateTime? saleDate;

  double? salePrice;

  String condition;

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Firearm copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? purpose,
    String? type,
    String? action,
    String? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? caliber,
    int? magazineCapacity,
    String? barrelLength,
    double? weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    String? condition,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Firearm',
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'purpose': purpose,
      'type': type,
      'action': action,
      'usageType': usageType,
      'serialNumber': serialNumber,
      'manufactureCountry': manufactureCountry,
      'manufacturer': manufacturer,
      'model': model,
      'caliber': caliber,
      'magazineCapacity': magazineCapacity,
      'barrelLength': barrelLength,
      'weight': weight,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (saleDate != null) 'saleDate': saleDate?.toJson(),
      if (salePrice != null) 'salePrice': salePrice,
      'condition': condition,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FirearmImpl extends Firearm {
  _FirearmImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required String purpose,
    required String type,
    required String action,
    required String usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    required String caliber,
    required int magazineCapacity,
    required String barrelLength,
    required double weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    required String condition,
  }) : super._(
         id: id,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
         purpose: purpose,
         type: type,
         action: action,
         usageType: usageType,
         serialNumber: serialNumber,
         manufactureCountry: manufactureCountry,
         manufacturer: manufacturer,
         model: model,
         caliber: caliber,
         magazineCapacity: magazineCapacity,
         barrelLength: barrelLength,
         weight: weight,
         acquisitionDate: acquisitionDate,
         purchasePrice: purchasePrice,
         saleDate: saleDate,
         salePrice: salePrice,
         condition: condition,
       );

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Firearm copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    String? purpose,
    String? type,
    String? action,
    String? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? caliber,
    int? magazineCapacity,
    String? barrelLength,
    double? weight,
    Object? acquisitionDate = _Undefined,
    Object? purchasePrice = _Undefined,
    Object? saleDate = _Undefined,
    Object? salePrice = _Undefined,
    String? condition,
  }) {
    return Firearm(
      id: id is _i1.UuidValue? ? id : this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      purpose: purpose ?? this.purpose,
      type: type ?? this.type,
      action: action ?? this.action,
      usageType: usageType ?? this.usageType,
      serialNumber: serialNumber ?? this.serialNumber,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      caliber: caliber ?? this.caliber,
      magazineCapacity: magazineCapacity ?? this.magazineCapacity,
      barrelLength: barrelLength ?? this.barrelLength,
      weight: weight ?? this.weight,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      saleDate: saleDate is DateTime? ? saleDate : this.saleDate,
      salePrice: salePrice is double? ? salePrice : this.salePrice,
      condition: condition ?? this.condition,
    );
  }
}
