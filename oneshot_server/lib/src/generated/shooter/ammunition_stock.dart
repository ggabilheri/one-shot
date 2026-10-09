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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i1n3uhu0;

abstract class AmmunitionStock
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  AmmunitionStock._({
    _is.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.type,
    required this.manufacturer,
    required this.caliber,
    required this.projectileType,
    this.projectileWeightGrains,
    required this.quantity,
    this.purchasePrice,
    required this.acquisitionDate,
    this.casingBatch,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory AmmunitionStock({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required String type,
    required String manufacturer,
    required String caliber,
    required String projectileType,
    double? projectileWeightGrains,
    required int quantity,
    double? purchasePrice,
    required DateTime acquisitionDate,
    String? casingBatch,
  }) = _AmmunitionStockImpl;

  factory AmmunitionStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return AmmunitionStock(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      type: jsonSerialization['type'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      caliber: jsonSerialization['caliber'] as String,
      projectileType: jsonSerialization['projectileType'] as String,
      projectileWeightGrains:
          (jsonSerialization['projectileWeightGrains'] as num?)?.toDouble(),
      quantity: jsonSerialization['quantity'] as int,
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      acquisitionDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['acquisitionDate'],
      ),
      casingBatch: jsonSerialization['casingBatch'] as String?,
    );
  }

  static final t = AmmunitionStockTable();

  static const db = AmmunitionStockRepository._();

  @override
  _is.UuidValue id;

  int? userInfoId;

  _i1n3uhu0.UserInfo? userInfo;

  String type;

  String manufacturer;

  String caliber;

  String projectileType;

  double? projectileWeightGrains;

  int quantity;

  double? purchasePrice;

  DateTime acquisitionDate;

  String? casingBatch;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [AmmunitionStock]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  AmmunitionStock copyWith({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    String? type,
    String? manufacturer,
    String? caliber,
    String? projectileType,
    double? projectileWeightGrains,
    int? quantity,
    double? purchasePrice,
    DateTime? acquisitionDate,
    String? casingBatch,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AmmunitionStock',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'type': type,
      'manufacturer': manufacturer,
      'caliber': caliber,
      'projectileType': projectileType,
      if (projectileWeightGrains != null)
        'projectileWeightGrains': projectileWeightGrains,
      'quantity': quantity,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      'acquisitionDate': acquisitionDate.toJson(),
      if (casingBatch != null) 'casingBatch': casingBatch,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'AmmunitionStock',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'type': type,
      'manufacturer': manufacturer,
      'caliber': caliber,
      'projectileType': projectileType,
      if (projectileWeightGrains != null)
        'projectileWeightGrains': projectileWeightGrains,
      'quantity': quantity,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      'acquisitionDate': acquisitionDate.toJson(),
      if (casingBatch != null) 'casingBatch': casingBatch,
    };
  }

  static AmmunitionStockInclude include({_i1n3uhu0.UserInfoInclude? userInfo}) {
    return AmmunitionStockInclude._(userInfo: userInfo);
  }

  static AmmunitionStockIncludeList includeList({
    _is.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    AmmunitionStockInclude? include,
  }) {
    return AmmunitionStockIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AmmunitionStockImpl extends AmmunitionStock {
  _AmmunitionStockImpl({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required String type,
    required String manufacturer,
    required String caliber,
    required String projectileType,
    double? projectileWeightGrains,
    required int quantity,
    double? purchasePrice,
    required DateTime acquisitionDate,
    String? casingBatch,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         type: type,
         manufacturer: manufacturer,
         caliber: caliber,
         projectileType: projectileType,
         projectileWeightGrains: projectileWeightGrains,
         quantity: quantity,
         purchasePrice: purchasePrice,
         acquisitionDate: acquisitionDate,
         casingBatch: casingBatch,
       );

  /// Returns a shallow copy of this [AmmunitionStock]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  AmmunitionStock copyWith({
    _is.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? type,
    String? manufacturer,
    String? caliber,
    String? projectileType,
    Object? projectileWeightGrains = _Undefined,
    int? quantity,
    Object? purchasePrice = _Undefined,
    DateTime? acquisitionDate,
    Object? casingBatch = _Undefined,
  }) {
    return AmmunitionStock(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i1n3uhu0.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      type: type ?? this.type,
      manufacturer: manufacturer ?? this.manufacturer,
      caliber: caliber ?? this.caliber,
      projectileType: projectileType ?? this.projectileType,
      projectileWeightGrains: projectileWeightGrains is double?
          ? projectileWeightGrains
          : this.projectileWeightGrains,
      quantity: quantity ?? this.quantity,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      acquisitionDate: acquisitionDate ?? this.acquisitionDate,
      casingBatch: casingBatch is String? ? casingBatch : this.casingBatch,
    );
  }
}

class AmmunitionStockUpdateTable extends _is.UpdateTable<AmmunitionStockTable> {
  AmmunitionStockUpdateTable(super.table);

  _is.ColumnValue<int, int> userInfoId(int? value) =>
      _is.ColumnValue(table.userInfoId, value);

  _is.ColumnValue<String, String> type(String value) =>
      _is.ColumnValue(table.type, value);

  _is.ColumnValue<String, String> manufacturer(String value) =>
      _is.ColumnValue(table.manufacturer, value);

  _is.ColumnValue<String, String> caliber(String value) =>
      _is.ColumnValue(table.caliber, value);

  _is.ColumnValue<String, String> projectileType(String value) =>
      _is.ColumnValue(table.projectileType, value);

  _is.ColumnValue<double, double> projectileWeightGrains(double? value) =>
      _is.ColumnValue(table.projectileWeightGrains, value);

  _is.ColumnValue<int, int> quantity(int value) =>
      _is.ColumnValue(table.quantity, value);

  _is.ColumnValue<double, double> purchasePrice(double? value) =>
      _is.ColumnValue(table.purchasePrice, value);

  _is.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime value) =>
      _is.ColumnValue(table.acquisitionDate, value);

  _is.ColumnValue<String, String> casingBatch(String? value) =>
      _is.ColumnValue(table.casingBatch, value);
}

