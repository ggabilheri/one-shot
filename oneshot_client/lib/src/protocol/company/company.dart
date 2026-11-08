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

import '../common/address.dart' as _iy1vkl2d;
import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;
import '../company/company_type.dart' as _iqrrhgif;

abstract class Company
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Company._({
    _isc.UuidValue? id,
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
    this.parentCompanyId,
    this.parentCompany,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Company({
    _isc.UuidValue? id,
    required String name,
    required String cnpj,
    required _iqrrhgif.CompanyType type,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _isc.UuidValue? parentCompanyId,
    _iocy1ifk.Company? parentCompany,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      type: _iqrrhgif.CompanyType.fromJson(
        (jsonSerialization['type'] as String),
      ),
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
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
      parentCompanyId: jsonSerialization['parentCompanyId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentCompanyId'],
            ),
      parentCompany: jsonSerialization['parentCompany'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['parentCompany'],
            ),
      asaasAccountId: jsonSerialization['asaasAccountId'] as String?,
      asaasWalletId: jsonSerialization['asaasWalletId'] as String?,
      asaasApiKey: jsonSerialization['asaasApiKey'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  String cnpj;

  _iqrrhgif.CompanyType type;

  _isc.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  _isc.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  double incomeValue;

  _isc.UuidValue? parentCompanyId;

  _iocy1ifk.Company? parentCompany;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Company copyWith({
    _isc.UuidValue? id,
    String? name,
    String? cnpj,
    _iqrrhgif.CompanyType? type,
    _isc.UuidValue? addressId = const _isc.$UndefinedUuidValue(),
    _iy1vkl2d.Address? address = const _UndefinedCompany$address(),
    _isc.UuidValue? ownerId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? owner = const _UndefinedCompany$owner(),
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _isc.UuidValue? parentCompanyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? parentCompany = const _UndefinedCompany$parentCompany(),
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
      if (parentCompanyId != null) 'parentCompanyId': parentCompanyId?.toJson(),
      if (parentCompany != null) 'parentCompany': parentCompany?.toJson(),
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Company',
      'id': id.toJson(),
      'name': name,
      'cnpj': cnpj,
      'type': type.toJson(),
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
      'incomeValue': incomeValue,
      if (parentCompanyId != null) 'parentCompanyId': parentCompanyId?.toJson(),
      if (parentCompany != null)
        'parentCompany': parentCompany?.toJsonForProtocol(),
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
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

class _UndefinedCompany$address extends _isc.UndefinedSentinel
    implements _iy1vkl2d.Address {
  const _UndefinedCompany$address();
}

class _UndefinedCompany$owner extends _isc.UndefinedSentinel
    implements _izifjpv2.UserProfile {
  const _UndefinedCompany$owner();
}

class _UndefinedCompany$parentCompany extends _isc.UndefinedSentinel
    implements _iocy1ifk.Company {
  const _UndefinedCompany$parentCompany();
}

class _CompanyImpl extends Company {
  _CompanyImpl({
    _isc.UuidValue? id,
    required String name,
    required String cnpj,
    required _iqrrhgif.CompanyType type,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _isc.UuidValue? parentCompanyId,
    _iocy1ifk.Company? parentCompany,
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
         parentCompanyId: parentCompanyId,
         parentCompany: parentCompany,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Company copyWith({
    _isc.UuidValue? id,
    String? name,
    String? cnpj,
    _iqrrhgif.CompanyType? type,
    _isc.UuidValue? addressId = const _isc.$UndefinedUuidValue(),
    _iy1vkl2d.Address? address = const _UndefinedCompany$address(),
    _isc.UuidValue? ownerId = const _isc.$UndefinedUuidValue(),
    _izifjpv2.UserProfile? owner = const _UndefinedCompany$owner(),
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
    double? incomeValue,
    _isc.UuidValue? parentCompanyId = const _isc.$UndefinedUuidValue(),
    _iocy1ifk.Company? parentCompany = const _UndefinedCompany$parentCompany(),
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
      addressId: addressId is _isc.UndefinedSentinel
          ? this.addressId
          : addressId,
      address: address is _isc.UndefinedSentinel
          ? this.address?.copyWith()
          : address,
      ownerId: ownerId is _isc.UndefinedSentinel ? this.ownerId : ownerId,
      owner: owner is _isc.UndefinedSentinel ? this.owner?.copyWith() : owner,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
      incomeValue: incomeValue ?? this.incomeValue,
      parentCompanyId: parentCompanyId is _isc.UndefinedSentinel
          ? this.parentCompanyId
          : parentCompanyId,
      parentCompany: parentCompany is _isc.UndefinedSentinel
          ? this.parentCompany?.copyWith()
          : parentCompany,
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
