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

abstract class ProductGroup
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ProductGroup._({
    _isc.UuidValue? id,
    required this.name,
    this.description,
    required this.originModule,
    this.ownerId,
    this.owner,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory ProductGroup({
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
  }) = _ProductGroupImpl;

  factory ProductGroup.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductGroup(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      originModule: jsonSerialization['originModule'] as String,
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['owner'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  String? description;

  String originModule;

  _isc.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ProductGroup copyWith({
    _isc.UuidValue? id,
    String? name,
    String? description,
    String? originModule,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ProductGroup',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'originModule': originModule,
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductGroupImpl extends ProductGroup {
  _ProductGroupImpl({
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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
  @_isc.useResult
  @override
  ProductGroup copyWith({
    _isc.UuidValue? id,
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
      ownerId: ownerId is _isc.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _izifjpv2.UserProfile? ? owner : this.owner?.copyWith(),
    );
  }
}
