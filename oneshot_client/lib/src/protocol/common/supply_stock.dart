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

abstract class SupplyStock implements _i1.SerializableModel {
  SupplyStock._({
    _i1.UuidValue? id,
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    this.acquisitionDate,
    this.batchNumber,
    this.userId,
    this.userInfoId,
    this.userInfo,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory SupplyStock({
    _i1.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  }) = _SupplyStockImpl;

  factory SupplyStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return SupplyStock(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unit: jsonSerialization['unit'] as String,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      batchNumber: jsonSerialization['batchNumber'] as String?,
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String name;

  String type;

  double quantity;

  String unit;

  DateTime? acquisitionDate;

  String? batchNumber;

  _i1.UuidValue? userId;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SupplyStock copyWith({
    _i1.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SupplyStock',
      'id': id.toJson(),
      'name': name,
      'type': type,
      'quantity': quantity,
      'unit': unit,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (batchNumber != null) 'batchNumber': batchNumber,
      if (userId != null) 'userId': userId?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SupplyStockImpl extends SupplyStock {
  _SupplyStockImpl({
    _i1.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  }) : super._(
         id: id,
         name: name,
         type: type,
         quantity: quantity,
         unit: unit,
         acquisitionDate: acquisitionDate,
         batchNumber: batchNumber,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
       );

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SupplyStock copyWith({
    _i1.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    Object? acquisitionDate = _Undefined,
    Object? batchNumber = _Undefined,
    Object? userId = _Undefined,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
  }) {
    return SupplyStock(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      batchNumber: batchNumber is String? ? batchNumber : this.batchNumber,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
    );
  }
}
