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
import '../common/accessory.dart' as _i3;
import '../common/supply_stock.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class ReloadSession implements _i1.SerializableModel {
  ReloadSession._({
    this.id,
    this.userId,
    required this.userInfoId,
    this.userInfo,
    required this.reloadDate,
    this.pressId,
    required this.pressId,
    this.press,
    required this.caliber,
    required this.casingBatch,
    required this.reloadsCompleted,
    this.powderId,
    required this.powderId,
    this.powder,
    required this.powderGrains,
    this.primerId,
    required this.primerId,
    this.primer,
    this.projectileId,
    required this.projectileId,
    this.projectile,
    required this.oal,
    required this.totalCost,
    required this.unitCost,
  });

  factory ReloadSession({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime reloadDate,
    _i1.UuidValue? pressId,
    required _i1.UuidValue pressId,
    _i3.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _i1.UuidValue? powderId,
    required _i1.UuidValue powderId,
    _i4.SupplyStock? powder,
    required double powderGrains,
    _i1.UuidValue? primerId,
    required _i1.UuidValue primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    required _i1.UuidValue projectileId,
    _i4.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) = _ReloadSessionImpl;

  factory ReloadSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadSession(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      reloadDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['reloadDate'],
      ),
      pressId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['pressId'],
      ),
      press: jsonSerialization['press'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Accessory>(
              jsonSerialization['press'],
            ),
      caliber: jsonSerialization['caliber'] as String,
      casingBatch: jsonSerialization['casingBatch'] as String,
      reloadsCompleted: jsonSerialization['reloadsCompleted'] as int,
      powderId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['powderId'],
      ),
      powder: jsonSerialization['powder'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
              jsonSerialization['powder'],
            ),
      powderGrains: (jsonSerialization['powderGrains'] as num).toDouble(),
      primerId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['primerId'],
      ),
      primer: jsonSerialization['primer'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
              jsonSerialization['primer'],
            ),
      projectileId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectileId'],
      ),
      projectile: jsonSerialization['projectile'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
              jsonSerialization['projectile'],
            ),
      oal: (jsonSerialization['oal'] as num).toDouble(),
      totalCost: (jsonSerialization['totalCost'] as num).toDouble(),
      unitCost: (jsonSerialization['unitCost'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? userId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  DateTime reloadDate;

  _i1.UuidValue? pressId;

  _i1.UuidValue pressId;

  _i3.Accessory? press;

  String caliber;

  String casingBatch;

  int reloadsCompleted;

  _i1.UuidValue? powderId;

  _i1.UuidValue powderId;

  _i4.SupplyStock? powder;

  double powderGrains;

  _i1.UuidValue? primerId;

  _i1.UuidValue primerId;

  _i4.SupplyStock? primer;

  _i1.UuidValue? projectileId;

  _i1.UuidValue projectileId;

  _i4.SupplyStock? projectile;

  double oal;

  double totalCost;

  double unitCost;

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ReloadSession copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    DateTime? reloadDate,
    _i1.UuidValue? pressId,
    _i1.UuidValue? pressId,
    _i3.Accessory? press,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    _i1.UuidValue? powderId,
    _i1.UuidValue? powderId,
    _i4.SupplyStock? powder,
    double? powderGrains,
    _i1.UuidValue? primerId,
    _i1.UuidValue? primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    _i1.UuidValue? projectileId,
    _i4.SupplyStock? projectile,
    double? oal,
    double? totalCost,
    double? unitCost,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadSession',
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      'pressId': pressId.toJson(),
      if (press != null) 'press': press?.toJson(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      'powderId': powderId.toJson(),
      if (powder != null) 'powder': powder?.toJson(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      'primerId': primerId.toJson(),
      if (primer != null) 'primer': primer?.toJson(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      'projectileId': projectileId.toJson(),
      if (projectile != null) 'projectile': projectile?.toJson(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadSessionImpl extends ReloadSession {
  _ReloadSessionImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime reloadDate,
    _i1.UuidValue? pressId,
    required _i1.UuidValue pressId,
    _i3.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _i1.UuidValue? powderId,
    required _i1.UuidValue powderId,
    _i4.SupplyStock? powder,
    required double powderGrains,
    _i1.UuidValue? primerId,
    required _i1.UuidValue primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    required _i1.UuidValue projectileId,
    _i4.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) : super._(
         id: id,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
         reloadDate: reloadDate,
         pressId: pressId,
         press: press,
         caliber: caliber,
         casingBatch: casingBatch,
         reloadsCompleted: reloadsCompleted,
         powderId: powderId,
         powder: powder,
         powderGrains: powderGrains,
         primerId: primerId,
         primer: primer,
         projectileId: projectileId,
         projectile: projectile,
         oal: oal,
         totalCost: totalCost,
         unitCost: unitCost,
       );

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ReloadSession copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    DateTime? reloadDate,
    Object? pressId = _Undefined,
    _i1.UuidValue? pressId,
    Object? press = _Undefined,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    Object? powderId = _Undefined,
    _i1.UuidValue? powderId,
    Object? powder = _Undefined,
    double? powderGrains,
    Object? primerId = _Undefined,
    _i1.UuidValue? primerId,
    Object? primer = _Undefined,
    Object? projectileId = _Undefined,
    _i1.UuidValue? projectileId,
    Object? projectile = _Undefined,
    double? oal,
    double? totalCost,
    double? unitCost,
  }) {
    return ReloadSession(
      id: id is _i1.UuidValue? ? id : this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      reloadDate: reloadDate ?? this.reloadDate,
      pressId: pressId ?? this.pressId,
      press: press is _i3.Accessory? ? press : this.press?.copyWith(),
      caliber: caliber ?? this.caliber,
      casingBatch: casingBatch ?? this.casingBatch,
      reloadsCompleted: reloadsCompleted ?? this.reloadsCompleted,
      powderId: powderId ?? this.powderId,
      powder: powder is _i4.SupplyStock? ? powder : this.powder?.copyWith(),
      powderGrains: powderGrains ?? this.powderGrains,
      primerId: primerId ?? this.primerId,
      primer: primer is _i4.SupplyStock? ? primer : this.primer?.copyWith(),
      projectileId: projectileId ?? this.projectileId,
      projectile: projectile is _i4.SupplyStock?
          ? projectile
          : this.projectile?.copyWith(),
      oal: oal ?? this.oal,
      totalCost: totalCost ?? this.totalCost,
      unitCost: unitCost ?? this.unitCost,
    );
  }
}
