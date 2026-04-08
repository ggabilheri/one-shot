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
import '../company/company_type.dart' as _i2;
import '../common/address.dart' as _i3;
import '../common/user_profile.dart' as _i4;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i5;

abstract class Company implements _i1.SerializableModel {
  Company._({
    _i1.UuidValue? id,
    required this.name,
    required this.cnpj,
    required this.type,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    this.phoneNumber,
    this.email,
    bool? active,
    double? incomeValue,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Company({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    required _i2.CompanyType type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      type: _i2.CompanyType.fromJson((jsonSerialization['type'] as String)),
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Address>(
              jsonSerialization['address'],
            ),
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
      asaasAccountId: jsonSerialization['asaasAccountId'] as String?,
      asaasWalletId: jsonSerialization['asaasWalletId'] as String?,
      asaasApiKey: jsonSerialization['asaasApiKey'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String name;

  String cnpj;

  _i2.CompanyType type;

  _i1.UuidValue? addressId;

  _i3.Address? address;

  _i1.UuidValue? ownerId;

  _i4.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  double incomeValue;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Company copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i2.CompanyType? type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Company',
      'id': id.toJson(),
      'name': name,
      'cnpj': cnpj,
      'type': type.toJson(),
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
      'incomeValue': incomeValue,
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
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

class _CompanyImpl extends Company {
  _CompanyImpl({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    required _i2.CompanyType type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) : super._(
         id: id,
         name: name,
         cnpj: cnpj,
         type: type,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         phoneNumber: phoneNumber,
         email: email,
         active: active,
         incomeValue: incomeValue,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Company copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i2.CompanyType? type,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
    double? incomeValue,
    Object? asaasAccountId = _Undefined,
    Object? asaasWalletId = _Undefined,
    Object? asaasApiKey = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return Company(
      id: id ?? this.id,
      name: name ?? this.name,
      cnpj: cnpj ?? this.cnpj,
      type: type ?? this.type,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i4.UserProfile? ? owner : this.owner?.copyWith(),
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
      incomeValue: incomeValue ?? this.incomeValue,
      asaasAccountId: asaasAccountId is String?
          ? asaasAccountId
          : this.asaasAccountId,
      asaasWalletId: asaasWalletId is String?
          ? asaasWalletId
          : this.asaasWalletId,
      asaasApiKey: asaasApiKey is String? ? asaasApiKey : this.asaasApiKey,
      asaasOnboardingFailureReason: asaasOnboardingFailureReason is String?
          ? asaasOnboardingFailureReason
          : this.asaasOnboardingFailureReason,
    );
  }
}
