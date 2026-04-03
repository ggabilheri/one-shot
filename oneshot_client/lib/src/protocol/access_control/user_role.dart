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
import '../access_control/security_role.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class UserRole implements _i1.SerializableModel {
  UserRole._({
    _i1.UuidValue? id,
    this.userProfileId,
    this.userProfile,
    this.securityRoleId,
    this.securityRole,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory UserRole({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
  }) = _UserRoleImpl;

  factory UserRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserRole(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.SecurityRole>(
              jsonSerialization['securityRole'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? userProfileId;

  _i2.UserProfile? userProfile;

  _i1.UuidValue? securityRoleId;

  _i3.SecurityRole? securityRole;

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserRole copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
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
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserRoleImpl extends UserRole {
  _UserRoleImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
  }) : super._(
         id: id,
         userProfileId: userProfileId,
         userProfile: userProfile,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
       );

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserRole copyWith({
    _i1.UuidValue? id,
    Object? userProfileId = _Undefined,
    Object? userProfile = _Undefined,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
  }) {
    return UserRole(
      id: id ?? this.id,
      userProfileId: userProfileId is _i1.UuidValue?
          ? userProfileId
          : this.userProfileId,
      userProfile: userProfile is _i2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
      securityRoleId: securityRoleId is _i1.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _i3.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
    );
  }
}
