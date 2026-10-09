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
import 'package:oneshot_client/src/protocol/protocol.dart' as _itys55mc;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i312scxx;
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class SupplyStock
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SupplyStock._({
    _isc.UuidValue? id,
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    this.acquisitionDate,
    this.batchNumber,
    this.userInfoId,
    this.userInfo,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory SupplyStock({
    _isc.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
  }) = _SupplyStockImpl;

  factory SupplyStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return SupplyStock(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unit: jsonSerialization['unit'] as String,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      batchNumber: jsonSerialization['batchNumber'] as String?,
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i312scxx.UserInfo>(
              jsonSerialization['userInfo'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  String type;

  double quantity;

  String unit;

  DateTime? acquisitionDate;

  String? batchNumber;

  int? userInfoId;

  _i312scxx.UserInfo? userInfo;

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SupplyStock copyWith({
    _isc.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
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
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SupplyStock',
      'id': id.toJson(),
      'name': name,
      'type': type,
      'quantity': quantity,
      'unit': unit,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (batchNumber != null) 'batchNumber': batchNumber,
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SupplyStockImpl extends SupplyStock {
  _SupplyStockImpl({
    _isc.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
  }) : super._(
         id: id,
         name: name,
         type: type,
         quantity: quantity,
         unit: unit,
         acquisitionDate: acquisitionDate,
         batchNumber: batchNumber,
         userInfoId: userInfoId,
         userInfo: userInfo,
       );

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SupplyStock copyWith({
    _isc.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    Object? acquisitionDate = _Undefined,
    Object? batchNumber = _Undefined,
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
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i312scxx.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
    );
  }
}
