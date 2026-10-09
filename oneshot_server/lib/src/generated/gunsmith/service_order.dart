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
import '../gunsmith/gunsmith_client.dart' as _i2wg6r80;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class ServiceOrder
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  ServiceOrder._({
    _is.UuidValue? id,
    this.clientId,
    this.client,
    this.firearmId,
    this.firearm,
    required this.entryDate,
    this.estimatedDeliveryDate,
    required this.totalPrice,
    this.discount,
    required this.finalPrice,
    this.paymentMethod,
    this.notes,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory ServiceOrder({
    _is.UuidValue? id,
    _is.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime entryDate,
    DateTime? estimatedDeliveryDate,
    required double totalPrice,
    double? discount,
    required double finalPrice,
    String? paymentMethod,
    String? notes,
  }) = _ServiceOrderImpl;

  factory ServiceOrder.fromJson(Map<String, dynamic> jsonSerialization) {
    return ServiceOrder(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      clientId: jsonSerialization['clientId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['clientId']),
      client: jsonSerialization['client'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i2wg6r80.GunsmithClient>(
              jsonSerialization['client'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      entryDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['entryDate'],
      ),
      estimatedDeliveryDate: jsonSerialization['estimatedDeliveryDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['estimatedDeliveryDate'],
            ),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalPrice: (jsonSerialization['finalPrice'] as num).toDouble(),
      paymentMethod: jsonSerialization['paymentMethod'] as String?,
      notes: jsonSerialization['notes'] as String?,
    );
  }

  static final t = ServiceOrderTable();

  static const db = ServiceOrderRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? clientId;

  _i2wg6r80.GunsmithClient? client;

  _is.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  DateTime entryDate;

  DateTime? estimatedDeliveryDate;

  double totalPrice;

  double? discount;

  double finalPrice;

  String? paymentMethod;

  String? notes;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [ServiceOrder]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ServiceOrder copyWith({
    _is.UuidValue? id,
    _is.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    DateTime? entryDate,
    DateTime? estimatedDeliveryDate,
    double? totalPrice,
    double? discount,
    double? finalPrice,
    String? paymentMethod,
    String? notes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ServiceOrder',
      'id': id.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      if (client != null) 'client': client?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'entryDate': entryDate.toJson(),
      if (estimatedDeliveryDate != null)
        'estimatedDeliveryDate': estimatedDeliveryDate?.toJson(),
      'totalPrice': totalPrice,
      if (discount != null) 'discount': discount,
      'finalPrice': finalPrice,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ServiceOrder',
      'id': id.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      if (client != null) 'client': client?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'entryDate': entryDate.toJson(),
      if (estimatedDeliveryDate != null)
        'estimatedDeliveryDate': estimatedDeliveryDate?.toJson(),
      'totalPrice': totalPrice,
      if (discount != null) 'discount': discount,
      'finalPrice': finalPrice,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      if (notes != null) 'notes': notes,
    };
  }

  static ServiceOrderInclude include({
    _i2wg6r80.GunsmithClientInclude? client,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    return ServiceOrderInclude._(client: client, firearm: firearm);
  }

  static ServiceOrderIncludeList includeList({
    _is.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    ServiceOrderInclude? include,
  }) {
    return ServiceOrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderImpl extends ServiceOrder {
  _ServiceOrderImpl({
    _is.UuidValue? id,
    _is.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime entryDate,
    DateTime? estimatedDeliveryDate,
    required double totalPrice,
    double? discount,
    required double finalPrice,
    String? paymentMethod,
    String? notes,
  }) : super._(
         id: id,
         clientId: clientId,
         client: client,
         firearmId: firearmId,
         firearm: firearm,
         entryDate: entryDate,
         estimatedDeliveryDate: estimatedDeliveryDate,
         totalPrice: totalPrice,
         discount: discount,
         finalPrice: finalPrice,
         paymentMethod: paymentMethod,
         notes: notes,
       );

  /// Returns a shallow copy of this [ServiceOrder]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ServiceOrder copyWith({
    _is.UuidValue? id,
    Object? clientId = _Undefined,
    Object? client = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? entryDate,
    Object? estimatedDeliveryDate = _Undefined,
    double? totalPrice,
    Object? discount = _Undefined,
    double? finalPrice,
    Object? paymentMethod = _Undefined,
    Object? notes = _Undefined,
  }) {
    return ServiceOrder(
      id: id ?? this.id,
      clientId: clientId is _is.UuidValue? ? clientId : this.clientId,
      client: client is _i2wg6r80.GunsmithClient?
          ? client
          : this.client?.copyWith(),
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      entryDate: entryDate ?? this.entryDate,
      estimatedDeliveryDate: estimatedDeliveryDate is DateTime?
          ? estimatedDeliveryDate
          : this.estimatedDeliveryDate,
      totalPrice: totalPrice ?? this.totalPrice,
      discount: discount is double? ? discount : this.discount,
      finalPrice: finalPrice ?? this.finalPrice,
      paymentMethod: paymentMethod is String?
          ? paymentMethod
          : this.paymentMethod,
      notes: notes is String? ? notes : this.notes,
    );
  }
}

class ServiceOrderUpdateTable extends _is.UpdateTable<ServiceOrderTable> {
  ServiceOrderUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> clientId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.clientId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<DateTime, DateTime> entryDate(DateTime value) =>
      _is.ColumnValue(table.entryDate, value);

  _is.ColumnValue<DateTime, DateTime> estimatedDeliveryDate(DateTime? value) =>
      _is.ColumnValue(table.estimatedDeliveryDate, value);

  _is.ColumnValue<double, double> totalPrice(double value) =>
      _is.ColumnValue(table.totalPrice, value);

  _is.ColumnValue<double, double> discount(double? value) =>
      _is.ColumnValue(table.discount, value);

  _is.ColumnValue<double, double> finalPrice(double value) =>
      _is.ColumnValue(table.finalPrice, value);

  _is.ColumnValue<String, String> paymentMethod(String? value) =>
      _is.ColumnValue(table.paymentMethod, value);

  _is.ColumnValue<String, String> notes(String? value) =>
      _is.ColumnValue(table.notes, value);
}

class ServiceOrderTable extends _is.Table<_is.UuidValue> {
  ServiceOrderTable({super.tableRelation})
    : super(tableName: 'service_orders') {
    updateTable = ServiceOrderUpdateTable(this);
    clientId = _is.ColumnUuid('clientId', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    entryDate = _is.ColumnDateTime('entryDate', this);
    estimatedDeliveryDate = _is.ColumnDateTime('estimatedDeliveryDate', this);
    totalPrice = _is.ColumnDouble('totalPrice', this);
    discount = _is.ColumnDouble('discount', this);
    finalPrice = _is.ColumnDouble('finalPrice', this);
    paymentMethod = _is.ColumnString('paymentMethod', this);
    notes = _is.ColumnString('notes', this);
  }

  late final ServiceOrderUpdateTable updateTable;

  late final _is.ColumnUuid clientId;

  _i2wg6r80.GunsmithClientTable? _client;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnDateTime entryDate;

  late final _is.ColumnDateTime estimatedDeliveryDate;

  late final _is.ColumnDouble totalPrice;

  late final _is.ColumnDouble discount;

  late final _is.ColumnDouble finalPrice;

  late final _is.ColumnString paymentMethod;

  late final _is.ColumnString notes;

  _i2wg6r80.GunsmithClientTable get client {
    if (_client != null) return _client!;
    _client = _is.createRelationTable(
      relationFieldName: 'client',
      field: ServiceOrder.t.clientId,
      foreignField: _i2wg6r80.GunsmithClient.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2wg6r80.GunsmithClientTable(tableRelation: foreignTableRelation),
    );
    return _client!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: ServiceOrder.t.firearmId,
      foreignField: _i25s0fp9.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i25s0fp9.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    clientId,
    firearmId,
    entryDate,
    estimatedDeliveryDate,
    totalPrice,
    discount,
    finalPrice,
    paymentMethod,
    notes,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'client') {
      return client;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class ServiceOrderInclude extends _is.IncludeObject {
  ServiceOrderInclude._({
    _i2wg6r80.GunsmithClientInclude? client,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    _client = client;
    _firearm = firearm;
  }

  _i2wg6r80.GunsmithClientInclude? _client;

  _i25s0fp9.FirearmInclude? _firearm;

  @override
  Map<String, _is.Include?> get includes => {
    'client': _client,
    'firearm': _firearm,
  };

  @override
  _is.Table<_is.UuidValue> get table => ServiceOrder.t;
}

class ServiceOrderIncludeList extends _is.IncludeList {
  ServiceOrderIncludeList._({
    _is.WhereExpressionBuilder<ServiceOrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceOrder.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => ServiceOrder.t;
}

class ServiceOrderRepository {
  const ServiceOrderRepository._();

  final attachRow = const ServiceOrderAttachRowRepository._();

  final detachRow = const ServiceOrderDetachRowRepository._();

  /// Returns a list of [ServiceOrder]s matching the given query parameters.
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
  Future<List<ServiceOrder>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _is.Transaction? transaction,
    ServiceOrderInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ServiceOrder] matching the given query parameters.
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
  Future<ServiceOrder?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? offset,
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _is.Transaction? transaction,
    ServiceOrderInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ServiceOrder] by its [id] or null if no such row exists.
  Future<ServiceOrder?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    ServiceOrderInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ServiceOrder>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ServiceOrder]s in the list and returns the inserted rows.
  ///
  /// The returned [ServiceOrder]s will have their `id` fields set.
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
  Future<List<ServiceOrder>> insert(
    _is.DatabaseSession session,
    List<ServiceOrder> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ServiceOrder>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ServiceOrder] and returns the inserted row.
  ///
  /// The returned [ServiceOrder] will have its `id` field set.
  Future<ServiceOrder> insertRow(
    _is.DatabaseSession session,
    ServiceOrder row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ServiceOrder>(row, transaction: transaction);
  }

  /// Upserts all [ServiceOrder]s in the list and returns the resulting rows.
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
  /// The returned [ServiceOrder]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrder>> upsert(
    _is.DatabaseSession session,
    List<ServiceOrder> rows, {
    required _is.ColumnSelections<ServiceOrderTable> conflictColumns,
    _is.ColumnSelections<ServiceOrderTable>? updateColumns,
    _is.WhereExpressionBuilder<ServiceOrderTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ServiceOrder>(
      rows,
      conflictColumns: conflictColumns(ServiceOrder.t),
      updateColumns: updateColumns?.call(ServiceOrder.t),
      updateWhere: updateWhere?.call(ServiceOrder.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ServiceOrder] and returns the resulting row.
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
  /// The returned [ServiceOrder] will have its `id` field set.
  Future<ServiceOrder?> upsertRow(
    _is.DatabaseSession session,
    ServiceOrder row, {
    required _is.ColumnSelections<ServiceOrderTable> conflictColumns,
    _is.ColumnSelections<ServiceOrderTable>? updateColumns,
    _is.WhereExpressionBuilder<ServiceOrderTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ServiceOrder>(
      row,
      conflictColumns: conflictColumns(ServiceOrder.t),
      updateColumns: updateColumns?.call(ServiceOrder.t),
      updateWhere: updateWhere?.call(ServiceOrder.t),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrder]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrder>> update(
    _is.DatabaseSession session,
    List<ServiceOrder> rows, {
    _is.ColumnSelections<ServiceOrderTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ServiceOrder>(
      rows,
      columns: columns?.call(ServiceOrder.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ServiceOrder]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ServiceOrder> updateRow(
    _is.DatabaseSession session,
    ServiceOrder row, {
    _is.ColumnSelections<ServiceOrderTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ServiceOrder>(
      row,
      columns: columns?.call(ServiceOrder.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ServiceOrder] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ServiceOrder?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ServiceOrderUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ServiceOrder>(
      id,
      columnValues: columnValues(ServiceOrder.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrder]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrder>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ServiceOrderUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ServiceOrderTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ServiceOrder>(
      columnValues: columnValues(ServiceOrder.t.updateTable),
      where: where(ServiceOrder.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ServiceOrder]s in the list and returns the deleted rows.
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
  Future<List<ServiceOrder>> delete(
    _is.DatabaseSession session,
    List<ServiceOrder> rows, {
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ServiceOrder>(
      rows,
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ServiceOrder].
  Future<ServiceOrder> deleteRow(
    _is.DatabaseSession session,
    ServiceOrder row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ServiceOrder>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrder>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ServiceOrderTable> where,
    _is.OrderByBuilder<ServiceOrderTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ServiceOrder>(
      where: where(ServiceOrder.t),
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ServiceOrder] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ServiceOrderTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ServiceOrder>(
      where: where(ServiceOrder.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ServiceOrderAttachRowRepository {
  const ServiceOrderAttachRowRepository._();

  /// Creates a relation between the given [ServiceOrder] and [GunsmithClient]
  /// by setting the [ServiceOrder]'s foreign key `clientId` to refer to the [GunsmithClient].
  Future<void> client(
    _is.DatabaseSession session,
    ServiceOrder serviceOrder,
    _i2wg6r80.GunsmithClient client, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrder.id == null) {
      throw ArgumentError.notNull('serviceOrder.id');
    }
    if (client.id == null) {
      throw ArgumentError.notNull('client.id');
    }

    var $serviceOrder = serviceOrder.copyWith(clientId: client.id);
    await session.db.updateRow<ServiceOrder>(
      $serviceOrder,
      columns: [ServiceOrder.t.clientId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ServiceOrder] and [Firearm]
  /// by setting the [ServiceOrder]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _is.DatabaseSession session,
    ServiceOrder serviceOrder,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrder.id == null) {
      throw ArgumentError.notNull('serviceOrder.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $serviceOrder = serviceOrder.copyWith(firearmId: firearm.id);
    await session.db.updateRow<ServiceOrder>(
      $serviceOrder,
      columns: [ServiceOrder.t.firearmId],
      transaction: transaction,
    );
  }
}

class ServiceOrderDetachRowRepository {
  const ServiceOrderDetachRowRepository._();

  /// Detaches the relation between this [ServiceOrder] and the [GunsmithClient] set in `client`
  /// by setting the [ServiceOrder]'s foreign key `clientId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> client(
    _is.DatabaseSession session,
    ServiceOrder serviceOrder, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrder.id == null) {
      throw ArgumentError.notNull('serviceOrder.id');
    }

    var $serviceOrder = serviceOrder.copyWith(clientId: null);
    await session.db.updateRow<ServiceOrder>(
      $serviceOrder,
      columns: [ServiceOrder.t.clientId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ServiceOrder] and the [Firearm] set in `firearm`
  /// by setting the [ServiceOrder]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _is.DatabaseSession session,
    ServiceOrder serviceOrder, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrder.id == null) {
      throw ArgumentError.notNull('serviceOrder.id');
    }

    var $serviceOrder = serviceOrder.copyWith(firearmId: null);
    await session.db.updateRow<ServiceOrder>(
      $serviceOrder,
      columns: [ServiceOrder.t.firearmId],
      transaction: transaction,
    );
  }
}
