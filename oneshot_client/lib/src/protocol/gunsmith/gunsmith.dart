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

abstract class Gunsmith
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Gunsmith._({
    _isc.UuidValue? id,
    required this.name,
    required this.taxId,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    bool? active,
    double? incomeValue,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Gunsmith({
    _isc.UuidValue? id,
    required String name,
    required String taxId,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _GunsmithImpl;

  factory Gunsmith.fromJson(Map<String, dynamic> jsonSerialization) {
    return Gunsmith(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      taxId: jsonSerialization['taxId'] as String,
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
      active: jsonSerialization['active'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
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

  String taxId;

  _isc.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  _isc.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  bool active;

  double incomeValue;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Gunsmith copyWith({
    _isc.UuidValue? id,
    String? name,
    String? taxId,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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
      '__className__': 'Gunsmith',
      'id': id.toJson(),
      'name': name,
      'taxId': taxId,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Gunsmith',
      'id': id.toJson(),
      'name': name,
      'taxId': taxId,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
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
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithImpl extends Gunsmith {
  _GunsmithImpl({
    _isc.UuidValue? id,
    required String name,
    required String taxId,
    _isc.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _isc.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) : super._(
         id: id,
         name: name,
         taxId: taxId,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         active: active,
         incomeValue: incomeValue,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Gunsmith copyWith({
    _isc.UuidValue? id,
    String? name,
    String? taxId,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    bool? active,
    double? incomeValue,
    Object? asaasAccountId = _Undefined,
    Object? asaasWalletId = _Undefined,
    Object? asaasApiKey = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return Gunsmith(
      id: id ?? this.id,
      name: name ?? this.name,
      taxId: taxId ?? this.taxId,
      addressId: addressId is _isc.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
      ownerId: ownerId is _isc.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _izifjpv2.UserProfile? ? owner : this.owner?.copyWith(),
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
