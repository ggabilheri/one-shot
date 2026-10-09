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
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class SecurityRole
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SecurityRole._({
    _isc.UuidValue? id,
    required this.name,
    this.description,
    bool? active,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       active = active ?? true;

  factory SecurityRole({
    _isc.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) = _SecurityRoleImpl;

  factory SecurityRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return SecurityRole(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  String? description;

  bool active;

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SecurityRole copyWith({
    _isc.UuidValue? id,
    String? name,
    String? description,
    bool? active,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SecurityRole',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'active': active,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SecurityRole',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'active': active,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SecurityRoleImpl extends SecurityRole {
  _SecurityRoleImpl({
    _isc.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) : super._(id: id, name: name, description: description, active: active);

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SecurityRole copyWith({
    _isc.UuidValue? id,
    String? name,
    Object? description = _Undefined,
    bool? active,
  }) {
    return SecurityRole(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      active: active ?? this.active,
    );
  }
}
