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

abstract class AmmunitionStock
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  AmmunitionStock._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory AmmunitionStock({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
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
      acquisitionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['acquisitionDate'],
      ),
      casingBatch: jsonSerialization['casingBatch'] as String?,
    );
  }

  static final t = AmmunitionStockTable();

  static const db = AmmunitionStockRepository._();

  @override
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

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
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [AmmunitionStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AmmunitionStock copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
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
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
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

  static AmmunitionStockInclude include({_i2.UserInfoInclude? userInfo}) {
    return AmmunitionStockInclude._(userInfo: userInfo);
  }

  static AmmunitionStockIncludeList includeList({
    _i1.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmmunitionStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    AmmunitionStockInclude? include,
  }) {
    return AmmunitionStockIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AmmunitionStock.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AmmunitionStockImpl extends AmmunitionStock {
  _AmmunitionStockImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
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
  @_i1.useResult
  @override
  AmmunitionStock copyWith({
    _i1.UuidValue? id,
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
      userInfo: userInfo is _i2.UserInfo?
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

class AmmunitionStockUpdateTable extends _i1.UpdateTable<AmmunitionStockTable> {
  AmmunitionStockUpdateTable(super.table);

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> manufacturer(String value) => _i1.ColumnValue(
    table.manufacturer,
    value,
  );

  _i1.ColumnValue<String, String> caliber(String value) => _i1.ColumnValue(
    table.caliber,
    value,
  );

  _i1.ColumnValue<String, String> projectileType(String value) =>
      _i1.ColumnValue(
        table.projectileType,
        value,
      );

  _i1.ColumnValue<double, double> projectileWeightGrains(double? value) =>
      _i1.ColumnValue(
        table.projectileWeightGrains,
        value,
      );

  _i1.ColumnValue<int, int> quantity(int value) => _i1.ColumnValue(
    table.quantity,
    value,
  );

  _i1.ColumnValue<double, double> purchasePrice(double? value) =>
      _i1.ColumnValue(
        table.purchasePrice,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime value) =>
      _i1.ColumnValue(
        table.acquisitionDate,
        value,
      );

  _i1.ColumnValue<String, String> casingBatch(String? value) => _i1.ColumnValue(
    table.casingBatch,
    value,
  );
}

class AmmunitionStockTable extends _i1.Table<_i1.UuidValue> {
  AmmunitionStockTable({super.tableRelation})
    : super(tableName: 'ammunition_stocks') {
    updateTable = AmmunitionStockUpdateTable(this);
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    manufacturer = _i1.ColumnString(
      'manufacturer',
      this,
    );
    caliber = _i1.ColumnString(
      'caliber',
      this,
    );
    projectileType = _i1.ColumnString(
      'projectileType',
      this,
    );
    projectileWeightGrains = _i1.ColumnDouble(
      'projectileWeightGrains',
      this,
    );
    quantity = _i1.ColumnInt(
      'quantity',
      this,
    );
    purchasePrice = _i1.ColumnDouble(
      'purchasePrice',
      this,
    );
    acquisitionDate = _i1.ColumnDateTime(
      'acquisitionDate',
      this,
    );
    casingBatch = _i1.ColumnString(
      'casingBatch',
      this,
    );
  }

  late final AmmunitionStockUpdateTable updateTable;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnString type;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnString caliber;

  late final _i1.ColumnString projectileType;

  late final _i1.ColumnDouble projectileWeightGrains;

  late final _i1.ColumnInt quantity;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnDateTime acquisitionDate;

  late final _i1.ColumnString casingBatch;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: AmmunitionStock.t.userInfoId,
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class AmmunitionStockInclude extends _i1.IncludeObject {
  AmmunitionStockInclude._({_i2.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i2.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {'userInfo': _userInfo};

  @override
  _i1.Table<_i1.UuidValue> get table => AmmunitionStock.t;
}

class AmmunitionStockIncludeList extends _i1.IncludeList {
  AmmunitionStockIncludeList._({
    _i1.WhereExpressionBuilder<AmmunitionStockTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AmmunitionStock.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => AmmunitionStock.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmmunitionStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _i1.Transaction? transaction,
    AmmunitionStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? offset,
    _i1.OrderByBuilder<AmmunitionStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    _i1.Transaction? transaction,
    AmmunitionStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [AmmunitionStock] by its [id] or null if no such row exists.
  Future<AmmunitionStock?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    AmmunitionStockInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<AmmunitionStock>> insert(
    _i1.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<AmmunitionStock>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [AmmunitionStock] and returns the inserted row.
  ///
  /// The returned [AmmunitionStock] will have its `id` field set.
  Future<AmmunitionStock> insertRow(
    _i1.DatabaseSession session,
    AmmunitionStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AmmunitionStock>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [AmmunitionStock]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<AmmunitionStock>> update(
    _i1.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _i1.ColumnSelections<AmmunitionStockTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AmmunitionStock>(
      rows,
      columns: columns?.call(AmmunitionStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AmmunitionStock]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AmmunitionStock> updateRow(
    _i1.DatabaseSession session,
    AmmunitionStock row, {
    _i1.ColumnSelections<AmmunitionStockTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<AmmunitionStockUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<AmmunitionStock>(
      id,
      columnValues: columnValues(AmmunitionStock.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AmmunitionStock]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<AmmunitionStock>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AmmunitionStockUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<AmmunitionStockTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmmunitionStockTable>? orderBy,
    _i1.OrderByListBuilder<AmmunitionStockTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<AmmunitionStock>(
      columnValues: columnValues(AmmunitionStock.t.updateTable),
      where: where(AmmunitionStock.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmmunitionStock.t),
      orderByList: orderByList?.call(AmmunitionStock.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [AmmunitionStock]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<AmmunitionStock>> delete(
    _i1.DatabaseSession session,
    List<AmmunitionStock> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AmmunitionStock>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [AmmunitionStock].
  Future<AmmunitionStock> deleteRow(
    _i1.DatabaseSession session,
    AmmunitionStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AmmunitionStock>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<AmmunitionStock>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AmmunitionStockTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AmmunitionStock>(
      where: where(AmmunitionStock.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmmunitionStockTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AmmunitionStock>(
      where: where?.call(AmmunitionStock.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [AmmunitionStock] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AmmunitionStockTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    AmmunitionStock ammunitionStock,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    AmmunitionStock ammunitionStock, {
    _i1.Transaction? transaction,
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
