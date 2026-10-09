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
import '../enums/gender.enum.dart' as _ix60f0mc;
import '../enums/user_status.enum.dart' as _ijq1b3b6;
import '../enums/user_type.enum.dart' as _i828q2d1;

abstract class UserProfile
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  UserProfile._({
    _isc.UuidValue? id,
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
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory UserProfile({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required String name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    required _ijq1b3b6.UserStatus status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i312scxx.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      name: jsonSerialization['name'] as String,
      gender: jsonSerialization['gender'] == null
          ? null
          : _ix60f0mc.Gender.fromJson((jsonSerialization['gender'] as String)),
      birthDate: jsonSerialization['birthDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['birthDate']),
      rg: jsonSerialization['rg'] as String?,
      cpf: jsonSerialization['cpf'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
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
      types: jsonSerialization['types'] == null
          ? null
          : _itys55mc.Protocol().deserialize<List<_i828q2d1.UserType>>(
              jsonSerialization['types'],
            ),
      status: _ijq1b3b6.UserStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  int? userInfoId;

  _i312scxx.UserInfo? userInfo;

  String name;

  _ix60f0mc.Gender? gender;

  DateTime? birthDate;

  String? rg;

  String? cpf;

  String? phone;

  String? email;

  _isc.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  List<_i828q2d1.UserType>? types;

  _ijq1b3b6.UserStatus status;

  String? asaasCustomerId;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  UserProfile copyWith({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    String? name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    _ijq1b3b6.UserStatus? status,
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
  Map<String, dynamic> toJsonForProtocol() {
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
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
      'status': status.toJson(),
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    _isc.UuidValue? id,
    int? userInfoId,
    _i312scxx.UserInfo? userInfo,
    required String name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    required _ijq1b3b6.UserStatus status,
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
  @_isc.useResult
  @override
  UserProfile copyWith({
    _isc.UuidValue? id,
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
    _ijq1b3b6.UserStatus? status,
    Object? asaasCustomerId = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return UserProfile(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i312scxx.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      name: name ?? this.name,
      gender: gender is _ix60f0mc.Gender? ? gender : this.gender,
      birthDate: birthDate is DateTime? ? birthDate : this.birthDate,
      rg: rg is String? ? rg : this.rg,
      cpf: cpf is String? ? cpf : this.cpf,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      addressId: addressId is _isc.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
      types: types is List<_i828q2d1.UserType>?
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
