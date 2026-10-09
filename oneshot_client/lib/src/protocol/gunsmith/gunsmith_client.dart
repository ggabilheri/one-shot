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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i312scxx;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../common/address.dart' as _iy1vkl2d;

abstract class GunsmithClient
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  GunsmithClient._({
    _isc.UuidValue? id,
    this.gunsmithUserInfoId,
    this.gunsmithUserInfo,
    required this.name,
    required this.cpf,
    this.rg,
    required this.phone,
    this.addressId,
    this.address,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory GunsmithClient({
    _isc.UuidValue? id,
    int? gunsmithUserInfoId,
    _i312scxx.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  }) = _GunsmithClientImpl;

  factory GunsmithClient.fromJson(Map<String, dynamic> jsonSerialization) {
    return GunsmithClient(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gunsmithUserInfoId: jsonSerialization['gunsmithUserInfoId'] as int?,
      gunsmithUserInfo: jsonSerialization['gunsmithUserInfo'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i312scxx.UserInfo>(
              jsonSerialization['gunsmithUserInfo'],
            ),
      name: jsonSerialization['name'] as String,
      cpf: jsonSerialization['cpf'] as String,
      rg: jsonSerialization['rg'] as String?,
      phone: jsonSerialization['phone'] as String,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['addressId'],
            ),
      address: jsonSerialization['address'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iy1vkl2d.Address>(
              jsonSerialization['address'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  int? gunsmithUserInfoId;

  _i312scxx.UserInfo? gunsmithUserInfo;

  String name;

  String cpf;

  String? rg;

  String phone;

  _isc.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  GunsmithClient copyWith({
    _isc.UuidValue? id,
    int? gunsmithUserInfoId,
    _i312scxx.UserInfo? gunsmithUserInfo,
    String? name,
    String? cpf,
    String? rg,
    String? phone,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GunsmithClient',
      'id': id.toJson(),
      if (gunsmithUserInfoId != null) 'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'GunsmithClient',
      'id': id.toJson(),
      if (gunsmithUserInfoId != null) 'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithClientImpl extends GunsmithClient {
  _GunsmithClientImpl({
    _isc.UuidValue? id,
    int? gunsmithUserInfoId,
    _i312scxx.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  }) : super._(
         id: id,
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
  @_isc.useResult
  @override
  GunsmithClient copyWith({
    _isc.UuidValue? id,
    Object? gunsmithUserInfoId = _Undefined,
    Object? gunsmithUserInfo = _Undefined,
    String? name,
    String? cpf,
    Object? rg = _Undefined,
    String? phone,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
  }) {
    return GunsmithClient(
      id: id ?? this.id,
      gunsmithUserInfoId: gunsmithUserInfoId is int?
          ? gunsmithUserInfoId
          : this.gunsmithUserInfoId,
      gunsmithUserInfo: gunsmithUserInfo is _i312scxx.UserInfo?
          ? gunsmithUserInfo
          : this.gunsmithUserInfo?.copyWith(),
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      rg: rg is String? ? rg : this.rg,
      phone: phone ?? this.phone,
      addressId: addressId is _isc.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
    );
  }
}
