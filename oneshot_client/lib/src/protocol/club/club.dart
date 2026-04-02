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
import '../common/address.dart' as _i2;
import '../common/user_profile.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class Club implements _i1.SerializableModel {
  Club._({
    _i1.UuidValue? id,
    required this.name,
    required this.cnpj,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    this.phoneNumber,
    this.email,
    bool? active,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true;

  factory Club({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  }) = _ClubImpl;

  factory Club.fromJson(Map<String, dynamic> jsonSerialization) {
    return Club(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.Address>(
              jsonSerialization['address'],
            ),
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String name;

  String cnpj;

  _i1.UuidValue? addressId;

  _i2.Address? address;

  _i1.UuidValue? ownerId;

  _i3.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  /// Returns a shallow copy of this [Club]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Club copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Club',
      'id': id.toJson(),
      'name': name,
      'cnpj': cnpj,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ClubImpl extends Club {
  _ClubImpl({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  }) : super._(
         id: id,
         name: name,
         cnpj: cnpj,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         phoneNumber: phoneNumber,
         email: email,
         active: active,
       );

  /// Returns a shallow copy of this [Club]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Club copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
  }) {
    return Club(
      id: id ?? this.id,
      name: name ?? this.name,
      cnpj: cnpj ?? this.cnpj,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i3.UserProfile? ? owner : this.owner?.copyWith(),
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
    );
  }
}
