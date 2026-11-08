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

import '../access_control/security_role.dart' as _ivjb8sui;
import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;

abstract class UserRole
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  UserRole._({
    _isc.UuidValue? id,
    this.userProfileId,
    this.userProfile,
    this.securityRoleId,
    this.securityRole,
    this.companyId,
    this.company,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory UserRole({
    _isc.UuidValue? id,
    _isc.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
    _isc.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _UserRoleImpl;

  factory UserRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserRole(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_ivjb8sui.SecurityRole>(
              jsonSerialization['securityRole'],
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
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? userProfileId;

  _izifjpv2.UserProfile? userProfile;

  _isc.UuidValue? securityRoleId;

  _ivjb8sui.SecurityRole? securityRole;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  UserRole copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userProfileId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? userProfile = const _UndefinedUserRole$userProfile(),
    _isc.UuidValue? securityRoleId = const _isc.$UndefinedUuidValue(),
    _ivjb8sui.SecurityRole? securityRole =
        const _UndefinedUserRole$securityRole(),
    _isc.UuidValue? companyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? company = const _UndefinedUserRole$company(),
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserRole',
      'id': id.toJson(),
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null) 'securityRole': securityRole?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'UserRole',
      'id': id.toJson(),
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJsonForProtocol(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null)
        'securityRole': securityRole?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _UndefinedUserRole$userProfile extends _isc.UndefinedSentinel
    implements _izifjpv2.UserProfile {
  const _UndefinedUserRole$userProfile();
}

class _UndefinedUserRole$securityRole extends _isc.UndefinedSentinel
    implements _ivjb8sui.SecurityRole {
  const _UndefinedUserRole$securityRole();
}

class _UndefinedUserRole$company extends _isc.UndefinedSentinel
    implements _iocy1ifk.Company {
  const _UndefinedUserRole$company();
}

class _UserRoleImpl extends UserRole {
  _UserRoleImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
    _isc.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) : super._(
         id: id,
         userProfileId: userProfileId,
         userProfile: userProfile,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  UserRole copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userProfileId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? userProfile = const _UndefinedUserRole$userProfile(),
    _isc.UuidValue? securityRoleId = const _isc.$UndefinedUuidValue(),
    _ivjb8sui.SecurityRole? securityRole =
        const _UndefinedUserRole$securityRole(),
    _isc.UuidValue? companyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? company = const _UndefinedUserRole$company(),
  }) {
    return UserRole(
      id: id ?? this.id,
      userProfileId: userProfileId is _isc.UndefinedSentinel
          ? this.userProfileId
          : userProfileId,
      userProfile: userProfile is _isc.UndefinedSentinel
          ? this.userProfile?.copyWith()
          : userProfile,
      securityRoleId: securityRoleId is _isc.UndefinedSentinel
          ? this.securityRoleId
          : securityRoleId,
      securityRole: securityRole is _isc.UndefinedSentinel
          ? this.securityRole?.copyWith()
          : securityRole,
      companyId: companyId is _isc.UndefinedSentinel
          ? this.companyId
          : companyId,
      company: company is _isc.UndefinedSentinel
          ? this.company?.copyWith()
          : company,
    );
  }
}
