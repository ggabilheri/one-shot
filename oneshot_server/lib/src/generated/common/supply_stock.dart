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
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class SupplyStock
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  SupplyStock._({
    _i1.UuidValue? id,
    required this.name,
    required this.type,
    required this.quantity,
    required this.unit,
    this.acquisitionDate,
    this.batchNumber,
    this.userId,
    this.userInfoId,
    this.userInfo,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory SupplyStock({
    _i1.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  }) = _SupplyStockImpl;

  factory SupplyStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return SupplyStock(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unit: jsonSerialization['unit'] as String,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      batchNumber: jsonSerialization['batchNumber'] as String?,
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
    );
  }

  static final t = SupplyStockTable();

  static const db = SupplyStockRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String type;

  double quantity;

  String unit;

  DateTime? acquisitionDate;

  String? batchNumber;

  _i1.UuidValue? userId;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SupplyStock copyWith({
    _i1.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
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
      if (userId != null) 'userId': userId?.toJson(),
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
      if (userId != null) 'userId': userId?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
    };
  }

  static SupplyStockInclude include({_i2.UserInfoInclude? userInfo}) {
    return SupplyStockInclude._(userInfo: userInfo);
  }

  static SupplyStockIncludeList includeList({
    _i1.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SupplyStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupplyStockTable>? orderByList,
    SupplyStockInclude? include,
  }) {
    return SupplyStockIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SupplyStock.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SupplyStock.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SupplyStockImpl extends SupplyStock {
  _SupplyStockImpl({
    _i1.UuidValue? id,
    required String name,
    required String type,
    required double quantity,
    required String unit,
    DateTime? acquisitionDate,
    String? batchNumber,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  }) : super._(
         id: id,
         name: name,
         type: type,
         quantity: quantity,
         unit: unit,
         acquisitionDate: acquisitionDate,
         batchNumber: batchNumber,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
       );

  /// Returns a shallow copy of this [SupplyStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SupplyStock copyWith({
    _i1.UuidValue? id,
    String? name,
    String? type,
    double? quantity,
    String? unit,
    Object? acquisitionDate = _Undefined,
    Object? batchNumber = _Undefined,
    Object? userId = _Undefined,
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
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
    );
  }
}

class SupplyStockUpdateTable extends _i1.UpdateTable<SupplyStockTable> {
  SupplyStockUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<double, double> quantity(double value) => _i1.ColumnValue(
    table.quantity,
    value,
  );

  _i1.ColumnValue<String, String> unit(String value) => _i1.ColumnValue(
    table.unit,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _i1.ColumnValue(
        table.acquisitionDate,
        value,
      );

  _i1.ColumnValue<String, String> batchNumber(String? value) => _i1.ColumnValue(
    table.batchNumber,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );
}

class SupplyStockTable extends _i1.Table<_i1.UuidValue> {
  SupplyStockTable({super.tableRelation}) : super(tableName: 'supply_stocks') {
    updateTable = SupplyStockUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    quantity = _i1.ColumnDouble(
      'quantity',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    acquisitionDate = _i1.ColumnDateTime(
      'acquisitionDate',
      this,
    );
    batchNumber = _i1.ColumnString(
      'batchNumber',
      this,
    );
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
  }

  late final SupplyStockUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString type;

  late final _i1.ColumnDouble quantity;

  late final _i1.ColumnString unit;

  late final _i1.ColumnDateTime acquisitionDate;

  late final _i1.ColumnString batchNumber;

  late final _i1.ColumnUuid userId;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: SupplyStock.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    type,
    quantity,
    unit,
    acquisitionDate,
    batchNumber,
    userId,
    userInfoId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class SupplyStockInclude extends _i1.IncludeObject {
  SupplyStockInclude._({_i2.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i2.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {'userInfo': _userInfo};

  @override
  _i1.Table<_i1.UuidValue> get table => SupplyStock.t;
}

class SupplyStockIncludeList extends _i1.IncludeList {
  SupplyStockIncludeList._({
    _i1.WhereExpressionBuilder<SupplyStockTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SupplyStock.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => SupplyStock.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SupplyStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupplyStockTable>? orderByList,
    _i1.Transaction? transaction,
    SupplyStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SupplyStock>(
      where: where?.call(SupplyStock.t),
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SupplyStockTable>? where,
    int? offset,
    _i1.OrderByBuilder<SupplyStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupplyStockTable>? orderByList,
    _i1.Transaction? transaction,
    SupplyStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SupplyStock>(
      where: where?.call(SupplyStock.t),
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SupplyStock] by its [id] or null if no such row exists.
  Future<SupplyStock?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    SupplyStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<SupplyStock>> insert(
    _i1.DatabaseSession session,
    List<SupplyStock> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<SupplyStock>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [SupplyStock] and returns the inserted row.
  ///
  /// The returned [SupplyStock] will have its `id` field set.
  Future<SupplyStock> insertRow(
    _i1.DatabaseSession session,
    SupplyStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SupplyStock>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SupplyStock]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SupplyStock>> update(
    _i1.DatabaseSession session,
    List<SupplyStock> rows, {
    _i1.ColumnSelections<SupplyStockTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SupplyStock>(
      rows,
      columns: columns?.call(SupplyStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SupplyStock]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SupplyStock> updateRow(
    _i1.DatabaseSession session,
    SupplyStock row, {
    _i1.ColumnSelections<SupplyStockTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<SupplyStockUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SupplyStock>(
      id,
      columnValues: columnValues(SupplyStock.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SupplyStock]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SupplyStock>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<SupplyStockUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SupplyStockTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SupplyStockTable>? orderBy,
    _i1.OrderByListBuilder<SupplyStockTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SupplyStock>(
      columnValues: columnValues(SupplyStock.t.updateTable),
      where: where(SupplyStock.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SupplyStock.t),
      orderByList: orderByList?.call(SupplyStock.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SupplyStock]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SupplyStock>> delete(
    _i1.DatabaseSession session,
    List<SupplyStock> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SupplyStock>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SupplyStock].
  Future<SupplyStock> deleteRow(
    _i1.DatabaseSession session,
    SupplyStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SupplyStock>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SupplyStock>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SupplyStockTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SupplyStock>(
      where: where(SupplyStock.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SupplyStockTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SupplyStock>(
      where: where?.call(SupplyStock.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SupplyStock] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SupplyStockTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    SupplyStock supplyStock,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    SupplyStock supplyStock, {
    _i1.Transaction? transaction,
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
