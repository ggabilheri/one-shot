/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import '../common/accessory.dart' as _i4;
import '../common/address.dart' as _i5;
import 'package:oneshot_server/src/generated/protocol.dart' as _i6;

abstract class Document
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Document._({
    _i1.UuidValue? id,
    this.userId,
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
    _i1.UuidValue? userId,
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
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
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

  static final t = DocumentTable();

  static const db = DocumentRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? userId;

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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Document copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
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
      if (userId != null) 'userId': userId?.toJson(),
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Document',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessoryId != null) 'accessoryId': accessoryId?.toJson(),
      if (accessory != null) 'accessory': accessory?.toJsonForProtocol(),
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
      if (supplierAddress != null)
        'supplierAddress': supplierAddress?.toJsonForProtocol(),
    };
  }

  static DocumentInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
    _i4.AccessoryInclude? accessory,
    _i5.AddressInclude? supplierAddress,
  }) {
    return DocumentInclude._(
      userInfo: userInfo,
      firearm: firearm,
      accessory: accessory,
      supplierAddress: supplierAddress,
    );
  }

  static DocumentIncludeList includeList({
    _i1.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DocumentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DocumentTable>? orderByList,
    DocumentInclude? include,
  }) {
    return DocumentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Document.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Document.t),
      include: include,
    );
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
    _i1.UuidValue? userId,
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
         userId: userId,
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
    Object? userId = _Undefined,
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
      userId: userId is _i1.UuidValue? ? userId : this.userId,
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

