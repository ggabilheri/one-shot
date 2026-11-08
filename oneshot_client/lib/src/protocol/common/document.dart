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

import '../common/accessory.dart' as _ixwksfmb;
import '../common/user_profile.dart' as _izifjpv2;
import '../enums/document_type.enum.dart' as _i5d5abt7;
import '../enums/registry_body.enum.dart' as _ii1wmk2g;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Document
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Document._({
    _isc.UuidValue? id,
    required this.userId,
    this.user,
    this.firearmId,
    this.firearm,
    this.accessoryId,
    this.accessory,
    required this.type,
    required this.registryBody,
    required this.number,
    required this.emissionDate,
    this.expirationDate,
    this.filePath,
    this.supplierName,
    this.supplierCpfCnpj,
    this.supplierPhone,
    this.supplierAddress,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Document({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _isc.UuidValue? accessoryId,
    _ixwksfmb.Accessory? accessory,
    required _i5d5abt7.DocumentType type,
    required _ii1wmk2g.RegistryBody registryBody,
    required String number,
    required DateTime emissionDate,
    DateTime? expirationDate,
    String? filePath,
    String? supplierName,
    String? supplierCpfCnpj,
    String? supplierPhone,
    String? supplierAddress,
  }) = _DocumentImpl;

  factory Document.fromJson(Map<String, dynamic> jsonSerialization) {
    return Document(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['firearmId'],
            ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      accessoryId: jsonSerialization['accessoryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['accessoryId'],
            ),
      accessory: jsonSerialization['accessory'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_ixwksfmb.Accessory>(
              jsonSerialization['accessory'],
            ),
      type: _i5d5abt7.DocumentType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      registryBody: _ii1wmk2g.RegistryBody.fromJson(
        (jsonSerialization['registryBody'] as String),
      ),
      number: jsonSerialization['number'] as String,
      emissionDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['emissionDate'],
      ),
      expirationDate: jsonSerialization['expirationDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['expirationDate'],
            ),
      filePath: jsonSerialization['filePath'] as String?,
      supplierName: jsonSerialization['supplierName'] as String?,
      supplierCpfCnpj: jsonSerialization['supplierCpfCnpj'] as String?,
      supplierPhone: jsonSerialization['supplierPhone'] as String?,
      supplierAddress: jsonSerialization['supplierAddress'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue userId;

  _izifjpv2.UserProfile? user;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  _isc.UuidValue? accessoryId;

  _ixwksfmb.Accessory? accessory;

  _i5d5abt7.DocumentType type;

  _ii1wmk2g.RegistryBody registryBody;

  String number;

  DateTime emissionDate;

  DateTime? expirationDate;

  String? filePath;

  String? supplierName;

  String? supplierCpfCnpj;

  String? supplierPhone;

  String? supplierAddress;

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Document copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user = const _UndefinedDocument$user(),
    _isc.UuidValue? firearmId = const _isc.$UndefinedUuidValue(),
    _i25s0fp9.Firearm? firearm = const _UndefinedDocument$firearm(),
    _isc.UuidValue? accessoryId = const _isc.$UndefinedUuidValue(),
    _ixwksfmb.Accessory? accessory = const _UndefinedDocument$accessory(),
    _i5d5abt7.DocumentType? type,
    _ii1wmk2g.RegistryBody? registryBody,
    String? number,
    DateTime? emissionDate,
    DateTime? expirationDate = const _isc.$UndefinedDateTime(),
    String? filePath,
    String? supplierName,
    String? supplierCpfCnpj,
    String? supplierPhone,
    String? supplierAddress,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Document',
      'id': id.toJson(),
      'userId': userId.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessory != null) 'accessory': accessory?.toJson(),
      'type': type.toJson(),
      'registryBody': registryBody.toJson(),
      'number': number,
      'emissionDate': emissionDate.toJson(),
      if (expirationDate != null) 'expirationDate': expirationDate?.toJson(),
      if (filePath != null) 'filePath': filePath,
      if (supplierName != null) 'supplierName': supplierName,
      if (supplierCpfCnpj != null) 'supplierCpfCnpj': supplierCpfCnpj,
      if (supplierPhone != null) 'supplierPhone': supplierPhone,
      if (supplierAddress != null) 'supplierAddress': supplierAddress,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Document',
      'id': id.toJson(),
      'userId': userId.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessory != null) 'accessory': accessory?.toJsonForProtocol(),
      'type': type.toJson(),
      'registryBody': registryBody.toJson(),
      'number': number,
      'emissionDate': emissionDate.toJson(),
      if (expirationDate != null) 'expirationDate': expirationDate?.toJson(),
      if (filePath != null) 'filePath': filePath,
      if (supplierName != null) 'supplierName': supplierName,
      if (supplierCpfCnpj != null) 'supplierCpfCnpj': supplierCpfCnpj,
      if (supplierPhone != null) 'supplierPhone': supplierPhone,
      if (supplierAddress != null) 'supplierAddress': supplierAddress,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UndefinedDocument$user extends _isc.UndefinedSentinel
    implements _izifjpv2.UserProfile {
  const _UndefinedDocument$user();
}

class _UndefinedDocument$firearm extends _isc.UndefinedSentinel
    implements _i25s0fp9.Firearm {
  const _UndefinedDocument$firearm();
}

class _UndefinedDocument$accessory extends _isc.UndefinedSentinel
    implements _ixwksfmb.Accessory {
  const _UndefinedDocument$accessory();
}

class _DocumentImpl extends Document {
  _DocumentImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _isc.UuidValue? accessoryId,
    _ixwksfmb.Accessory? accessory,
    required _i5d5abt7.DocumentType type,
    required _ii1wmk2g.RegistryBody registryBody,
    required String number,
    required DateTime emissionDate,
    DateTime? expirationDate,
    String? filePath,
    String? supplierName,
    String? supplierCpfCnpj,
    String? supplierPhone,
    String? supplierAddress,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         firearmId: firearmId,
         firearm: firearm,
         accessoryId: accessoryId,
         accessory: accessory,
         type: type,
         registryBody: registryBody,
         number: number,
         emissionDate: emissionDate,
         expirationDate: expirationDate,
         filePath: filePath,
         supplierName: supplierName,
         supplierCpfCnpj: supplierCpfCnpj,
         supplierPhone: supplierPhone,
         supplierAddress: supplierAddress,
       );

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Document copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user = const _UndefinedDocument$user(),
    _isc.UuidValue? firearmId = const _isc.$UndefinedUuidValue(),
    _i25s0fp9.Firearm? firearm = const _UndefinedDocument$firearm(),
    _isc.UuidValue? accessoryId = const _isc.$UndefinedUuidValue(),
    _ixwksfmb.Accessory? accessory = const _UndefinedDocument$accessory(),
    _i5d5abt7.DocumentType? type,
    _ii1wmk2g.RegistryBody? registryBody,
    String? number,
    DateTime? emissionDate,
    DateTime? expirationDate = const _isc.$UndefinedDateTime(),
    Object? filePath = _Undefined,
    Object? supplierName = _Undefined,
    Object? supplierCpfCnpj = _Undefined,
    Object? supplierPhone = _Undefined,
    Object? supplierAddress = _Undefined,
  }) {
    return Document(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      user: user is _isc.UndefinedSentinel ? this.user?.copyWith() : user,
      firearmId: firearmId is _isc.UndefinedSentinel
          ? this.firearmId
          : firearmId,
      firearm: firearm is _isc.UndefinedSentinel
          ? this.firearm?.copyWith()
          : firearm,
      accessoryId: accessoryId is _isc.UndefinedSentinel
          ? this.accessoryId
          : accessoryId,
      accessory: accessory is _isc.UndefinedSentinel
          ? this.accessory?.copyWith()
          : accessory,
      type: type ?? this.type,
      registryBody: registryBody ?? this.registryBody,
      number: number ?? this.number,
      emissionDate: emissionDate ?? this.emissionDate,
      expirationDate: expirationDate is _isc.UndefinedSentinel
          ? this.expirationDate
          : expirationDate,
      filePath: filePath is String? ? filePath : this.filePath,
      supplierName: supplierName is String? ? supplierName : this.supplierName,
      supplierCpfCnpj: supplierCpfCnpj is String?
          ? supplierCpfCnpj
          : this.supplierCpfCnpj,
      supplierPhone: supplierPhone is String?
          ? supplierPhone
          : this.supplierPhone,
      supplierAddress: supplierAddress is String?
          ? supplierAddress
          : this.supplierAddress,
    );
  }
}
