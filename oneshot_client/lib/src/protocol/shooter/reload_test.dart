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
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../shooter/firearm.dart' as _i25s0fp9;
import '../shooter/reload_session.dart' as _iai2mm7j;

abstract class ReloadTest
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ReloadTest._({
    _isc.UuidValue? id,
    this.reloadSessionId,
    this.reloadSession,
    this.firearmId,
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
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory ReloadTest({
    _isc.UuidValue? id,
    _isc.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
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
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      reloadSessionId: jsonSerialization['reloadSessionId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['reloadSessionId'],
            ),
      reloadSession: jsonSerialization['reloadSession'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iai2mm7j.ReloadSession>(
              jsonSerialization['reloadSession'],
            ),
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
      testDate: _isc.DateTimeJsonExtension.fromJson(
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

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? reloadSessionId;

  _iai2mm7j.ReloadSession? reloadSession;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

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
  @_isc.useResult
  ReloadTest copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
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
      'id': id.toJson(),
      if (reloadSessionId != null) 'reloadSessionId': reloadSessionId?.toJson(),
      if (reloadSession != null) 'reloadSession': reloadSession?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ReloadTest',
      'id': id.toJson(),
      if (reloadSessionId != null) 'reloadSessionId': reloadSessionId?.toJson(),
      if (reloadSession != null)
        'reloadSession': reloadSession?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
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
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadTestImpl extends ReloadTest {
  _ReloadTestImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
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
  @_isc.useResult
  @override
  ReloadTest copyWith({
    _isc.UuidValue? id,
    Object? reloadSessionId = _Undefined,
    Object? reloadSession = _Undefined,
    Object? firearmId = _Undefined,
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
      id: id ?? this.id,
      reloadSessionId: reloadSessionId is _isc.UuidValue?
          ? reloadSessionId
          : this.reloadSessionId,
      reloadSession: reloadSession is _iai2mm7j.ReloadSession?
          ? reloadSession
          : this.reloadSession?.copyWith(),
      firearmId: firearmId is _isc.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
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
