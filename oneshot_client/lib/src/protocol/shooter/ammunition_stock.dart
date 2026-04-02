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

abstract class AmmunitionStock implements _i1.SerializableModel {
  AmmunitionStock._({
    _i1.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.type,
    required this.manufacturer,
    required this.caliber,
    required this.projectileType,
    this.projectileWeightGrains,
    required this.quantity,
    this.purchasePrice,
    required this.acquisitionDate,
    this.casingBatch,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory AmmunitionStock({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String type,
    required String manufacturer,
    required String caliber,
    required String projectileType,
    double? projectileWeightGrains,
    required int quantity,
    double? purchasePrice,
    required DateTime acquisitionDate,
    String? casingBatch,
  }) = _AmmunitionStockImpl;

  factory AmmunitionStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return AmmunitionStock(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      type: jsonSerialization['type'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      caliber: jsonSerialization['caliber'] as String,
      projectileType: jsonSerialization['projectileType'] as String,
      projectileWeightGrains:
          (jsonSerialization['projectileWeightGrains'] as num?)?.toDouble(),
      quantity: jsonSerialization['quantity'] as int,
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      acquisitionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['acquisitionDate'],
      ),
      casingBatch: jsonSerialization['casingBatch'] as String?,
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  String type;

  String manufacturer;

  String caliber;

  String projectileType;

  double? projectileWeightGrains;

  int quantity;

  double? purchasePrice;

  DateTime acquisitionDate;

  String? casingBatch;

  /// Returns a shallow copy of this [AmmunitionStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AmmunitionStock copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? type,
    String? manufacturer,
    String? caliber,
    String? projectileType,
    double? projectileWeightGrains,
    int? quantity,
    double? purchasePrice,
    DateTime? acquisitionDate,
    String? casingBatch,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AmmunitionStock',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'type': type,
      'manufacturer': manufacturer,
      'caliber': caliber,
      'projectileType': projectileType,
      if (projectileWeightGrains != null)
        'projectileWeightGrains': projectileWeightGrains,
      'quantity': quantity,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      'acquisitionDate': acquisitionDate.toJson(),
      if (casingBatch != null) 'casingBatch': casingBatch,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AmmunitionStockImpl extends AmmunitionStock {
  _AmmunitionStockImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String type,
    required String manufacturer,
    required String caliber,
    required String projectileType,
    double? projectileWeightGrains,
    required int quantity,
    double? purchasePrice,
    required DateTime acquisitionDate,
    String? casingBatch,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         type: type,
         manufacturer: manufacturer,
         caliber: caliber,
         projectileType: projectileType,
         projectileWeightGrains: projectileWeightGrains,
         quantity: quantity,
         purchasePrice: purchasePrice,
         acquisitionDate: acquisitionDate,
         casingBatch: casingBatch,
       );

  /// Returns a shallow copy of this [AmmunitionStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AmmunitionStock copyWith({
    _i1.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? type,
    String? manufacturer,
    String? caliber,
    String? projectileType,
    Object? projectileWeightGrains = _Undefined,
    int? quantity,
    Object? purchasePrice = _Undefined,
    DateTime? acquisitionDate,
    Object? casingBatch = _Undefined,
  }) {
    return AmmunitionStock(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      type: type ?? this.type,
      manufacturer: manufacturer ?? this.manufacturer,
      caliber: caliber ?? this.caliber,
      projectileType: projectileType ?? this.projectileType,
      projectileWeightGrains: projectileWeightGrains is double?
          ? projectileWeightGrains
          : this.projectileWeightGrains,
      quantity: quantity ?? this.quantity,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      acquisitionDate: acquisitionDate ?? this.acquisitionDate,
      casingBatch: casingBatch is String? ? casingBatch : this.casingBatch,
    );
  }
}