class DocumentUpdateTable extends _i1.UpdateTable<DocumentTable> {
  DocumentUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> accessoryId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.accessoryId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> accessoryId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.accessoryId,
    value,
  );

  _i1.ColumnValue<String, String> documentType(String value) => _i1.ColumnValue(
    table.documentType,
    value,
  );

  _i1.ColumnValue<String, String> registryAgency(String value) =>
      _i1.ColumnValue(
        table.registryAgency,
        value,
      );

  _i1.ColumnValue<String, String> documentNumber(String value) =>
      _i1.ColumnValue(
        table.documentNumber,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> issueDate(DateTime value) =>
      _i1.ColumnValue(
        table.issueDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> expirationDate(DateTime value) =>
      _i1.ColumnValue(
        table.expirationDate,
        value,
      );

  _i1.ColumnValue<String, String> documentImageUrl(String? value) =>
      _i1.ColumnValue(
        table.documentImageUrl,
        value,
      );

  _i1.ColumnValue<String, String> supplierName(String? value) =>
      _i1.ColumnValue(
        table.supplierName,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> supplierAddressId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.supplierAddressId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> supplierAddressId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.supplierAddressId,
    value,
  );
}

class DocumentTable extends _i1.Table<_i1.UuidValue> {
  DocumentTable({super.tableRelation}) : super(tableName: 'documents') {
    updateTable = DocumentUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    accessoryId = _i1.ColumnUuid(
      'accessoryId',
      this,
    );
    accessoryId = _i1.ColumnUuid(
      'accessoryId',
      this,
    );
    documentType = _i1.ColumnString(
      'documentType',
      this,
    );
    registryAgency = _i1.ColumnString(
      'registryAgency',
      this,
    );
    documentNumber = _i1.ColumnString(
      'documentNumber',
      this,
    );
    issueDate = _i1.ColumnDateTime(
      'issueDate',
      this,
    );
    expirationDate = _i1.ColumnDateTime(
      'expirationDate',
      this,
    );
    documentImageUrl = _i1.ColumnString(
      'documentImageUrl',
      this,
    );
    supplierName = _i1.ColumnString(
      'supplierName',
      this,
    );
    supplierAddressId = _i1.ColumnUuid(
      'supplierAddressId',
      this,
    );
    supplierAddressId = _i1.ColumnUuid(
      'supplierAddressId',
      this,
    );
  }

  late final DocumentUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnUuid firearmId;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnUuid accessoryId;

  late final _i1.ColumnUuid accessoryId;

  _i4.AccessoryTable? _accessory;

  late final _i1.ColumnString documentType;

  late final _i1.ColumnString registryAgency;

  late final _i1.ColumnString documentNumber;

  late final _i1.ColumnDateTime issueDate;

  late final _i1.ColumnDateTime expirationDate;

  late final _i1.ColumnString documentImageUrl;

  late final _i1.ColumnString supplierName;

  late final _i1.ColumnUuid supplierAddressId;

  late final _i1.ColumnUuid supplierAddressId;

  _i5.AddressTable? _supplierAddress;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Document.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: Document.t.firearmId,
      foreignField: _i3.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  _i4.AccessoryTable get accessory {
    if (_accessory != null) return _accessory!;
    _accessory = _i1.createRelationTable(
      relationFieldName: 'accessory',
      field: Document.t.accessoryId,
      foreignField: _i4.Accessory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.AccessoryTable(tableRelation: foreignTableRelation),
    );
    return _accessory!;
  }

  _i5.AddressTable get supplierAddress {
    if (_supplierAddress != null) return _supplierAddress!;
    _supplierAddress = _i1.createRelationTable(
      relationFieldName: 'supplierAddress',
      field: Document.t.supplierAddressId,
      foreignField: _i5.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.AddressTable(tableRelation: foreignTableRelation),
    );
    return _supplierAddress!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    userInfoId,
    firearmId,
    firearmId,
    accessoryId,
    accessoryId,
    documentType,
    registryAgency,
    documentNumber,
    issueDate,
    expirationDate,
    documentImageUrl,
    supplierName,
    supplierAddressId,
    supplierAddressId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    if (relationField == 'accessory') {
      return accessory;
    }
    if (relationField == 'supplierAddress') {
      return supplierAddress;
    }
    return null;
  }
}

class DocumentInclude extends _i1.IncludeObject {
  DocumentInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
    _i4.AccessoryInclude? accessory,
    _i5.AddressInclude? supplierAddress,
  }) {
    _userInfo = userInfo;
    _firearm = firearm;
    _accessory = accessory;
    _supplierAddress = supplierAddress;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.FirearmInclude? _firearm;

  _i4.AccessoryInclude? _accessory;

  _i5.AddressInclude? _supplierAddress;

  @override
  Map<String, _i1.Include?> get includes => {
    'userInfo': _userInfo,
    'firearm': _firearm,
    'accessory': _accessory,
    'supplierAddress': _supplierAddress,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Document.t;
}

class DocumentIncludeList extends _i1.IncludeList {
  DocumentIncludeList._({
    _i1.WhereExpressionBuilder<DocumentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Document.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Document.t;
}

class DocumentRepository {
  const DocumentRepository._();

  final attachRow = const DocumentAttachRowRepository._();

  final detachRow = const DocumentDetachRowRepository._();

  /// Returns a list of [Document]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Document>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DocumentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DocumentTable>? orderByList,
    _i1.Transaction? transaction,
    DocumentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Document>(
      where: where?.call(Document.t),
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Document] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Document?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DocumentTable>? where,
    int? offset,
    _i1.OrderByBuilder<DocumentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DocumentTable>? orderByList,
    _i1.Transaction? transaction,
    DocumentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Document>(
      where: where?.call(Document.t),
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Document] by its [id] or null if no such row exists.
  Future<Document?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    DocumentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Document>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Document]s in the list and returns the inserted rows.
  ///
  /// The returned [Document]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Document>> insert(
    _i1.DatabaseSession session,
    List<Document> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Document>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Document] and returns the inserted row.
  ///
  /// The returned [Document] will have its `id` field set.
  Future<Document> insertRow(
    _i1.DatabaseSession session,
    Document row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Document>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Document]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Document>> update(
    _i1.DatabaseSession session,
    List<Document> rows, {
    _i1.ColumnSelections<DocumentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Document>(
      rows,
      columns: columns?.call(Document.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Document]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Document> updateRow(
    _i1.DatabaseSession session,
    Document row, {
    _i1.ColumnSelections<DocumentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Document>(
      row,
      columns: columns?.call(Document.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Document] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Document?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<DocumentUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Document>(
      id,
      columnValues: columnValues(Document.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Document]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Document>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<DocumentUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DocumentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DocumentTable>? orderBy,
    _i1.OrderByListBuilder<DocumentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Document>(
      columnValues: columnValues(Document.t.updateTable),
      where: where(Document.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Document]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Document>> delete(
    _i1.DatabaseSession session,
    List<Document> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Document>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Document].
  Future<Document> deleteRow(
    _i1.DatabaseSession session,
    Document row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Document>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Document>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DocumentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Document>(
      where: where(Document.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Document>(
      where: where?.call(Document.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Document] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DocumentTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Document>(
      where: where(Document.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class DocumentAttachRowRepository {
  const DocumentAttachRowRepository._();

  /// Creates a relation between the given [Document] and [UserInfo]
  /// by setting the [Document]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Document document,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $document = document.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Document] and [Firearm]
  /// by setting the [Document]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _i1.DatabaseSession session,
    Document document,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $document = document.copyWith(firearmId: firearm.id);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.firearmId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Document] and [Accessory]
  /// by setting the [Document]'s foreign key `accessoryId` to refer to the [Accessory].
  Future<void> accessory(
    _i1.DatabaseSession session,
    Document document,
    _i4.Accessory accessory, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }

    var $document = document.copyWith(accessoryId: accessory.id);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.accessoryId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Document] and [Address]
  /// by setting the [Document]'s foreign key `supplierAddressId` to refer to the [Address].
  Future<void> supplierAddress(
    _i1.DatabaseSession session,
    Document document,
    _i5.Address supplierAddress, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }
    if (supplierAddress.id == null) {
      throw ArgumentError.notNull('supplierAddress.id');
    }

    var $document = document.copyWith(supplierAddressId: supplierAddress.id);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.supplierAddressId],
      transaction: transaction,
    );
  }
}

class DocumentDetachRowRepository {
  const DocumentDetachRowRepository._();

  /// Detaches the relation between this [Document] and the [UserInfo] set in `userInfo`
  /// by setting the [Document]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Document document, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }

    var $document = document.copyWith(userInfoId: null);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Document] and the [Firearm] set in `firearm`
  /// by setting the [Document]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _i1.DatabaseSession session,
    Document document, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }

    var $document = document.copyWith(firearmId: null);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.firearmId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Document] and the [Accessory] set in `accessory`
  /// by setting the [Document]'s foreign key `accessoryId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> accessory(
    _i1.DatabaseSession session,
    Document document, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }

    var $document = document.copyWith(accessoryId: null);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.accessoryId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Document] and the [Address] set in `supplierAddress`
  /// by setting the [Document]'s foreign key `supplierAddressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> supplierAddress(
    _i1.DatabaseSession session,
    Document document, {
    _i1.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }

    var $document = document.copyWith(supplierAddressId: null);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.supplierAddressId],
      transaction: transaction,
    );
  }
}
