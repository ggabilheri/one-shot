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

abstract class SupplyStock
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  SupplyStock._({
    _is.UuidValue? id,
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    this.acquisitionDate,
    this.batchNumber,
    this.userInfoId,
    this.userInfo,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory SupplyStock({
    _is.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
  }) = _SupplyStockImpl;

  factory SupplyStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return SupplyStock(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unit: jsonSerialization['unit'] as String,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      batchNumber: jsonSerialization['batchNumber'] as String?,
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['userInfo'],
            ),
    );
  }

  static final t = SupplyStockTable();

  static const db = SupplyStockRepository._();

  @override
  _is.UuidValue id;

  String name;

  String type;

  double quantity;

  String unit;

  DateTime? acquisitionDate;

  String? batchNumber;

  int? userInfoId;

  _i1n3uhu0.UserInfo? userInfo;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SupplyStock copyWith({
    _is.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SupplyStock',
      'id': id.toJson(),
      'name': name,
      'type': type,
      'quantity': quantity,
      'unit': unit,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (batchNumber != null) 'batchNumber': batchNumber,
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SupplyStock',
      'id': id.toJson(),
      'name': name,
      'type': type,
      'quantity': quantity,
      'unit': unit,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (batchNumber != null) 'batchNumber': batchNumber,
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  static SupplyStockInclude include({_i1n3uhu0.UserInfoInclude? userInfo}) {
    return SupplyStockInclude._(userInfo: userInfo);
  }

  static SupplyStockIncludeList includeList({
    _is.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    SupplyStockInclude? include,
  }) {
    return SupplyStockIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SupplyStockImpl extends SupplyStock {
  _SupplyStockImpl({
    _is.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
  }) : super._(
         id: id,
         name: name,
         type: type,
         quantity: quantity,
         unit: unit,
         acquisitionDate: acquisitionDate,
         batchNumber: batchNumber,
         userInfoId: userInfoId,
         userInfo: userInfo,
       );

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SupplyStock copyWith({
    _is.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    Object? acquisitionDate = _Undefined,
    Object? batchNumber = _Undefined,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
  }) {
    return SupplyStock(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      batchNumber: batchNumber is String? ? batchNumber : this.batchNumber,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i1n3uhu0.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
    );
  }
}

class SupplyStockUpdateTable extends _is.UpdateTable<SupplyStockTable> {
  SupplyStockUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> type(String value) =>
      _is.ColumnValue(table.type, value);

  _is.ColumnValue<double, double> quantity(double value) =>
      _is.ColumnValue(table.quantity, value);

  _is.ColumnValue<String, String> unit(String value) =>
      _is.ColumnValue(table.unit, value);

  _is.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _is.ColumnValue(table.acquisitionDate, value);

  _is.ColumnValue<String, String> batchNumber(String? value) =>
      _is.ColumnValue(table.batchNumber, value);

  _is.ColumnValue<int, int> userInfoId(int? value) =>
      _is.ColumnValue(table.userInfoId, value);
}

class SupplyStockTable extends _is.Table<_is.UuidValue> {
  SupplyStockTable({super.tableRelation}) : super(tableName: 'supply_stocks') {
    updateTable = SupplyStockUpdateTable(this);
    name = _is.ColumnString('name', this);
    type = _is.ColumnString('type', this);
    quantity = _is.ColumnDouble('quantity', this);
    unit = _is.ColumnString('unit', this);
    acquisitionDate = _is.ColumnDateTime('acquisitionDate', this);
    batchNumber = _is.ColumnString('batchNumber', this);
    userInfoId = _is.ColumnInt('userInfoId', this);
  }

  late final SupplyStockUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString type;

  late final _is.ColumnDouble quantity;

  late final _is.ColumnString unit;

  late final _is.ColumnDateTime acquisitionDate;

  late final _is.ColumnString batchNumber;

  late final _is.ColumnInt userInfoId;

  _i1n3uhu0.UserInfoTable? _userInfo;

  _i1n3uhu0.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _is.createRelationTable(
      relationFieldName: 'userInfo',
      field: SupplyStock.t.userInfoId,
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
    name,
    type,
    quantity,
    unit,
    acquisitionDate,
    batchNumber,
    userInfoId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class SupplyStockInclude extends _is.IncludeObject {
  SupplyStockInclude._({_i1n3uhu0.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i1n3uhu0.UserInfoInclude? _userInfo;

  @override
  Map<String, _is.Include?> get includes => {'userInfo': _userInfo};

  @override
  _is.Table<_is.UuidValue> get table => SupplyStock.t;
}

class SupplyStockIncludeList extends _is.IncludeList {
  SupplyStockIncludeList._({
    _is.WhereExpressionBuilder<SupplyStockTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SupplyStock.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => SupplyStock.t;
}

class SupplyStockRepository {
  const SupplyStockRepository._();

  final attachRow = const SupplyStockAttachRowRepository._();

  final detachRow = const SupplyStockDetachRowRepository._();

  /// Returns a list of [SupplyStock]s matching the given query parameters.
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
  Future<List<SupplyStock>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    _is.Transaction? transaction,
    SupplyStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SupplyStock>(
      where: where?.call(SupplyStock.t),
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SupplyStock] matching the given query parameters.
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
  Future<SupplyStock?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SupplyStockTable>? where,
    int? offset,
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    _is.Transaction? transaction,
    SupplyStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SupplyStock>(
      where: where?.call(SupplyStock.t),
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SupplyStock] by its [id] or null if no such row exists.
  Future<SupplyStock?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    SupplyStockInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SupplyStock>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SupplyStock]s in the list and returns the inserted rows.
  ///
  /// The returned [SupplyStock]s will have their `id` fields set.
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
  Future<List<SupplyStock>> insert(
    _is.DatabaseSession session,
    List<SupplyStock> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SupplyStock>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SupplyStock] and returns the inserted row.
  ///
  /// The returned [SupplyStock] will have its `id` field set.
  Future<SupplyStock> insertRow(
    _is.DatabaseSession session,
    SupplyStock row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SupplyStock>(row, transaction: transaction);
  }

  /// Upserts all [SupplyStock]s in the list and returns the resulting rows.
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
  /// The returned [SupplyStock]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SupplyStock>> upsert(
    _is.DatabaseSession session,
    List<SupplyStock> rows, {
    required _is.ColumnSelections<SupplyStockTable> conflictColumns,
    _is.ColumnSelections<SupplyStockTable>? updateColumns,
    _is.WhereExpressionBuilder<SupplyStockTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SupplyStock>(
      rows,
      conflictColumns: conflictColumns(SupplyStock.t),
      updateColumns: updateColumns?.call(SupplyStock.t),
      updateWhere: updateWhere?.call(SupplyStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SupplyStock] and returns the resulting row.
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
  /// The returned [SupplyStock] will have its `id` field set.
  Future<SupplyStock?> upsertRow(
    _is.DatabaseSession session,
    SupplyStock row, {
    required _is.ColumnSelections<SupplyStockTable> conflictColumns,
    _is.ColumnSelections<SupplyStockTable>? updateColumns,
    _is.WhereExpressionBuilder<SupplyStockTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SupplyStock>(
      row,
      conflictColumns: conflictColumns(SupplyStock.t),
      updateColumns: updateColumns?.call(SupplyStock.t),
      updateWhere: updateWhere?.call(SupplyStock.t),
      transaction: transaction,
    );
  }

  /// Updates all [SupplyStock]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SupplyStock>> update(
    _is.DatabaseSession session,
    List<SupplyStock> rows, {
    _is.ColumnSelections<SupplyStockTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SupplyStock>(
      rows,
      columns: columns?.call(SupplyStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SupplyStock]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SupplyStock> updateRow(
    _is.DatabaseSession session,
    SupplyStock row, {
    _is.ColumnSelections<SupplyStockTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SupplyStock>(
      row,
      columns: columns?.call(SupplyStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SupplyStock] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SupplyStock?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SupplyStockUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SupplyStock>(
      id,
      columnValues: columnValues(SupplyStock.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SupplyStock]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SupplyStock>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SupplyStockUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SupplyStockTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SupplyStock>(
      columnValues: columnValues(SupplyStock.t.updateTable),
      where: where(SupplyStock.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SupplyStock]s in the list and returns the deleted rows.
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
  Future<List<SupplyStock>> delete(
    _is.DatabaseSession session,
    List<SupplyStock> rows, {
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SupplyStock>(
      rows,
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SupplyStock].
  Future<SupplyStock> deleteRow(
    _is.DatabaseSession session,
    SupplyStock row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SupplyStock>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SupplyStock>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SupplyStockTable> where,
    _is.OrderByBuilder<SupplyStockTable>? orderBy,
    _is.OrderByListBuilder<SupplyStockTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SupplyStock>(
      where: where(SupplyStock.t),
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SupplyStock>(
      where: where?.call(SupplyStock.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SupplyStock] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SupplyStockTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SupplyStock>(
      where: where(SupplyStock.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class SupplyStockAttachRowRepository {
  const SupplyStockAttachRowRepository._();

  /// Creates a relation between the given [SupplyStock] and [UserInfo]
  /// by setting the [SupplyStock]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _is.DatabaseSession session,
    SupplyStock supplyStock,
    _i1n3uhu0.UserInfo userInfo, {
    _is.Transaction? transaction,
  }) async {
    if (supplyStock.id == null) {
      throw ArgumentError.notNull('supplyStock.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $supplyStock = supplyStock.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<SupplyStock>(
      $supplyStock,
      columns: [SupplyStock.t.userInfoId],
      transaction: transaction,
    );
  }
}

class SupplyStockDetachRowRepository {
  const SupplyStockDetachRowRepository._();

  /// Detaches the relation between this [SupplyStock] and the [UserInfo] set in `userInfo`
  /// by setting the [SupplyStock]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _is.DatabaseSession session,
    SupplyStock supplyStock, {
    _is.Transaction? transaction,
  }) async {
    if (supplyStock.id == null) {
      throw ArgumentError.notNull('supplyStock.id');
    }

    var $supplyStock = supplyStock.copyWith(userInfoId: null);
    await session.db.updateRow<SupplyStock>(
      $supplyStock,
      columns: [SupplyStock.t.userInfoId],
      transaction: transaction,
    );
  }
}