class AmmunitionStockTable extends _is.Table<_is.UuidValue> {
  AmmunitionStockTable({super.tableRelation})
    : super(tableName: 'ammunition_stocks') {
    updateTable = AmmunitionStockUpdateTable(this);
    userInfoId = _is.ColumnInt('userInfoId', this);
    type = _is.ColumnString('type', this);
    manufacturer = _is.ColumnString('manufacturer', this);
    caliber = _is.ColumnString('caliber', this);
    projectileType = _is.ColumnString('projectileType', this);
    projectileWeightGrains = _is.ColumnDouble('projectileWeightGrains', this);
    quantity = _is.ColumnInt('quantity', this);
    purchasePrice = _is.ColumnDouble('purchasePrice', this);
    acquisitionDate = _is.ColumnDateTime('acquisitionDate', this);
    casingBatch = _is.ColumnString('casingBatch', this);
  }

  late final AmmunitionStockUpdateTable updateTable;

  late final _is.ColumnInt userInfoId;

  _i1n3uhu0.UserInfoTable? _userInfo;

  late final _is.ColumnString type;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString caliber;

  late final _is.ColumnString projectileType;

  late final _is.ColumnDouble projectileWeightGrains;

  late final _is.ColumnInt quantity;

  late final _is.ColumnDouble purchasePrice;

  late final _is.ColumnDateTime acquisitionDate;

  late final _is.ColumnString casingBatch;

