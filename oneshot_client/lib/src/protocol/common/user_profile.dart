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
import '../enums/user_type.enum.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class UserProfile implements _i1.SerializableModel {
  UserProfile._({
    this.id,
    this.userInfoId,
    this.userInfo,
    required this.name,
    this.cpf,
    this.cr,
    this.addressId,
    this.address,
    this.types,
  });

  factory UserProfile({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    String? cpf,
    String? cr,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    List<_i4.UserType>? types,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      name: jsonSerialization['name'] as String,
      cpf: jsonSerialization['cpf'] as String?,
      cr: jsonSerialization['cr'] as String?,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Address>(
              jsonSerialization['address'],
            ),
      types: jsonSerialization['types'] == null
          ? null
          : _i5.Protocol().deserialize<List<_i4.UserType>>(
              jsonSerialization['types'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  String name;

  String? cpf;

  String? cr;

  _i1.UuidValue? addressId;

  _i3.Address? address;

  List<_i4.UserType>? types;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserProfile copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    String? cpf,
    String? cr,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    List<_i4.UserType>? types,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserProfile',
      if (id != null) 'id': id?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      if (cpf != null) 'cpf': cpf,
      if (cr != null) 'cr': cr,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    String? cpf,
    String? cr,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    List<_i4.UserType>? types,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         name: name,
         cpf: cpf,
         cr: cr,
         addressId: addressId,
         address: address,
         types: types,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserProfile copyWith({
    Object? id = _Undefined,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? name,
    Object? cpf = _Undefined,
    Object? cr = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? types = _Undefined,
  }) {
    return UserProfile(
      id: id is _i1.UuidValue? ? id : this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      name: name ?? this.name,
      cpf: cpf is String? ? cpf : this.cpf,
      cr: cr is String? ? cr : this.cr,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
      types: types is List<_i4.UserType>?
          ? types
          : this.types?.map((e0) => e0).toList(),
    );
  }
}
