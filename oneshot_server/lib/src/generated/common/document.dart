/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:oneshot_server/src/generated/protocol.dart' as _iwflrbqm;
import 'package:serverpod/serverpod.dart' as _is;
import '../common/accessory.dart' as _ixwksfmb;
import '../common/user_profile.dart' as _izifjpv2;
import '../enums/document_type.enum.dart' as _i5d5abt7;
import '../enums/registry_body.enum.dart' as _ii1wmk2g;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Document
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Document._({
    _is.UuidValue? id,
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
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Document({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? accessoryId,
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
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      accessoryId: jsonSerialization['accessoryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['accessoryId'],
            ),
      accessory: jsonSerialization['accessory'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_ixwksfmb.Accessory>(
              jsonSerialization['accessory'],
            ),
      type: _i5d5abt7.DocumentType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      registryBody: _ii1wmk2g.RegistryBody.fromJson(
        (jsonSerialization['registryBody'] as String),
      ),
      number: jsonSerialization['number'] as String,
      emissionDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['emissionDate'],
      ),
      expirationDate: jsonSerialization['expirationDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['expirationDate'],
            ),
      filePath: jsonSerialization['filePath'] as String?,
      supplierName: jsonSerialization['supplierName'] as String?,
      supplierCpfCnpj: jsonSerialization['supplierCpfCnpj'] as String?,
      supplierPhone: jsonSerialization['supplierPhone'] as String?,
      supplierAddress: jsonSerialization['supplierAddress'] as String?,
    );
  }

  static final t = DocumentTable();

  static const db = DocumentRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue userId;

  _izifjpv2.UserProfile? user;

  _is.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  _is.UuidValue? accessoryId;

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

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Document]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Document copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? accessoryId,
    _ixwksfmb.Accessory? accessory,
    _i5d5abt7.DocumentType? type,
    _ii1wmk2g.RegistryBody? registryBody,
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

  static DocumentInclude include({
    _izifjpv2.UserProfileInclude? user,
    _i25s0fp9.FirearmInclude? firearm,
    _ixwksfmb.AccessoryInclude? accessory,
  }) {
    return DocumentInclude._(
      user: user,
      firearm: firearm,
      accessory: accessory,
    );
  }

  static DocumentIncludeList includeList({
    _is.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    DocumentInclude? include,
  }) {
    return DocumentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DocumentImpl extends Document {
  _DocumentImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? accessoryId,
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
  @_is.useResult
  @override
  Document copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    Object? user = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? accessoryId = _Undefined,
    Object? accessory = _Undefined,
    _i5d5abt7.DocumentType? type,
    _ii1wmk2g.RegistryBody? registryBody,
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
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      accessoryId: accessoryId is _is.UuidValue?
          ? accessoryId
          : this.accessoryId,
      accessory: accessory is _ixwksfmb.Accessory?
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

class DocumentUpdateTable extends _is.UpdateTable<DocumentTable> {
  DocumentUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> accessoryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.accessoryId, value);

  _is.ColumnValue<_i5d5abt7.DocumentType, _i5d5abt7.DocumentType> type(
    _i5d5abt7.DocumentType value,
  ) => _is.ColumnValue(table.type, value);

  _is.ColumnValue<_ii1wmk2g.RegistryBody, _ii1wmk2g.RegistryBody> registryBody(
    _ii1wmk2g.RegistryBody value,
  ) => _is.ColumnValue(table.registryBody, value);

  _is.ColumnValue<String, String> number(String value) =>
      _is.ColumnValue(table.number, value);

  _is.ColumnValue<DateTime, DateTime> emissionDate(DateTime value) =>
      _is.ColumnValue(table.emissionDate, value);

  _is.ColumnValue<DateTime, DateTime> expirationDate(DateTime? value) =>
      _is.ColumnValue(table.expirationDate, value);

  _is.ColumnValue<String, String> filePath(String? value) =>
      _is.ColumnValue(table.filePath, value);

  _is.ColumnValue<String, String> supplierName(String? value) =>
      _is.ColumnValue(table.supplierName, value);

  _is.ColumnValue<String, String> supplierCpfCnpj(String? value) =>
      _is.ColumnValue(table.supplierCpfCnpj, value);

  _is.ColumnValue<String, String> supplierPhone(String? value) =>
      _is.ColumnValue(table.supplierPhone, value);

  _is.ColumnValue<String, String> supplierAddress(String? value) =>
      _is.ColumnValue(table.supplierAddress, value);
}

class DocumentTable extends _is.Table<_is.UuidValue> {
  DocumentTable({super.tableRelation}) : super(tableName: 'documents') {
    updateTable = DocumentUpdateTable(this);
    userId = _is.ColumnUuid('userId', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    accessoryId = _is.ColumnUuid('accessoryId', this);
    type = _is.ColumnEnum('type', this, _is.EnumSerialization.byName);
    registryBody = _is.ColumnEnum(
      'registryBody',
      this,
      _is.EnumSerialization.byName,
    );
    number = _is.ColumnString('number', this);
    emissionDate = _is.ColumnDateTime('emissionDate', this);
    expirationDate = _is.ColumnDateTime('expirationDate', this);
    filePath = _is.ColumnString('filePath', this);
    supplierName = _is.ColumnString('supplierName', this);
    supplierCpfCnpj = _is.ColumnString('supplierCpfCnpj', this);
    supplierPhone = _is.ColumnString('supplierPhone', this);
    supplierAddress = _is.ColumnString('supplierAddress', this);
  }

  late final DocumentUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnUuid accessoryId;

  _ixwksfmb.AccessoryTable? _accessory;

  late final _is.ColumnEnum<_i5d5abt7.DocumentType> type;

  late final _is.ColumnEnum<_ii1wmk2g.RegistryBody> registryBody;

  late final _is.ColumnString number;

  late final _is.ColumnDateTime emissionDate;

  late final _is.ColumnDateTime expirationDate;

  late final _is.ColumnString filePath;

  late final _is.ColumnString supplierName;

  late final _is.ColumnString supplierCpfCnpj;

  late final _is.ColumnString supplierPhone;

  late final _is.ColumnString supplierAddress;

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: Document.t.userId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: Document.t.firearmId,
      foreignField: _i25s0fp9.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i25s0fp9.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  _ixwksfmb.AccessoryTable get accessory {
    if (_accessory != null) return _accessory!;
    _accessory = _is.createRelationTable(
      relationFieldName: 'accessory',
      field: Document.t.accessoryId,
      foreignField: _ixwksfmb.Accessory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ixwksfmb.AccessoryTable(tableRelation: foreignTableRelation),
    );
    return _accessory!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    firearmId,
    accessoryId,
    type,
    registryBody,
    number,
    emissionDate,
    expirationDate,
    filePath,
    supplierName,
    supplierCpfCnpj,
    supplierPhone,
    supplierAddress,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    if (relationField == 'accessory') {
      return accessory;
    }
    return null;
  }
}

class DocumentInclude extends _is.IncludeObject {
  DocumentInclude._({
    _izifjpv2.UserProfileInclude? user,
    _i25s0fp9.FirearmInclude? firearm,
    _ixwksfmb.AccessoryInclude? accessory,
  }) {
    _user = user;
    _firearm = firearm;
    _accessory = accessory;
  }

  _izifjpv2.UserProfileInclude? _user;

  _i25s0fp9.FirearmInclude? _firearm;

  _ixwksfmb.AccessoryInclude? _accessory;

  @override
  Map<String, _is.Include?> get includes => {
    'user': _user,
    'firearm': _firearm,
    'accessory': _accessory,
  };

  @override
  _is.Table<_is.UuidValue> get table => Document.t;
}

class DocumentIncludeList extends _is.IncludeList {
  DocumentIncludeList._({
    _is.WhereExpressionBuilder<DocumentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Document.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Document.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    _is.Transaction? transaction,
    DocumentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Document>(
      where: where?.call(Document.t),
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<DocumentTable>? where,
    int? offset,
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    _is.Transaction? transaction,
    DocumentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Document>(
      where: where?.call(Document.t),
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Document] by its [id] or null if no such row exists.
  Future<Document?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    DocumentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> insert(
    _is.DatabaseSession session,
    List<Document> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Document>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Document] and returns the inserted row.
  ///
  /// The returned [Document] will have its `id` field set.
  Future<Document> insertRow(
    _is.DatabaseSession session,
    Document row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Document>(row, transaction: transaction);
  }

  /// Upserts all [Document]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [Document]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> upsert(
    _is.DatabaseSession session,
    List<Document> rows, {
    required _is.ColumnSelections<DocumentTable> conflictColumns,
    _is.ColumnSelections<DocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<DocumentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Document>(
      rows,
      conflictColumns: conflictColumns(Document.t),
      updateColumns: updateColumns?.call(Document.t),
      updateWhere: updateWhere?.call(Document.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Document] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [Document] will have its `id` field set.
  Future<Document?> upsertRow(
    _is.DatabaseSession session,
    Document row, {
    required _is.ColumnSelections<DocumentTable> conflictColumns,
    _is.ColumnSelections<DocumentTable>? updateColumns,
    _is.WhereExpressionBuilder<DocumentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Document>(
      row,
      conflictColumns: conflictColumns(Document.t),
      updateColumns: updateColumns?.call(Document.t),
      updateWhere: updateWhere?.call(Document.t),
      transaction: transaction,
    );
  }

  /// Updates all [Document]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> update(
    _is.DatabaseSession session,
    List<Document> rows, {
    _is.ColumnSelections<DocumentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Document>(
      rows,
      columns: columns?.call(Document.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Document]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Document> updateRow(
    _is.DatabaseSession session,
    Document row, {
    _is.ColumnSelections<DocumentTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<DocumentUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Document>(
      id,
      columnValues: columnValues(Document.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Document]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<DocumentUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<DocumentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Document>(
      columnValues: columnValues(Document.t.updateTable),
      where: where(Document.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Document]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> delete(
    _is.DatabaseSession session,
    List<Document> rows, {
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Document>(
      rows,
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Document].
  Future<Document> deleteRow(
    _is.DatabaseSession session,
    Document row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Document>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Document>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<DocumentTable> where,
    _is.OrderByBuilder<DocumentTable>? orderBy,
    _is.OrderByListBuilder<DocumentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Document>(
      where: where(Document.t),
      orderBy: orderBy?.call(Document.t),
      orderByList: orderByList?.call(Document.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<DocumentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Document>(
      where: where?.call(Document.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Document] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<DocumentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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

  /// Creates a relation between the given [Document] and [UserProfile]
  /// by setting the [Document]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _is.DatabaseSession session,
    Document document,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
  }) async {
    if (document.id == null) {
      throw ArgumentError.notNull('document.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $document = document.copyWith(userId: user.id);
    await session.db.updateRow<Document>(
      $document,
      columns: [Document.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Document] and [Firearm]
  /// by setting the [Document]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _is.DatabaseSession session,
    Document document,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Document document,
    _ixwksfmb.Accessory accessory, {
    _is.Transaction? transaction,
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
}

class DocumentDetachRowRepository {
  const DocumentDetachRowRepository._();

  /// Detaches the relation between this [Document] and the [Firearm] set in `firearm`
  /// by setting the [Document]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _is.DatabaseSession session,
    Document document, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Document document, {
    _is.Transaction? transaction,
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
}
