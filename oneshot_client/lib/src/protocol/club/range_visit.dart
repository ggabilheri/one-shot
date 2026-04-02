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
import '../common/user_profile.dart' as _i2;
import '../club/club.dart' as _i3;
import '../shooter/firearm.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class RangeVisit implements _i1.SerializableModel {
  RangeVisit._({
    _i1.UuidValue? id,
    this.userId,
    this.user,
    this.clubId,
    this.club,
    this.firearmId,
    this.firearm,
    required this.checkIn,
    this.checkOut,
    int? shotsFired,
    this.notes,
    bool? habitualityReportGenerated,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       shotsFired = shotsFired ?? 0,
       habitualityReportGenerated = habitualityReportGenerated ?? false;

  factory RangeVisit({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) = _RangeVisitImpl;

  factory RangeVisit.fromJson(Map<String, dynamic> jsonSerialization) {
    return RangeVisit(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['user'],
            ),
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Club>(jsonSerialization['club']),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.Firearm>(
              jsonSerialization['firearm'],
            ),
      checkIn: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['checkIn']),
      checkOut: jsonSerialization['checkOut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['checkOut']),
      shotsFired: jsonSerialization['shotsFired'] as int?,
      notes: jsonSerialization['notes'] as String?,
      habitualityReportGenerated:
          jsonSerialization['habitualityReportGenerated'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(
              jsonSerialization['habitualityReportGenerated'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  _i2.UserProfile? user;

  _i1.UuidValue? clubId;

  _i3.Club? club;

  _i1.UuidValue? firearmId;

  _i4.Firearm? firearm;

  DateTime checkIn;

  DateTime? checkOut;

  int shotsFired;

  String? notes;

  bool habitualityReportGenerated;

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RangeVisit copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
    DateTime? checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RangeVisit',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'checkIn': checkIn.toJson(),
      if (checkOut != null) 'checkOut': checkOut?.toJson(),
      'shotsFired': shotsFired,
      if (notes != null) 'notes': notes,
      'habitualityReportGenerated': habitualityReportGenerated,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RangeVisitImpl extends RangeVisit {
  _RangeVisitImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         clubId: clubId,
         club: club,
         firearmId: firearmId,
         firearm: firearm,
         checkIn: checkIn,
         checkOut: checkOut,
         shotsFired: shotsFired,
         notes: notes,
         habitualityReportGenerated: habitualityReportGenerated,
       );

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RangeVisit copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? checkIn,
    Object? checkOut = _Undefined,
    int? shotsFired,
    Object? notes = _Undefined,
    bool? habitualityReportGenerated,
  }) {
    return RangeVisit(
      id: id ?? this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i2.UserProfile? ? user : this.user?.copyWith(),
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i3.Club? ? club : this.club?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i4.Firearm? ? firearm : this.firearm?.copyWith(),
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut is DateTime? ? checkOut : this.checkOut,
      shotsFired: shotsFired ?? this.shotsFired,
      notes: notes is String? ? notes : this.notes,
      habitualityReportGenerated:
          habitualityReportGenerated ?? this.habitualityReportGenerated,
    );
  }
}
