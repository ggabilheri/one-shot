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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import '../common/address.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class GunsmithClient implements _i1.SerializableModel {
  GunsmithClient._({
    this.id,
    this.gunsmithUserId,
    required this.gunsmithUserInfoId,
    this.gunsmithUserInfo,
    required this.name,
    required this.cpf,
    this.rg,
    required this.phone,
    this.addressId,
    required this.addressId,
    this.address,
  });

  factory GunsmithClient({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    required int gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i3.Address? address,
  }) = _GunsmithClientImpl;

  factory GunsmithClient.fromJson(Map<String, dynamic> jsonSerialization) {
    return GunsmithClient(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gunsmithUserId: jsonSerialization['gunsmithUserId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithUserId'],
            ),
      gunsmithUserInfoId: jsonSerialization['gunsmithUserInfoId'] as int,
      gunsmithUserInfo: jsonSerialization['gunsmithUserInfo'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['gunsmithUserInfo'],
            ),
      name: jsonSerialization['name'] as String,
      cpf: jsonSerialization['cpf'] as String,
      rg: jsonSerialization['rg'] as String?,
      phone: jsonSerialization['phone'] as String,
      addressId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['addressId'],
      ),
      address: jsonSerialization['address'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Address>(
              jsonSerialization['address'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  _i1.UuidValue? gunsmithUserId;

  int gunsmithUserInfoId;

  _i2.UserInfo? gunsmithUserInfo;

  String name;

  String cpf;

  String? rg;

  String phone;

  _i1.UuidValue? addressId;

  _i1.UuidValue addressId;

  _i3.Address? address;

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GunsmithClient copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    int? gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    String? name,
    String? cpf,
    String? rg,
    String? phone,
    _i1.UuidValue? addressId,
    _i1.UuidValue? addressId,
    _i3.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GunsmithClient',
      if (id != null) 'id': id?.toJson(),
      if (gunsmithUserId != null) 'gunsmithUserId': gunsmithUserId?.toJson(),
      'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      'addressId': addressId.toJson(),
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithClientImpl extends GunsmithClient {
  _GunsmithClientImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    required int gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i3.Address? address,
  }) : super._(
         id: id,
         gunsmithUserId: gunsmithUserId,
         gunsmithUserInfoId: gunsmithUserInfoId,
         gunsmithUserInfo: gunsmithUserInfo,
         name: name,
         cpf: cpf,
         rg: rg,
         phone: phone,
         addressId: addressId,
         address: address,
       );

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  GunsmithClient copyWith({
    Object? id = _Undefined,
    Object? gunsmithUserId = _Undefined,
    int? gunsmithUserInfoId,
    Object? gunsmithUserInfo = _Undefined,
    String? name,
    String? cpf,
    Object? rg = _Undefined,
    String? phone,
    Object? addressId = _Undefined,
    _i1.UuidValue? addressId,
    Object? address = _Undefined,
  }) {
    return GunsmithClient(
      id: id is _i1.UuidValue? ? id : this.id,
      gunsmithUserId: gunsmithUserId is _i1.UuidValue?
          ? gunsmithUserId
          : this.gunsmithUserId,
      gunsmithUserInfoId: gunsmithUserInfoId ?? this.gunsmithUserInfoId,
      gunsmithUserInfo: gunsmithUserInfo is _i2.UserInfo?
          ? gunsmithUserInfo
          : this.gunsmithUserInfo?.copyWith(),
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      rg: rg is String? ? rg : this.rg,
      phone: phone ?? this.phone,
      addressId: addressId ?? this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
    );
  }
}
