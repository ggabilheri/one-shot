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
import '../shooter/firearm.dart' as _i3;
import '../common/accessory.dart' as _i4;
import '../enums/document_type.enum.dart' as _i5;
import '../enums/registry_body.enum.dart' as _i6;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i7;

abstract class Document implements _i1.SerializableModel {
  Document._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Document({
    _i1.UuidValue? id,
    required _i1.UuidValue userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    required _i5.DocumentType type,
    required _i6.RegistryBody registryBody,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i7.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['user'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i7.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      accessoryId: jsonSerialization['accessoryId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['accessoryId'],
            ),
      accessory: jsonSerialization['accessory'] == null
          ? null
          : _i7.Protocol().deserialize<_i4.Accessory>(
              jsonSerialization['accessory'],
            ),
      type: _i5.DocumentType.fromJson((jsonSerialization['type'] as String)),
      registryBody: _i6.RegistryBody.fromJson(
        (jsonSerialization['registryBody'] as String),
      ),
      number: jsonSerialization['number'] as String,
      emissionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['emissionDate'],
      ),
      expirationDate: jsonSerialization['expirationDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
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
  _i1.UuidValue id;

  _i1.UuidValue userId;

  _i2.UserProfile? user;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

  _i1.UuidValue? accessoryId;

  _i4.Accessory? accessory;

  _i5.DocumentType type;

  _i6.RegistryBody registryBody;

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
  @_i1.useResult
  Document copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    _i5.DocumentType? type,
    _i6.RegistryBody? registryBody,
    String? number,
    DateTime? emissionDate,
    DateTime? expirationDate,
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
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DocumentImpl extends Document {
  _DocumentImpl({
    _i1.UuidValue? id,
    required _i1.UuidValue userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? accessoryId,
    _i4.Accessory? accessory,
    required _i5.DocumentType type,
    required _i6.RegistryBody registryBody,
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
  @_i1.useResult
  @override
  Document copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    Object? user = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? accessoryId = _Undefined,
    Object? accessory = _Undefined,
    _i5.DocumentType? type,
    _i6.RegistryBody? registryBody,
    String? number,
    DateTime? emissionDate,
    Object? expirationDate = _Undefined,
    Object? filePath = _Undefined,
    Object? supplierName = _Undefined,
    Object? supplierCpfCnpj = _Undefined,
    Object? supplierPhone = _Undefined,
    Object? supplierAddress = _Undefined,
  }) {
    return Document(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserProfile? ? user : this.user?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      accessoryId: accessoryId is _i1.UuidValue?
          ? accessoryId
          : this.accessoryId,
      accessory: accessory is _i4.Accessory?
          ? accessory
          : this.accessory?.copyWith(),
      type: type ?? this.type,
      registryBody: registryBody ?? this.registryBody,
      number: number ?? this.number,
      emissionDate: emissionDate ?? this.emissionDate,
      expirationDate: expirationDate is DateTime?
          ? expirationDate
          : this.expirationDate,
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
