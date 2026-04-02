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
import '../enums/membership_status.dart' as _i2;
import '../common/user_profile.dart' as _i3;
import '../club/club.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class Membership implements _i1.SerializableModel {
  Membership._({
    _i1.UuidValue? id,
    this.userId,
    this.userId,
    this.user,
    this.clubId,
    this.clubId,
    this.club,
    this.membershipNumber,
    required this.startDate,
    this.validUntil,
    _i2.MembershipStatus? status,
    this.planName,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       status = status ?? _i2.MembershipStatus.active;

  factory Membership({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  }) = _MembershipImpl;

  factory Membership.fromJson(Map<String, dynamic> jsonSerialization) {
    return Membership(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.UserProfile>(
              jsonSerialization['user'],
            ),
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.Club>(jsonSerialization['club']),
      membershipNumber: jsonSerialization['membershipNumber'] as String?,
      startDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['validUntil']),
      status: jsonSerialization['status'] == null
          ? null
          : _i2.MembershipStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      planName: jsonSerialization['planName'] as String?,
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  _i1.UuidValue? userId;

  _i3.UserProfile? user;

  _i1.UuidValue? clubId;

  _i1.UuidValue? clubId;

  _i4.Club? club;

  String? membershipNumber;

  DateTime startDate;

  DateTime? validUntil;

  _i2.MembershipStatus status;

  String? planName;

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Membership copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    DateTime? startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MembershipImpl extends Membership {
  _MembershipImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         clubId: clubId,
         club: club,
         membershipNumber: membershipNumber,
         startDate: startDate,
         validUntil: validUntil,
         status: status,
         planName: planName,
       );

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Membership copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? clubId = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
    Object? membershipNumber = _Undefined,
    DateTime? startDate,
    Object? validUntil = _Undefined,
    _i2.MembershipStatus? status,
    Object? planName = _Undefined,
  }) {
    return Membership(
      id: id ?? this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i3.UserProfile? ? user : this.user?.copyWith(),
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i4.Club? ? club : this.club?.copyWith(),
      membershipNumber: membershipNumber is String?
          ? membershipNumber
          : this.membershipNumber,
      startDate: startDate ?? this.startDate,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
      status: status ?? this.status,
      planName: planName is String? ? planName : this.planName,
    );
  }
}
