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

abstract class Gunsmith implements _i1.SerializableModel {
  Gunsmith._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Gunsmith({
    _i1.UuidValue? id,
    required String name,
    required String taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      taxId: jsonSerialization['taxId'] as String,
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

  String taxId;

  _i1.UuidValue? addressId;

  _i2.Address? address;

  _i1.UuidValue? ownerId;

  _i3.UserProfile? owner;

  bool active;

  double incomeValue;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Gunsmith copyWith({
    _i1.UuidValue? id,
    String? name,
    String? taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
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
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithImpl extends Gunsmith {
  _GunsmithImpl({
    _i1.UuidValue? id,
    required String name,
    required String taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
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
  @_i1.useResult
  @override
  Gunsmith copyWith({
    _i1.UuidValue? id,
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
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i3.UserProfile? ? owner : this.owner?.copyWith(),
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
