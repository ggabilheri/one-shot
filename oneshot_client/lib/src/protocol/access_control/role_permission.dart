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
import '../access_control/security_role.dart' as _i2;
import '../enums/platform_app.enum.dart' as _i3;
import '../enums/app_module.enum.dart' as _i4;
import '../enums/access_level.enum.dart' as _i5;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i6;

abstract class RolePermission implements _i1.SerializableModel {
  RolePermission._({
    _i1.UuidValue? id,
    this.securityRoleId,
    this.securityRole,
    required this.platform,
    this.module,
    required this.level,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory RolePermission({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    required _i3.PlatformApp platform,
    _i4.AppModule? module,
    required _i5.AccessLevel level,
  }) = _RolePermissionImpl;

  factory RolePermission.fromJson(Map<String, dynamic> jsonSerialization) {
    return RolePermission(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _i6.Protocol().deserialize<_i2.SecurityRole>(
              jsonSerialization['securityRole'],
            ),
      platform: _i3.PlatformApp.fromJson(
        (jsonSerialization['platform'] as String),
      ),
      module: jsonSerialization['module'] == null
          ? null
          : _i4.AppModule.fromJson((jsonSerialization['module'] as String)),
      level: _i5.AccessLevel.fromJson((jsonSerialization['level'] as String)),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? securityRoleId;

  _i2.SecurityRole? securityRole;

  _i3.PlatformApp platform;

  _i4.AppModule? module;

  _i5.AccessLevel level;

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RolePermission copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    _i3.PlatformApp? platform,
    _i4.AppModule? module,
    _i5.AccessLevel? level,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RolePermission',
      'id': id.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null) 'securityRole': securityRole?.toJson(),
      'platform': platform.toJson(),
      if (module != null) 'module': module?.toJson(),
      'level': level.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RolePermissionImpl extends RolePermission {
  _RolePermissionImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    required _i3.PlatformApp platform,
    _i4.AppModule? module,
    required _i5.AccessLevel level,
  }) : super._(
         id: id,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
         platform: platform,
         module: module,
         level: level,
       );

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RolePermission copyWith({
    _i1.UuidValue? id,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
    _i3.PlatformApp? platform,
    Object? module = _Undefined,
    _i5.AccessLevel? level,
  }) {
    return RolePermission(
      id: id ?? this.id,
      securityRoleId: securityRoleId is _i1.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _i2.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
      platform: platform ?? this.platform,
      module: module is _i4.AppModule? ? module : this.module,
      level: level ?? this.level,
    );
  }
}
