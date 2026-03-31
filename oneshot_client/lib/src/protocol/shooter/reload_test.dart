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
import '../shooter/reload_session.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class ReloadTest implements _i1.SerializableModel {
  ReloadTest._({
    this.id,
    this.reloadSessionId,
    required this.reloadSessionId,
    this.reloadSession,
    this.firearmId,
    required this.firearmId,
    this.firearm,
    required this.testDate,
    required this.shotsFired,
    required this.highestVelocityFps,
    required this.lowestVelocityFps,
    required this.averageVelocityFps,
    required this.powerFactor,
    required this.averageEnergy,
    this.groupingMeasurement,
    required this.crackedCasings,
  });

  factory ReloadTest({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    required _i1.UuidValue reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    required DateTime testDate,
    required int shotsFired,
    required double highestVelocityFps,
    required double lowestVelocityFps,
    required double averageVelocityFps,
    required double powerFactor,
    required double averageEnergy,
    double? groupingMeasurement,
    required int crackedCasings,
  }) = _ReloadTestImpl;

  factory ReloadTest.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadTest(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      reloadSessionId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['reloadSessionId'],
      ),
      reloadSession: jsonSerialization['reloadSession'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.ReloadSession>(
              jsonSerialization['reloadSession'],
            ),
      firearmId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['firearmId'],
      ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      testDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['testDate'],
      ),
      shotsFired: jsonSerialization['shotsFired'] as int,
      highestVelocityFps: (jsonSerialization['highestVelocityFps'] as num)
          .toDouble(),
      lowestVelocityFps: (jsonSerialization['lowestVelocityFps'] as num)
          .toDouble(),
      averageVelocityFps: (jsonSerialization['averageVelocityFps'] as num)
          .toDouble(),
      powerFactor: (jsonSerialization['powerFactor'] as num).toDouble(),
      averageEnergy: (jsonSerialization['averageEnergy'] as num).toDouble(),
      groupingMeasurement: (jsonSerialization['groupingMeasurement'] as num?)
          ?.toDouble(),
      crackedCasings: jsonSerialization['crackedCasings'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? reloadSessionId;

  _i1.UuidValue reloadSessionId;

  _i2.ReloadSession? reloadSession;

  _i1.UuidValue? firearmId;

  _i1.UuidValue firearmId;

  _i3.Firearm? firearm;

  DateTime testDate;

  int shotsFired;

  double highestVelocityFps;

  double lowestVelocityFps;

  double averageVelocityFps;

  double powerFactor;

  double averageEnergy;

  double? groupingMeasurement;

  int crackedCasings;

  /// Returns a shallow copy of this [ReloadTest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ReloadTest copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    _i1.UuidValue? reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    DateTime? testDate,
    int? shotsFired,
    double? highestVelocityFps,
    double? lowestVelocityFps,
    double? averageVelocityFps,
    double? powerFactor,
    double? averageEnergy,
    double? groupingMeasurement,
    int? crackedCasings,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadTest',
      if (id != null) 'id': id?.toJson(),
      if (reloadSessionId != null) 'reloadSessionId': reloadSessionId?.toJson(),
      'reloadSessionId': reloadSessionId.toJson(),
      if (reloadSession != null) 'reloadSession': reloadSession?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      'firearmId': firearmId.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'testDate': testDate.toJson(),
      'shotsFired': shotsFired,
      'highestVelocityFps': highestVelocityFps,
      'lowestVelocityFps': lowestVelocityFps,
      'averageVelocityFps': averageVelocityFps,
      'powerFactor': powerFactor,
      'averageEnergy': averageEnergy,
      if (groupingMeasurement != null)
        'groupingMeasurement': groupingMeasurement,
      'crackedCasings': crackedCasings,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadTestImpl extends ReloadTest {
  _ReloadTestImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    required _i1.UuidValue reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
    required DateTime testDate,
    required int shotsFired,
    required double highestVelocityFps,
    required double lowestVelocityFps,
    required double averageVelocityFps,
    required double powerFactor,
    required double averageEnergy,
    double? groupingMeasurement,
    required int crackedCasings,
  }) : super._(
         id: id,
         reloadSessionId: reloadSessionId,
         reloadSession: reloadSession,
         firearmId: firearmId,
         firearm: firearm,
         testDate: testDate,
         shotsFired: shotsFired,
         highestVelocityFps: highestVelocityFps,
         lowestVelocityFps: lowestVelocityFps,
         averageVelocityFps: averageVelocityFps,
         powerFactor: powerFactor,
         averageEnergy: averageEnergy,
         groupingMeasurement: groupingMeasurement,
         crackedCasings: crackedCasings,
       );

  /// Returns a shallow copy of this [ReloadTest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ReloadTest copyWith({
    Object? id = _Undefined,
    Object? reloadSessionId = _Undefined,
    _i1.UuidValue? reloadSessionId,
    Object? reloadSession = _Undefined,
    Object? firearmId = _Undefined,
    _i1.UuidValue? firearmId,
    Object? firearm = _Undefined,
    DateTime? testDate,
    int? shotsFired,
    double? highestVelocityFps,
    double? lowestVelocityFps,
    double? averageVelocityFps,
    double? powerFactor,
    double? averageEnergy,
    Object? groupingMeasurement = _Undefined,
    int? crackedCasings,
  }) {
    return ReloadTest(
      id: id is _i1.UuidValue? ? id : this.id,
      reloadSessionId: reloadSessionId ?? this.reloadSessionId,
      reloadSession: reloadSession is _i2.ReloadSession?
          ? reloadSession
          : this.reloadSession?.copyWith(),
      firearmId: firearmId ?? this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      testDate: testDate ?? this.testDate,
      shotsFired: shotsFired ?? this.shotsFired,
      highestVelocityFps: highestVelocityFps ?? this.highestVelocityFps,
      lowestVelocityFps: lowestVelocityFps ?? this.lowestVelocityFps,
      averageVelocityFps: averageVelocityFps ?? this.averageVelocityFps,
      powerFactor: powerFactor ?? this.powerFactor,
      averageEnergy: averageEnergy ?? this.averageEnergy,
      groupingMeasurement: groupingMeasurement is double?
          ? groupingMeasurement
          : this.groupingMeasurement,
      crackedCasings: crackedCasings ?? this.crackedCasings,
    );
  }
}