  _i1n3uhu0.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _is.createRelationTable(
      relationFieldName: 'userInfo',
      field: AmmunitionStock.t.userInfoId,
      foreignField: _i1n3uhu0.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i1n3uhu0.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userInfoId,
    type,
    manufacturer,
    caliber,
    projectileType,
    projectileWeightGrains,
    quantity,
    purchasePrice,
    acquisitionDate,
    casingBatch,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class AmmunitionStockInclude extends _is.IncludeObject {
  AmmunitionStockInclude._({_i1n3uhu0.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i1n3uhu0.UserInfoInclude? _userInfo;

  @override
  Map<String, _is.Include?> get includes => {'userInfo': _userInfo};

  @override
  _is.Table<_is.UuidValue> get table => AmmunitionStock.t;
}

class AmmunitionStockIncludeList extends _is.IncludeList {
  AmmunitionStockIncludeList._({
    _is.WhereExpressionBuilder<AmmunitionStockTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AmmunitionStock.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => AmmunitionStock.t;
}

class AmmunitionStockRepository {
  const AmmunitionStockRepository._();

  final attachRow = const AmmunitionStockAttachRowRepository._();

  final detachRow = const AmmunitionStockDetachRowRepository._();

  /// Returns a list of [AmmunitionStock]s matching the given query parameters.
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
  Future<List<AmmunitionStock>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _is.Transaction? transaction,
    AmmunitionStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [AmmunitionStock] matching the given query parameters.
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
  Future<AmmunitionStock?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? offset,
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _is.Transaction? transaction,
    AmmunitionStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [AmmunitionStock] by its [id] or null if no such row exists.
  Future<AmmunitionStock?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    AmmunitionStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<AmmunitionStock>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [AmmunitionStock]s in the list and returns the inserted rows.
  ///
  /// The returned [AmmunitionStock]s will have their `id` fields set.
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
  Future<List<AmmunitionStock>> insert(
    _is.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<AmmunitionStock>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [AmmunitionStock] and returns the inserted row.
  ///
  /// The returned [AmmunitionStock] will have its `id` field set.
  Future<AmmunitionStock> insertRow(
    _is.DatabaseSession session,
    AmmunitionStock row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<AmmunitionStock>(row, transaction: transaction);
  }

  /// Upserts all [AmmunitionStock]s in the list and returns the resulting rows.
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
  /// The returned [AmmunitionStock]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AmmunitionStock>> upsert(
    _is.DatabaseSession session,
    List<AmmunitionStock> rows, {
    required _is.ColumnSelections<AmmunitionStockTable> conflictColumns,
    _is.ColumnSelections<AmmunitionStockTable>? updateColumns,
    _is.WhereExpressionBuilder<AmmunitionStockTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<AmmunitionStock>(
      rows,
      conflictColumns: conflictColumns(AmmunitionStock.t),
      updateColumns: updateColumns?.call(AmmunitionStock.t),
      updateWhere: updateWhere?.call(AmmunitionStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [AmmunitionStock] and returns the resulting row.
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
  /// The returned [AmmunitionStock] will have its `id` field set.
  Future<AmmunitionStock?> upsertRow(
    _is.DatabaseSession session,
    AmmunitionStock row, {
    required _is.ColumnSelections<AmmunitionStockTable> conflictColumns,
    _is.ColumnSelections<AmmunitionStockTable>? updateColumns,
    _is.WhereExpressionBuilder<AmmunitionStockTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<AmmunitionStock>(
      row,
      conflictColumns: conflictColumns(AmmunitionStock.t),
      updateColumns: updateColumns?.call(AmmunitionStock.t),
      updateWhere: updateWhere?.call(AmmunitionStock.t),
      transaction: transaction,
    );
  }

  /// Updates all [AmmunitionStock]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AmmunitionStock>> update(
    _is.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _is.ColumnSelections<AmmunitionStockTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<AmmunitionStock>(
      rows,
      columns: columns?.call(AmmunitionStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [AmmunitionStock]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AmmunitionStock> updateRow(
    _is.DatabaseSession session,
    AmmunitionStock row, {
    _is.ColumnSelections<AmmunitionStockTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<AmmunitionStock>(
      row,
      columns: columns?.call(AmmunitionStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AmmunitionStock] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<AmmunitionStock?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<AmmunitionStockUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<AmmunitionStock>(
      id,
      columnValues: columnValues(AmmunitionStock.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AmmunitionStock]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AmmunitionStock>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<AmmunitionStockUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<AmmunitionStockTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<AmmunitionStock>(
      columnValues: columnValues(AmmunitionStock.t.updateTable),
      where: where(AmmunitionStock.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [AmmunitionStock]s in the list and returns the deleted rows.
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
  Future<List<AmmunitionStock>> delete(
    _is.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<AmmunitionStock>(
      rows,
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [AmmunitionStock].
  Future<AmmunitionStock> deleteRow(
    _is.DatabaseSession session,
    AmmunitionStock row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AmmunitionStock>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AmmunitionStock>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AmmunitionStockTable> where,
    _is.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _is.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<AmmunitionStock>(
      where: where(AmmunitionStock.t),
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [AmmunitionStock] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AmmunitionStockTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<AmmunitionStock>(
      where: where(AmmunitionStock.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class AmmunitionStockAttachRowRepository {
  const AmmunitionStockAttachRowRepository._();

  /// Creates a relation between the given [AmmunitionStock] and [UserInfo]
  /// by setting the [AmmunitionStock]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _is.DatabaseSession session,
    AmmunitionStock ammunitionStock,
    _i1n3uhu0.UserInfo userInfo, {
    _is.Transaction? transaction,
  }) async {
    if (ammunitionStock.id == null) {
      throw ArgumentError.notNull('ammunitionStock.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $ammunitionStock = ammunitionStock.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<AmmunitionStock>(
      $ammunitionStock,
      columns: [AmmunitionStock.t.userInfoId],
      transaction: transaction,
    );
  }
}

class AmmunitionStockDetachRowRepository {
  const AmmunitionStockDetachRowRepository._();

  /// Detaches the relation between this [AmmunitionStock] and the [UserInfo] set in `userInfo`
  /// by setting the [AmmunitionStock]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _is.DatabaseSession session,
    AmmunitionStock ammunitionStock, {
    _is.Transaction? transaction,
  }) async {
    if (ammunitionStock.id == null) {
      throw ArgumentError.notNull('ammunitionStock.id');
    }

    var $ammunitionStock = ammunitionStock.copyWith(userInfoId: null);
    await session.db.updateRow<AmmunitionStock>(
      $ammunitionStock,
      columns: [AmmunitionStock.t.userInfoId],
      transaction: transaction,
    );
  }
}
