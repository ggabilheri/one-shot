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
import '../common/accessory.dart' as _ixwksfmb;
import '../common/supply_stock.dart' as _icdicocn;

abstract class ReloadSession
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ReloadSession._({
    _isc.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.reloadDate,
    this.pressId,
    this.press,
    required this.caliber,
    required this.casingBatch,
    required this.reloadsCompleted,
    this.powderId,
    this.powder,
    required this.powderGrains,
    this.primerId,
    this.primer,
    this.projectileId,
    this.projectile,
    required this.oal,
    required this.totalCost,
    required this.unitCost,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory ReloadSession({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required DateTime reloadDate,
    _isc.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _isc.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    required double powderGrains,
    _isc.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _isc.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) = _ReloadSessionImpl;

  factory ReloadSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadSession(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i312scxx.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      reloadDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['reloadDate'],
      ),
      pressId: jsonSerialization['pressId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['pressId']),
      press: jsonSerialization['press'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_ixwksfmb.Accessory>(
              jsonSerialization['press'],
            ),
      caliber: jsonSerialization['caliber'] as String,
      casingBatch: jsonSerialization['casingBatch'] as String,
      reloadsCompleted: jsonSerialization['reloadsCompleted'] as int,
      powderId: jsonSerialization['powderId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['powderId']),
      powder: jsonSerialization['powder'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['powder'],
            ),
      powderGrains: (jsonSerialization['powderGrains'] as num).toDouble(),
      primerId: jsonSerialization['primerId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['primerId']),
      primer: jsonSerialization['primer'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['primer'],
            ),
      projectileId: jsonSerialization['projectileId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['projectileId'],
            ),
      projectile: jsonSerialization['projectile'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['projectile'],
            ),
      oal: (jsonSerialization['oal'] as num).toDouble(),
      totalCost: (jsonSerialization['totalCost'] as num).toDouble(),
      unitCost: (jsonSerialization['unitCost'] as num).toDouble(),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  int? userInfoId;

  _i312scxx.UserInfo? userInfo;

  DateTime reloadDate;

  _isc.UuidValue? pressId;

  _ixwksfmb.Accessory? press;

  String caliber;

  String casingBatch;

  int reloadsCompleted;

  _isc.UuidValue? powderId;

  _icdicocn.SupplyStock? powder;

  double powderGrains;

  _isc.UuidValue? primerId;

  _icdicocn.SupplyStock? primer;

  _isc.UuidValue? projectileId;

  _icdicocn.SupplyStock? projectile;

  double oal;

  double totalCost;

  double unitCost;

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ReloadSession copyWith({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    DateTime? reloadDate,
    _isc.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    _isc.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    double? powderGrains,
    _isc.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _isc.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    double? oal,
    double? totalCost,
    double? unitCost,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadSession',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      if (press != null) 'press': press?.toJson(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      if (powder != null) 'powder': powder?.toJson(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      if (primer != null) 'primer': primer?.toJson(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      if (projectile != null) 'projectile': projectile?.toJson(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ReloadSession',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      if (press != null) 'press': press?.toJsonForProtocol(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      if (powder != null) 'powder': powder?.toJsonForProtocol(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      if (primer != null) 'primer': primer?.toJsonForProtocol(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      if (projectile != null) 'projectile': projectile?.toJsonForProtocol(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadSessionImpl extends ReloadSession {
  _ReloadSessionImpl({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required DateTime reloadDate,
    _isc.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _isc.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    required double powderGrains,
    _isc.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _isc.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) : super._(
         id: id,
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
  @_isc.useResult
  @override
  ReloadSession copyWith({
    _isc.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    DateTime? reloadDate,
    Object? pressId = _Undefined,
    Object? press = _Undefined,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    Object? powderId = _Undefined,
    Object? powder = _Undefined,
    double? powderGrains,
    Object? primerId = _Undefined,
    Object? primer = _Undefined,
    Object? projectileId = _Undefined,
    Object? projectile = _Undefined,
    double? oal,
    double? totalCost,
    double? unitCost,
  }) {
    return ReloadSession(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i312scxx.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      reloadDate: reloadDate ?? this.reloadDate,
      pressId: pressId is _isc.UuidValue? ? pressId : this.pressId,
      press: press is _ixwksfmb.Accessory? ? press : this.press?.copyWith(),
      caliber: caliber ?? this.caliber,
      casingBatch: casingBatch ?? this.casingBatch,
      reloadsCompleted: reloadsCompleted ?? this.reloadsCompleted,
      powderId: powderId is _isc.UuidValue? ? powderId : this.powderId,
      powder: powder is _icdicocn.SupplyStock?
          ? powder
          : this.powder?.copyWith(),
      powderGrains: powderGrains ?? this.powderGrains,
      primerId: primerId is _isc.UuidValue? ? primerId : this.primerId,
      primer: primer is _icdicocn.SupplyStock?
          ? primer
          : this.primer?.copyWith(),
      projectileId: projectileId is _isc.UuidValue?
          ? projectileId
          : this.projectileId,
      projectile: projectile is _icdicocn.SupplyStock?
          ? projectile
          : this.projectile?.copyWith(),
      oal: oal ?? this.oal,
      totalCost: totalCost ?? this.totalCost,
      unitCost: unitCost ?? this.unitCost,
    );
  }
}
