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
import '../common/supply_stock.dart' as _icdicocn;
import '../gunsmith/service_order.dart' as _inn42g74;

abstract class ServiceOrderItem
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  ServiceOrderItem._({
    _is.UuidValue? id,
    this.serviceOrderId,
    this.serviceOrder,
    required this.description,
    required this.isStockPart,
    this.supplyPartId,
    this.supplyPart,
    required this.servicePrice,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory ServiceOrderItem({
    _is.UuidValue? id,
    _is.UuidValue? serviceOrderId,
    _inn42g74.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _is.UuidValue? supplyPartId,
    _icdicocn.SupplyStock? supplyPart,
    required double servicePrice,
  }) = _ServiceOrderItemImpl;

  factory ServiceOrderItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return ServiceOrderItem(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      serviceOrderId: jsonSerialization['serviceOrderId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['serviceOrderId'],
            ),
      serviceOrder: jsonSerialization['serviceOrder'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_inn42g74.ServiceOrder>(
              jsonSerialization['serviceOrder'],
            ),
      description: jsonSerialization['description'] as String,
      isStockPart: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isStockPart'],
      ),
      supplyPartId: jsonSerialization['supplyPartId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['supplyPartId'],
            ),
      supplyPart: jsonSerialization['supplyPart'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['supplyPart'],
            ),
      servicePrice: (jsonSerialization['servicePrice'] as num).toDouble(),
    );
  }

  static final t = ServiceOrderItemTable();

  static const db = ServiceOrderItemRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? serviceOrderId;

  _inn42g74.ServiceOrder? serviceOrder;

  String description;

  bool isStockPart;

  _is.UuidValue? supplyPartId;

  _icdicocn.SupplyStock? supplyPart;

  double servicePrice;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [ServiceOrderItem]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ServiceOrderItem copyWith({
    _is.UuidValue? id,
    _is.UuidValue? serviceOrderId,
    _inn42g74.ServiceOrder? serviceOrder,
    String? description,
    bool? isStockPart,
    _is.UuidValue? supplyPartId,
    _icdicocn.SupplyStock? supplyPart,
    double? servicePrice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ServiceOrderItem',
      'id': id.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrder != null) 'serviceOrder': serviceOrder?.toJson(),
      'description': description,
      'isStockPart': isStockPart,
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPart != null) 'supplyPart': supplyPart?.toJson(),
      'servicePrice': servicePrice,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ServiceOrderItem',
      'id': id.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrder != null)
        'serviceOrder': serviceOrder?.toJsonForProtocol(),
      'description': description,
      'isStockPart': isStockPart,
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPart != null) 'supplyPart': supplyPart?.toJsonForProtocol(),
      'servicePrice': servicePrice,
    };
  }

  static ServiceOrderItemInclude include({
    _inn42g74.ServiceOrderInclude? serviceOrder,
    _icdicocn.SupplyStockInclude? supplyPart,
  }) {
    return ServiceOrderItemInclude._(
      serviceOrder: serviceOrder,
      supplyPart: supplyPart,
    );
  }

  static ServiceOrderItemIncludeList includeList({
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    ServiceOrderItemInclude? include,
  }) {
    return ServiceOrderItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderItemImpl extends ServiceOrderItem {
  _ServiceOrderItemImpl({
    _is.UuidValue? id,
    _is.UuidValue? serviceOrderId,
    _inn42g74.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _is.UuidValue? supplyPartId,
    _icdicocn.SupplyStock? supplyPart,
    required double servicePrice,
  }) : super._(
         id: id,
         serviceOrderId: serviceOrderId,
         serviceOrder: serviceOrder,
         description: description,
         isStockPart: isStockPart,
         supplyPartId: supplyPartId,
         supplyPart: supplyPart,
         servicePrice: servicePrice,
       );

  /// Returns a shallow copy of this [ServiceOrderItem]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ServiceOrderItem copyWith({
    _is.UuidValue? id,
    Object? serviceOrderId = _Undefined,
    Object? serviceOrder = _Undefined,
    String? description,
    bool? isStockPart,
    Object? supplyPartId = _Undefined,
    Object? supplyPart = _Undefined,
    double? servicePrice,
  }) {
    return ServiceOrderItem(
      id: id ?? this.id,
      serviceOrderId: serviceOrderId is _is.UuidValue?
          ? serviceOrderId
          : this.serviceOrderId,
      serviceOrder: serviceOrder is _inn42g74.ServiceOrder?
          ? serviceOrder
          : this.serviceOrder?.copyWith(),
      description: description ?? this.description,
      isStockPart: isStockPart ?? this.isStockPart,
      supplyPartId: supplyPartId is _is.UuidValue?
          ? supplyPartId
          : this.supplyPartId,
      supplyPart: supplyPart is _icdicocn.SupplyStock?
          ? supplyPart
          : this.supplyPart?.copyWith(),
      servicePrice: servicePrice ?? this.servicePrice,
    );
  }
}

