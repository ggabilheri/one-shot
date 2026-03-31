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
import '../shooter/ammunition_stock.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class Training implements _i1.SerializableModel {
  Training._({
    this.id,
    this.userId,
    required this.userInfoId,
    this.userInfo,
    required this.date,
    required this.location,
    required this.environmentType,
    this.firearmId,
    required this.firearmId,
    this.firearm,
    this.ammunitionId,
    required this.ammunitionId,
    this.ammunition,
    required this.shotsFired,
    required this.distanceMeters,
    this.score,
    this.targetImagesUrl,
  });

  factory Training({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    required _i1.UuidValue ammunitionId,
    _i4.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) = _TrainingImpl;

  factory Training.fromJson(Map<String, dynamic> jsonSerialization) {
    return Training(
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
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      location: jsonSerialization['location'] as String,
      environmentType: jsonSerialization['environmentType'] as String,
      firearmId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['firearmId'],
      ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      ammunitionId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['ammunitionId'],
      ),
      ammunition: jsonSerialization['ammunition'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.AmmunitionStock>(
              jsonSerialization['ammunition'],
            ),
      shotsFired: jsonSerialization['shotsFired'] as int,
      distanceMeters: (jsonSerialization['distanceMeters'] as num).toDouble(),
      score: jsonSerialization['score'] as int?,
      targetImagesUrl: jsonSerialization['targetImagesUrl'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? userId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  DateTime date;

  String location;

  String environmentType;

  _i1.UuidValue? firearmId;

  _i1.UuidValue firearmId;

  _i3.Firearm? firearm;

  _i1.UuidValue? ammunitionId;

  _i1.UuidValue ammunitionId;

  _i4.AmmunitionStock? ammunition;

  int shotsFired;

  double distanceMeters;

  int? score;

  String? targetImagesUrl;

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Training copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    DateTime? date,
    String? location,
    String? environmentType,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    _i1.UuidValue? ammunitionId,
    _i4.AmmunitionStock? ammunition,
    int? shotsFired,
    double? distanceMeters,
    int? score,
    String? targetImagesUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Training',
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'date': date.toJson(),
      'location': location,
      'environmentType': environmentType,
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      'firearmId': firearmId.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (ammunitionId != null) 'ammunitionId': ammunitionId?.toJson(),
      'ammunitionId': ammunitionId.toJson(),
      if (ammunition != null) 'ammunition': ammunition?.toJson(),
      'shotsFired': shotsFired,
      'distanceMeters': distanceMeters,
      if (score != null) 'score': score,
      if (targetImagesUrl != null) 'targetImagesUrl': targetImagesUrl,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TrainingImpl extends Training {
  _TrainingImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    required _i1.UuidValue ammunitionId,
    _i4.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) : super._(
         id: id,
         userId: userId,
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
  @_i1.useResult
  @override
  Training copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    DateTime? date,
    String? location,
    String? environmentType,
    Object? firearmId = _Undefined,
    _i1.UuidValue? firearmId,
    Object? firearm = _Undefined,
    Object? ammunitionId = _Undefined,
    _i1.UuidValue? ammunitionId,
    Object? ammunition = _Undefined,
    int? shotsFired,
    double? distanceMeters,
    Object? score = _Undefined,
    Object? targetImagesUrl = _Undefined,
  }) {
    return Training(
      id: id is _i1.UuidValue? ? id : this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      date: date ?? this.date,
      location: location ?? this.location,
      environmentType: environmentType ?? this.environmentType,
      firearmId: firearmId ?? this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      ammunitionId: ammunitionId ?? this.ammunitionId,
      ammunition: ammunition is _i4.AmmunitionStock?
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
