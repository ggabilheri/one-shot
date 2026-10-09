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
import '../common/user_profile.dart' as _izifjpv2;

abstract class Address
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Address._({
    _isc.UuidValue? id,
    required this.street,
    required this.number,
    this.complement,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.zipCode,
    this.userProfileId,
    this.userProfile,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Address({
    _isc.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    _isc.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      street: jsonSerialization['street'] as String,
      number: jsonSerialization['number'] as String,
      complement: jsonSerialization['complement'] as String?,
      neighborhood: jsonSerialization['neighborhood'] as String,
      city: jsonSerialization['city'] as String,
      state: jsonSerialization['state'] as String,
      zipCode: jsonSerialization['zipCode'] as String,
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String street;

  String number;

  String? complement;

  String neighborhood;

  String city;

  String state;

  String zipCode;

  _isc.UuidValue? userProfileId;

  _izifjpv2.UserProfile? userProfile;

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Address copyWith({
    _isc.UuidValue? id,
    String? street,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _isc.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Address',
      'id': id.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Address',
      'id': id.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    _isc.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    _isc.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  }) : super._(
         id: id,
         street: street,
         number: number,
         complement: complement,
         neighborhood: neighborhood,
         city: city,
         state: state,
         zipCode: zipCode,
         userProfileId: userProfileId,
         userProfile: userProfile,
       );

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Address copyWith({
    _isc.UuidValue? id,
    String? street,
    String? number,
    Object? complement = _Undefined,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    Object? userProfileId = _Undefined,
    Object? userProfile = _Undefined,
  }) {
    return Address(
      id: id ?? this.id,
      street: street ?? this.street,
      number: number ?? this.number,
      complement: complement is String? ? complement : this.complement,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
      userProfileId: userProfileId is _isc.UuidValue?
          ? userProfileId
          : this.userProfileId,
      userProfile: userProfile is _izifjpv2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
    );
  }
}
