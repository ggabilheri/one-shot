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
import '../shooter/ammunition_stock.dart' as _idy3jb5r;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Training
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Training._({
    _isc.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.date,
    required this.location,
    required this.environmentType,
    this.firearmId,
    this.firearm,
    this.ammunitionId,
    this.ammunition,
    required this.shotsFired,
    required this.distanceMeters,
    this.score,
    this.targetImagesUrl,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Training({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _isc.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) = _TrainingImpl;

  factory Training.fromJson(Map<String, dynamic> jsonSerialization) {
    return Training(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i312scxx.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      date: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      location: jsonSerialization['location'] as String,
      environmentType: jsonSerialization['environmentType'] as String,
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['firearmId'],
            ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      ammunitionId: jsonSerialization['ammunitionId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['ammunitionId'],
            ),
      ammunition: jsonSerialization['ammunition'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_idy3jb5r.AmmunitionStock>(
              jsonSerialization['ammunition'],
            ),
      shotsFired: jsonSerialization['shotsFired'] as int,
      distanceMeters: (jsonSerialization['distanceMeters'] as num).toDouble(),
      score: jsonSerialization['score'] as int?,
      targetImagesUrl: jsonSerialization['targetImagesUrl'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  int? userInfoId;

  _i312scxx.UserInfo? userInfo;

  DateTime date;

  String location;

  String environmentType;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  _isc.UuidValue? ammunitionId;

  _idy3jb5r.AmmunitionStock? ammunition;

  int shotsFired;

  double distanceMeters;

  int? score;

  String? targetImagesUrl;

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Training copyWith({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    DateTime? date,
    String? location,
    String? environmentType,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _isc.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    int? shotsFired,
    double? distanceMeters,
    int? score,
    String? targetImagesUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Training',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'date': date.toJson(),
      'location': location,
      'environmentType': environmentType,
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (ammunitionId != null) 'ammunitionId': ammunitionId?.toJson(),
      if (ammunition != null) 'ammunition': ammunition?.toJson(),
      'shotsFired': shotsFired,
      'distanceMeters': distanceMeters,
      if (score != null) 'score': score,
      if (targetImagesUrl != null) 'targetImagesUrl': targetImagesUrl,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Training',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'date': date.toJson(),
      'location': location,
      'environmentType': environmentType,
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      if (ammunitionId != null) 'ammunitionId': ammunitionId?.toJson(),
      if (ammunition != null) 'ammunition': ammunition?.toJsonForProtocol(),
      'shotsFired': shotsFired,
      'distanceMeters': distanceMeters,
      if (score != null) 'score': score,
      if (targetImagesUrl != null) 'targetImagesUrl': targetImagesUrl,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TrainingImpl extends Training {
  _TrainingImpl({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _isc.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         date: date,
         location: location,
         environmentType: environmentType,
         firearmId: firearmId,
         firearm: firearm,
         ammunitionId: ammunitionId,
         ammunition: ammunition,
         shotsFired: shotsFired,
         distanceMeters: distanceMeters,
         score: score,
         targetImagesUrl: targetImagesUrl,
       );

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Training copyWith({
    _isc.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    DateTime? date,
    String? location,
    String? environmentType,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? ammunitionId = _Undefined,
    Object? ammunition = _Undefined,
    int? shotsFired,
    double? distanceMeters,
    Object? score = _Undefined,
    Object? targetImagesUrl = _Undefined,
  }) {
    return Training(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i312scxx.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      date: date ?? this.date,
      location: location ?? this.location,
      environmentType: environmentType ?? this.environmentType,
      firearmId: firearmId is _isc.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      ammunitionId: ammunitionId is _isc.UuidValue?
          ? ammunitionId
          : this.ammunitionId,
      ammunition: ammunition is _idy3jb5r.AmmunitionStock?
          ? ammunition
          : this.ammunition?.copyWith(),
      shotsFired: shotsFired ?? this.shotsFired,
      distanceMeters: distanceMeters ?? this.distanceMeters,
      score: score is int? ? score : this.score,
      targetImagesUrl: targetImagesUrl is String?
          ? targetImagesUrl
          : this.targetImagesUrl,
    );
  }
}
