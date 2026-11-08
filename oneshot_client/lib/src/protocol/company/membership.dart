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

import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;
import '../enums/membership_status.dart' as _ikbz440x;

abstract class Membership
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Membership._({
    _isc.UuidValue? id,
    this.userId,
    this.user,
    this.companyId,
    this.company,
    this.membershipNumber,
    required this.startDate,
    this.validUntil,
    _ikbz440x.MembershipStatus? status,
    this.planName,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       status = status ?? _ikbz440x.MembershipStatus.active;

  factory Membership({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _ikbz440x.MembershipStatus? status,
    String? planName,
  }) = _MembershipImpl;

  factory Membership.fromJson(Map<String, dynamic> jsonSerialization) {
    return Membership(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['companyId'],
            ),
      company: jsonSerialization['company'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
      membershipNumber: jsonSerialization['membershipNumber'] as String?,
      startDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['validUntil'],
            ),
      status: jsonSerialization['status'] == null
          ? null
          : _ikbz440x.MembershipStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      planName: jsonSerialization['planName'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  String? membershipNumber;

  DateTime startDate;

  DateTime? validUntil;

  _ikbz440x.MembershipStatus status;

  String? planName;

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Membership copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? user = const _UndefinedMembership$user(),
    _isc.UuidValue? companyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? company = const _UndefinedMembership$company(),
    String? membershipNumber,
    DateTime? startDate,
    DateTime? validUntil = const _isc.$UndefinedDateTime(),
    _ikbz440x.MembershipStatus? status,
    String? planName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UndefinedMembership$user extends _isc.UndefinedSentinel
    implements _izifjpv2.UserProfile {
  const _UndefinedMembership$user();
}

class _UndefinedMembership$company extends _isc.UndefinedSentinel
    implements _iocy1ifk.Company {
  const _UndefinedMembership$company();
}

class _MembershipImpl extends Membership {
  _MembershipImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _ikbz440x.MembershipStatus? status,
    String? planName,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         companyId: companyId,
         company: company,
         membershipNumber: membershipNumber,
         startDate: startDate,
         validUntil: validUntil,
         status: status,
         planName: planName,
       );

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Membership copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? user = const _UndefinedMembership$user(),
    _isc.UuidValue? companyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? company = const _UndefinedMembership$company(),
    Object? membershipNumber = _Undefined,
    DateTime? startDate,
    DateTime? validUntil = const _isc.$UndefinedDateTime(),
    _ikbz440x.MembershipStatus? status,
    Object? planName = _Undefined,
  }) {
    return Membership(
      id: id ?? this.id,
      userId: userId is _isc.UndefinedSentinel ? this.userId : userId,
      user: user is _isc.UndefinedSentinel ? this.user?.copyWith() : user,
      companyId: companyId is _isc.UndefinedSentinel
          ? this.companyId
          : companyId,
      company: company is _isc.UndefinedSentinel
          ? this.company?.copyWith()
          : company,
      membershipNumber: membershipNumber is String?
          ? membershipNumber
          : this.membershipNumber,
      startDate: startDate ?? this.startDate,
      validUntil: validUntil is _isc.UndefinedSentinel
          ? this.validUntil
          : validUntil,
      status: status ?? this.status,
      planName: planName is String? ? planName : this.planName,
    );
  }
}