class ServiceOrderItemUpdateTable
    extends _is.UpdateTable<ServiceOrderItemTable> {
  ServiceOrderItemUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> serviceOrderId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.serviceOrderId, value);

  _is.ColumnValue<String, String> description(String value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<bool, bool> isStockPart(bool value) =>
      _is.ColumnValue(table.isStockPart, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> supplyPartId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.supplyPartId, value);

  _is.ColumnValue<double, double> servicePrice(double value) =>
      _is.ColumnValue(table.servicePrice, value);
}

class ServiceOrderItemTable extends _is.Table<_is.UuidValue> {
  ServiceOrderItemTable({super.tableRelation})
    : super(tableName: 'service_order_items') {
    updateTable = ServiceOrderItemUpdateTable(this);
    serviceOrderId = _is.ColumnUuid('serviceOrderId', this);
    description = _is.ColumnString('description', this);
    isStockPart = _is.ColumnBool('isStockPart', this);
    supplyPartId = _is.ColumnUuid('supplyPartId', this);
    servicePrice = _is.ColumnDouble('servicePrice', this);
  }

  late final ServiceOrderItemUpdateTable updateTable;

  late final _is.ColumnUuid serviceOrderId;

  _inn42g74.ServiceOrderTable? _serviceOrder;

  late final _is.ColumnString description;

  late final _is.ColumnBool isStockPart;

  late final _is.ColumnUuid supplyPartId;

  _icdicocn.SupplyStockTable? _supplyPart;

  late final _is.ColumnDouble servicePrice;

  _inn42g74.ServiceOrderTable get serviceOrder {
    if (_serviceOrder != null) return _serviceOrder!;
    _serviceOrder = _is.createRelationTable(
      relationFieldName: 'serviceOrder',
      field: ServiceOrderItem.t.serviceOrderId,
      foreignField: _inn42g74.ServiceOrder.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _inn42g74.ServiceOrderTable(tableRelation: foreignTableRelation),
    );
    return _serviceOrder!;
  }

  _icdicocn.SupplyStockTable get supplyPart {
    if (_supplyPart != null) return _supplyPart!;
    _supplyPart = _is.createRelationTable(
      relationFieldName: 'supplyPart',
      field: ServiceOrderItem.t.supplyPartId,
      foreignField: _icdicocn.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _icdicocn.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _supplyPart!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    serviceOrderId,
    description,
    isStockPart,
    supplyPartId,
    servicePrice,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'serviceOrder') {
      return serviceOrder;
    }
    if (relationField == 'supplyPart') {
      return supplyPart;
    }
    return null;
  }
}

class ServiceOrderItemInclude extends _is.IncludeObject {
  ServiceOrderItemInclude._({
    _inn42g74.ServiceOrderInclude? serviceOrder,
    _icdicocn.SupplyStockInclude? supplyPart,
  }) {
    _serviceOrder = serviceOrder;
    _supplyPart = supplyPart;
  }

