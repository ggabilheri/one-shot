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
import '../common/user_profile.dart' as _i2;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i3;

abstract class Address implements _i1.SerializableModel {
  Address._({
    this.id,
    required this.street,
    required this.number,
    this.complement,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.userProfileId,
    this.userProfile,
  });

  factory Address({
    _i1.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    required _i1.UuidValue userProfileId,
    _i2.UserProfile? userProfile,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      street: jsonSerialization['street'] as String,
      number: jsonSerialization['number'] as String,
      complement: jsonSerialization['complement'] as String?,
      neighborhood: jsonSerialization['neighborhood'] as String,
      city: jsonSerialization['city'] as String,
      state: jsonSerialization['state'] as String,
      zipCode: jsonSerialization['zipCode'] as String,
      userProfileId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['userProfileId'],
      ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  String street;

  String number;

  String? complement;

  String neighborhood;

  String city;

  String state;

  String zipCode;

  _i1.UuidValue userProfileId;

  _i2.UserProfile? userProfile;

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Address copyWith({
    _i1.UuidValue? id,
    String? street,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Address',
      if (id != null) 'id': id?.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'userProfileId': userProfileId.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    _i1.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    required _i1.UuidValue userProfileId,
    _i2.UserProfile? userProfile,
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
  @_i1.useResult
  @override
  Address copyWith({
    Object? id = _Undefined,
    String? street,
    String? number,
    Object? complement = _Undefined,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _i1.UuidValue? userProfileId,
    Object? userProfile = _Undefined,
  }) {
    return Address(
      id: id is _i1.UuidValue? ? id : this.id,
      street: street ?? this.street,
      number: number ?? this.number,
      complement: complement is String? ? complement : this.complement,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
      userProfileId: userProfileId ?? this.userProfileId,
      userProfile: userProfile is _i2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
    );
  }
}
