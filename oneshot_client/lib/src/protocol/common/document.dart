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
import '../shooter/firearm.dart' as _i3;
import '../common/accessory.dart' as _i4;
import '../common/address.dart' as _i5;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i6;

abstract class Document implements _i1.SerializableModel {
  Document._({
    _i1.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    this.firearmId,
    this.firearmId,
    this.firearm,
    this.accessoryId,
    this.accessoryId,
    this.accessory,
    required this.documentType,
    required this.registryAgency,
    required this.documentNumber,
    required this.issueDate,
    required this.expirationDate,
    this.documentImageUrl,
    this.supplierName,
    this.supplierAddressId,
    this.supplierAddressId,
    this.supplierAddress,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Document({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    required String documentType,
    required String registryAgency,
    required String documentNumber,
    required DateTime issueDate,
    required DateTime expirationDate,
    String? documentImageUrl,
    String? supplierName,
    _i1.UuidValue? supplierAddressId,
    _i1.UuidValue? supplierAddressId,
    _i5.Address? supplierAddress,
  }) = _DocumentImpl;

  factory Document.fromJson(Map<String, dynamic> jsonSerialization) {
    return Document(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i6.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i6.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      accessoryId: jsonSerialization['accessoryId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['accessoryId'],
            ),
      accessory: jsonSerialization['accessory'] == null
          ? null
          : _i6.Protocol().deserialize<_i4.Accessory>(
              jsonSerialization['accessory'],
            ),
      documentType: jsonSerialization['documentType'] as String,
      registryAgency: jsonSerialization['registryAgency'] as String,
      documentNumber: jsonSerialization['documentNumber'] as String,
      issueDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['issueDate'],
      ),
      expirationDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expirationDate'],
      ),
      documentImageUrl: jsonSerialization['documentImageUrl'] as String?,
      supplierName: jsonSerialization['supplierName'] as String?,
      supplierAddressId: jsonSerialization['supplierAddressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['supplierAddressId'],
            ),
      supplierAddress: jsonSerialization['supplierAddress'] == null
          ? null
          : _i6.Protocol().deserialize<_i5.Address>(
              jsonSerialization['supplierAddress'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  _i1.UuidValue? firearmId;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

  _i1.UuidValue? accessoryId;

  _i1.UuidValue? accessoryId;

  _i4.Accessory? accessory;

  String documentType;

  String registryAgency;

  String documentNumber;

  DateTime issueDate;

  DateTime expirationDate;

  String? documentImageUrl;

  String? supplierName;

  _i1.UuidValue? supplierAddressId;

  _i1.UuidValue? supplierAddressId;

  _i5.Address? supplierAddress;

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Document copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    String? documentType,
    String? registryAgency,
    String? documentNumber,
    DateTime? issueDate,
    DateTime? expirationDate,
    String? documentImageUrl,
    String? supplierName,
    _i1.UuidValue? supplierAddressId,
    _i1.UuidValue? supplierAddressId,
    _i5.Address? supplierAddress,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Document',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessory != null) 'accessory': accessory?.toJson(),
      'documentType': documentType,
      'registryAgency': registryAgency,
      'documentNumber': documentNumber,
      'issueDate': issueDate.toJson(),
      'expirationDate': expirationDate.toJson(),
      if (documentImageUrl != null) 'documentImageUrl': documentImageUrl,
      if (supplierName != null) 'supplierName': supplierName,
      if (supplierAddressId != null)
        'supplierAddressId': supplierAddressId?.toJson(),
      if (supplierAddressId != null)
        'supplierAddressId': supplierAddressId?.toJson(),
      if (supplierAddress != null) 'supplierAddress': supplierAddress?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DocumentImpl extends Document {
  _DocumentImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    required String documentType,
    required String registryAgency,
    required String documentNumber,
    required DateTime issueDate,
    required DateTime expirationDate,
    String? documentImageUrl,
    String? supplierName,
    _i1.UuidValue? supplierAddressId,
    _i1.UuidValue? supplierAddressId,
    _i5.Address? supplierAddress,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         firearmId: firearmId,
         firearm: firearm,
         accessoryId: accessoryId,
         accessory: accessory,
         documentType: documentType,
         registryAgency: registryAgency,
         documentNumber: documentNumber,
         issueDate: issueDate,
         expirationDate: expirationDate,
         documentImageUrl: documentImageUrl,
         supplierName: supplierName,
         supplierAddressId: supplierAddressId,
         supplierAddress: supplierAddress,
       );

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Document copyWith({
    _i1.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? accessoryId = _Undefined,
    Object? accessoryId = _Undefined,
    Object? accessory = _Undefined,
    String? documentType,
    String? registryAgency,
    String? documentNumber,
    DateTime? issueDate,
    DateTime? expirationDate,
    Object? documentImageUrl = _Undefined,
    Object? supplierName = _Undefined,
    Object? supplierAddressId = _Undefined,
    Object? supplierAddressId = _Undefined,
    Object? supplierAddress = _Undefined,
  }) {
    return Document(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      accessoryId: accessoryId is _i1.UuidValue?
          ? accessoryId
          : this.accessoryId,
      accessory: accessory is _i4.Accessory?
          ? accessory
          : this.accessory?.copyWith(),
      documentType: documentType ?? this.documentType,
      registryAgency: registryAgency ?? this.registryAgency,
      documentNumber: documentNumber ?? this.documentNumber,
      issueDate: issueDate ?? this.issueDate,
      expirationDate: expirationDate ?? this.expirationDate,
      documentImageUrl: documentImageUrl is String?
          ? documentImageUrl
          : this.documentImageUrl,
      supplierName: supplierName is String? ? supplierName : this.supplierName,
      supplierAddressId: supplierAddressId is _i1.UuidValue?
          ? supplierAddressId
          : this.supplierAddressId,
      supplierAddress: supplierAddress is _i5.Address?
          ? supplierAddress
          : this.supplierAddress?.copyWith(),
    );
  }
}
