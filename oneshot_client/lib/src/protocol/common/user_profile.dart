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
import '../enums/gender.enum.dart' as _i3;
import '../common/address.dart' as _i4;
import '../enums/user_type.enum.dart' as _i5;
import '../enums/user_status.enum.dart' as _i6;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i7;

abstract class UserProfile implements _i1.SerializableModel {
  UserProfile._({
    _i1.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.name,
    this.gender,
    this.birthDate,
    this.rg,
    this.cpf,
    this.phone,
    this.email,
    this.addressId,
    this.address,
    this.types,
    required this.status,
    this.asaasCustomerId,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory UserProfile({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
    required _i6.UserStatus status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i7.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      name: jsonSerialization['name'] as String,
      gender: jsonSerialization['gender'] == null
          ? null
          : _i3.Gender.fromJson((jsonSerialization['gender'] as String)),
      birthDate: jsonSerialization['birthDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['birthDate']),
      rg: jsonSerialization['rg'] as String?,
      cpf: jsonSerialization['cpf'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i7.Protocol().deserialize<_i4.Address>(
              jsonSerialization['address'],
            ),
      types: jsonSerialization['types'] == null
          ? null
          : _i7.Protocol().deserialize<List<_i5.UserType>>(
              jsonSerialization['types'],
            ),
      status: _i6.UserStatus.fromJson((jsonSerialization['status'] as String)),
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  String name;

  _i3.Gender? gender;

  DateTime? birthDate;

  String? rg;

  String? cpf;

  String? phone;

  String? email;

  _i1.UuidValue? addressId;

  _i4.Address? address;

  List<_i5.UserType>? types;

  _i6.UserStatus status;

  String? asaasCustomerId;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserProfile copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
    _i6.UserStatus? status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserProfile',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      if (gender != null) 'gender': gender?.toJson(),
      if (birthDate != null) 'birthDate': birthDate?.toJson(),
      if (rg != null) 'rg': rg,
      if (cpf != null) 'cpf': cpf,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
      'status': status.toJson(),
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
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
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
    required _i6.UserStatus status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         name: name,
         gender: gender,
         birthDate: birthDate,
         rg: rg,
         cpf: cpf,
         phone: phone,
         email: email,
         addressId: addressId,
         address: address,
         types: types,
         status: status,
         asaasCustomerId: asaasCustomerId,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserProfile copyWith({
    _i1.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? name,
    Object? gender = _Undefined,
    Object? birthDate = _Undefined,
    Object? rg = _Undefined,
    Object? cpf = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? types = _Undefined,
    _i6.UserStatus? status,
    Object? asaasCustomerId = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return UserProfile(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      name: name ?? this.name,
      gender: gender is _i3.Gender? ? gender : this.gender,
      birthDate: birthDate is DateTime? ? birthDate : this.birthDate,
      rg: rg is String? ? rg : this.rg,
      cpf: cpf is String? ? cpf : this.cpf,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i4.Address? ? address : this.address?.copyWith(),
      types: types is List<_i5.UserType>?
          ? types
          : this.types?.map((e0) => e0).toList(),
      status: status ?? this.status,
      asaasCustomerId: asaasCustomerId is String?
          ? asaasCustomerId
          : this.asaasCustomerId,
      asaasOnboardingFailureReason: asaasOnboardingFailureReason is String?
          ? asaasOnboardingFailureReason
          : this.asaasOnboardingFailureReason,
    );
  }
}