  _inn42g74.ServiceOrderInclude? _serviceOrder;

  _icdicocn.SupplyStockInclude? _supplyPart;

  @override
  Map<String, _is.Include?> get includes => {
    'serviceOrder': _serviceOrder,
    'supplyPart': _supplyPart,
  };

  @override
  _is.Table<_is.UuidValue> get table => ServiceOrderItem.t;
}

class ServiceOrderItemIncludeList extends _is.IncludeList {
  ServiceOrderItemIncludeList._({
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceOrderItem.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => ServiceOrderItem.t;
}

class ServiceOrderItemRepository {
  const ServiceOrderItemRepository._();

  final attachRow = const ServiceOrderItemAttachRowRepository._();

  final detachRow = const ServiceOrderItemDetachRowRepository._();

  /// Returns a list of [ServiceOrderItem]s matching the given query parameters.
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
  Future<List<ServiceOrderItem>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _is.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ServiceOrderItem] matching the given query parameters.
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
  Future<ServiceOrderItem?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? offset,
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _is.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ServiceOrderItem] by its [id] or null if no such row exists.
  Future<ServiceOrderItem?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ServiceOrderItem>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ServiceOrderItem]s in the list and returns the inserted rows.
  ///
  /// The returned [ServiceOrderItem]s will have their `id` fields set.
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
  Future<List<ServiceOrderItem>> insert(
    _is.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ServiceOrderItem>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ServiceOrderItem] and returns the inserted row.
  ///
  /// The returned [ServiceOrderItem] will have its `id` field set.
  Future<ServiceOrderItem> insertRow(
    _is.DatabaseSession session,
    ServiceOrderItem row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ServiceOrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [ServiceOrderItem]s in the list and returns the resulting rows.
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
  /// The returned [ServiceOrderItem]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrderItem>> upsert(
    _is.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    required _is.ColumnSelections<ServiceOrderItemTable> conflictColumns,
    _is.ColumnSelections<ServiceOrderItemTable>? updateColumns,
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ServiceOrderItem>(
      rows,
      conflictColumns: conflictColumns(ServiceOrderItem.t),
      updateColumns: updateColumns?.call(ServiceOrderItem.t),
      updateWhere: updateWhere?.call(ServiceOrderItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ServiceOrderItem] and returns the resulting row.
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
  /// The returned [ServiceOrderItem] will have its `id` field set.
  Future<ServiceOrderItem?> upsertRow(
    _is.DatabaseSession session,
    ServiceOrderItem row, {
    required _is.ColumnSelections<ServiceOrderItemTable> conflictColumns,
    _is.ColumnSelections<ServiceOrderItemTable>? updateColumns,
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ServiceOrderItem>(
      row,
      conflictColumns: conflictColumns(ServiceOrderItem.t),
      updateColumns: updateColumns?.call(ServiceOrderItem.t),
      updateWhere: updateWhere?.call(ServiceOrderItem.t),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrderItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrderItem>> update(
    _is.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _is.ColumnSelections<ServiceOrderItemTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ServiceOrderItem>(
      rows,
      columns: columns?.call(ServiceOrderItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ServiceOrderItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ServiceOrderItem> updateRow(
    _is.DatabaseSession session,
    ServiceOrderItem row, {
    _is.ColumnSelections<ServiceOrderItemTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ServiceOrderItem>(
      row,
      columns: columns?.call(ServiceOrderItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ServiceOrderItem] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ServiceOrderItem?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ServiceOrderItemUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ServiceOrderItem>(
      id,
      columnValues: columnValues(ServiceOrderItem.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrderItem]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrderItem>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ServiceOrderItemUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<ServiceOrderItemTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ServiceOrderItem>(
      columnValues: columnValues(ServiceOrderItem.t.updateTable),
      where: where(ServiceOrderItem.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ServiceOrderItem]s in the list and returns the deleted rows.
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
  Future<List<ServiceOrderItem>> delete(
    _is.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ServiceOrderItem>(
      rows,
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ServiceOrderItem].
  Future<ServiceOrderItem> deleteRow(
    _is.DatabaseSession session,
    ServiceOrderItem row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ServiceOrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ServiceOrderItem>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ServiceOrderItemTable> where,
    _is.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _is.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ServiceOrderItem>(
      where: where(ServiceOrderItem.t),
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ServiceOrderItem] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ServiceOrderItemTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ServiceOrderItem>(
      where: where(ServiceOrderItem.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ServiceOrderItemAttachRowRepository {
  const ServiceOrderItemAttachRowRepository._();

  /// Creates a relation between the given [ServiceOrderItem] and [ServiceOrder]
  /// by setting the [ServiceOrderItem]'s foreign key `serviceOrderId` to refer to the [ServiceOrder].
  Future<void> serviceOrder(
    _is.DatabaseSession session,
    ServiceOrderItem serviceOrderItem,
    _inn42g74.ServiceOrder serviceOrder, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrderItem.id == null) {
      throw ArgumentError.notNull('serviceOrderItem.id');
    }
    if (serviceOrder.id == null) {
      throw ArgumentError.notNull('serviceOrder.id');
    }

    var $serviceOrderItem = serviceOrderItem.copyWith(
      serviceOrderId: serviceOrder.id,
    );
    await session.db.updateRow<ServiceOrderItem>(
      $serviceOrderItem,
      columns: [ServiceOrderItem.t.serviceOrderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ServiceOrderItem] and [SupplyStock]
  /// by setting the [ServiceOrderItem]'s foreign key `supplyPartId` to refer to the [SupplyStock].
  Future<void> supplyPart(
    _is.DatabaseSession session,
    ServiceOrderItem serviceOrderItem,
    _icdicocn.SupplyStock supplyPart, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrderItem.id == null) {
      throw ArgumentError.notNull('serviceOrderItem.id');
    }
    if (supplyPart.id == null) {
      throw ArgumentError.notNull('supplyPart.id');
    }

    var $serviceOrderItem = serviceOrderItem.copyWith(
      supplyPartId: supplyPart.id,
    );
    await session.db.updateRow<ServiceOrderItem>(
      $serviceOrderItem,
      columns: [ServiceOrderItem.t.supplyPartId],
      transaction: transaction,
    );
  }
}

class ServiceOrderItemDetachRowRepository {
  const ServiceOrderItemDetachRowRepository._();

  /// Detaches the relation between this [ServiceOrderItem] and the [ServiceOrder] set in `serviceOrder`
  /// by setting the [ServiceOrderItem]'s foreign key `serviceOrderId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> serviceOrder(
    _is.DatabaseSession session,
    ServiceOrderItem serviceOrderItem, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrderItem.id == null) {
      throw ArgumentError.notNull('serviceOrderItem.id');
    }

    var $serviceOrderItem = serviceOrderItem.copyWith(serviceOrderId: null);
    await session.db.updateRow<ServiceOrderItem>(
      $serviceOrderItem,
      columns: [ServiceOrderItem.t.serviceOrderId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ServiceOrderItem] and the [SupplyStock] set in `supplyPart`
  /// by setting the [ServiceOrderItem]'s foreign key `supplyPartId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> supplyPart(
    _is.DatabaseSession session,
    ServiceOrderItem serviceOrderItem, {
    _is.Transaction? transaction,
  }) async {
    if (serviceOrderItem.id == null) {
      throw ArgumentError.notNull('serviceOrderItem.id');
    }

    var $serviceOrderItem = serviceOrderItem.copyWith(supplyPartId: null);
    await session.db.updateRow<ServiceOrderItem>(
      $serviceOrderItem,
      columns: [ServiceOrderItem.t.supplyPartId],
      transaction: transaction,
    );
  }
}
