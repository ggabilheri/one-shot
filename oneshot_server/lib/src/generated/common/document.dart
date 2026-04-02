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
import '../common/user_profile.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import '../common/accessory.dart' as _i4;
import '../enums/document_type.enum.dart' as _i5;
import '../enums/registry_body.enum.dart' as _i6;
import 'package:oneshot_server/src/generated/protocol.dart' as _i7;

abstract class Document
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = DocumentTable();

  static const db = DocumentRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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
    _i2.UserProfileInclude? user,
    _i3.FirearmInclude? firearm,
    _i4.AccessoryInclude? accessory,
  }) {
    return DocumentInclude._(
      user: user,
      firearm: firearm,
      accessory: accessory,
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

class DocumentUpdateTable extends _i1.UpdateTable<DocumentTable> {
  DocumentUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.userId,
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

  _i1.ColumnValue<_i5.DocumentType, _i5.DocumentType> type(
    _i5.DocumentType value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<_i6.RegistryBody, _i6.RegistryBody> registryBody(
    _i6.RegistryBody value,
  ) => _i1.ColumnValue(
    table.registryBody,
    value,
  );

  _i1.ColumnValue<String, String> number(String value) => _i1.ColumnValue(
    table.number,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> emissionDate(DateTime value) =>
      _i1.ColumnValue(
        table.emissionDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> expirationDate(DateTime? value) =>
      _i1.ColumnValue(
        table.expirationDate,
        value,
      );

  _i1.ColumnValue<String, String> filePath(String? value) => _i1.ColumnValue(
    table.filePath,
    value,
  );

  _i1.ColumnValue<String, String> supplierName(String? value) =>
      _i1.ColumnValue(
        table.supplierName,
        value,
      );

  _i1.ColumnValue<String, String> supplierCpfCnpj(String? value) =>
      _i1.ColumnValue(
        table.supplierCpfCnpj,
        value,
      );

  _i1.ColumnValue<String, String> supplierPhone(String? value) =>
      _i1.ColumnValue(
        table.supplierPhone,
        value,
      );

  _i1.ColumnValue<String, String> supplierAddress(String? value) =>
      _i1.ColumnValue(
        table.supplierAddress,
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
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    accessoryId = _i1.ColumnUuid(
      'accessoryId',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    registryBody = _i1.ColumnEnum(
      'registryBody',
      this,
      _i1.EnumSerialization.byName,
    );
    number = _i1.ColumnString(
      'number',
      this,
    );
    emissionDate = _i1.ColumnDateTime(
      'emissionDate',
      this,
    );
    expirationDate = _i1.ColumnDateTime(
      'expirationDate',
      this,
    );
    filePath = _i1.ColumnString(
      'filePath',
      this,
    );
    supplierName = _i1.ColumnString(
      'supplierName',
      this,
    );
    supplierCpfCnpj = _i1.ColumnString(
      'supplierCpfCnpj',
      this,
    );
    supplierPhone = _i1.ColumnString(
      'supplierPhone',
      this,
    );
    supplierAddress = _i1.ColumnString(
      'supplierAddress',
      this,
    );
  }

  late final DocumentUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  _i2.UserProfileTable? _user;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnUuid accessoryId;

  _i4.AccessoryTable? _accessory;

  late final _i1.ColumnEnum<_i5.DocumentType> type;

  late final _i1.ColumnEnum<_i6.RegistryBody> registryBody;

  late final _i1.ColumnString number;

  late final _i1.ColumnDateTime emissionDate;

  late final _i1.ColumnDateTime expirationDate;

  late final _i1.ColumnString filePath;

  late final _i1.ColumnString supplierName;

  late final _i1.ColumnString supplierCpfCnpj;

  late final _i1.ColumnString supplierPhone;

  late final _i1.ColumnString supplierAddress;

  _i2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Document.t.userId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
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

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
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

class DocumentInclude extends _i1.IncludeObject {
  DocumentInclude._({
    _i2.UserProfileInclude? user,
    _i3.FirearmInclude? firearm,
    _i4.AccessoryInclude? accessory,
  }) {
    _user = user;
    _firearm = firearm;
    _accessory = accessory;
  }

  _i2.UserProfileInclude? _user;

  _i3.FirearmInclude? _firearm;

  _i4.AccessoryInclude? _accessory;

  @override
  Map<String, _i1.Include?> get includes => {
    'user': _user,
    'firearm': _firearm,
    'accessory': _accessory,
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

  /// Creates a relation between the given [Document] and [UserProfile]
  /// by setting the [Document]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _i1.DatabaseSession session,
    Document document,
    _i2.UserProfile user, {
    _i1.Transaction? transaction,
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
}

class DocumentDetachRowRepository {
  const DocumentDetachRowRepository._();

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
}
