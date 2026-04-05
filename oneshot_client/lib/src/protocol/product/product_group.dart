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
import 'package:oneshot_client/src/protocol/protocol.dart' as _i3;

abstract class ProductGroup implements _i1.SerializableModel {
  ProductGroup._({
    _i1.UuidValue? id,
    required this.name,
    this.description,
    required this.originModule,
    this.ownerId,
    this.owner,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory ProductGroup({
    _i1.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  }) = _ProductGroupImpl;

  factory ProductGroup.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductGroup(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      originModule: jsonSerialization['originModule'] as String,
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['owner'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String name;

  String? description;

  String originModule;

  _i1.UuidValue? ownerId;

  _i2.UserProfile? owner;

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ProductGroup copyWith({
    _i1.UuidValue? id,
    String? name,
    String? description,
    String? originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ProductGroup',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'originModule': originModule,
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductGroupImpl extends ProductGroup {
  _ProductGroupImpl({
    _i1.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  }) : super._(
         id: id,
         name: name,
         description: description,
         originModule: originModule,
         ownerId: ownerId,
         owner: owner,
       );

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ProductGroup copyWith({
    _i1.UuidValue? id,
    String? name,
    Object? description = _Undefined,
    String? originModule,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
  }) {
    return ProductGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      originModule: originModule ?? this.originModule,
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i2.UserProfile? ? owner : this.owner?.copyWith(),
    );
  }
}
