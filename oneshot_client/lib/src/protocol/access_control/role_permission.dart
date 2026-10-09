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
import '../enums/access_level.enum.dart' as _iznhd8p2;
import '../enums/app_module.enum.dart' as _if1q2mgi;
import '../enums/platform_app.enum.dart' as _ie17db6d;

abstract class RolePermission
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  RolePermission._({
    _isc.UuidValue? id,
    this.securityRoleId,
    this.securityRole,
    required this.platform,
    this.module,
    required this.level,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory RolePermission({
    _isc.UuidValue? id,
    _isc.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    required _ie17db6d.PlatformApp platform,
    _if1q2mgi.AppModule? module,
    required _iznhd8p2.AccessLevel level,
  }) = _RolePermissionImpl;

  factory RolePermission.fromJson(Map<String, dynamic> jsonSerialization) {
    return RolePermission(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
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
      platform: _ie17db6d.PlatformApp.fromJson(
        (jsonSerialization['platform'] as String),
      ),
      module: jsonSerialization['module'] == null
          ? null
          : _if1q2mgi.AppModule.fromJson(
              (jsonSerialization['module'] as String),
            ),
      level: _iznhd8p2.AccessLevel.fromJson(
        (jsonSerialization['level'] as String),
      ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? securityRoleId;

  _ivjb8sui.SecurityRole? securityRole;

  _ie17db6d.PlatformApp platform;

  _if1q2mgi.AppModule? module;

  _iznhd8p2.AccessLevel level;

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  RolePermission copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _ie17db6d.PlatformApp? platform,
    _if1q2mgi.AppModule? module,
    _iznhd8p2.AccessLevel? level,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RolePermission',
      'id': id.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null)
        'securityRole': securityRole?.toJsonForProtocol(),
      'platform': platform.toJson(),
      if (module != null) 'module': module?.toJson(),
      'level': level.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RolePermissionImpl extends RolePermission {
  _RolePermissionImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    required _ie17db6d.PlatformApp platform,
    _if1q2mgi.AppModule? module,
    required _iznhd8p2.AccessLevel level,
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
  @_isc.useResult
  @override
  RolePermission copyWith({
    _isc.UuidValue? id,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
    _ie17db6d.PlatformApp? platform,
    Object? module = _Undefined,
    _iznhd8p2.AccessLevel? level,
  }) {
    return RolePermission(
      id: id ?? this.id,
      securityRoleId: securityRoleId is _isc.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _ivjb8sui.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
      platform: platform ?? this.platform,
      module: module is _if1q2mgi.AppModule? ? module : this.module,
      level: level ?? this.level,
    );
  }
}
