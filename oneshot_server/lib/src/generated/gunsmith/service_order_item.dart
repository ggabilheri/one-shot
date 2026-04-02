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
import '../gunsmith/service_order.dart' as _i2;
import '../common/supply_stock.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class ServiceOrderItem
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  ServiceOrderItem._({
    _i1.UuidValue? id,
    this.serviceOrderId,
    this.serviceOrderId,
    this.serviceOrder,
    required this.description,
    required this.isStockPart,
    this.supplyPartId,
    this.supplyPartId,
    this.supplyPart,
    required this.servicePrice,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory ServiceOrderItem({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
    required double servicePrice,
  }) = _ServiceOrderItemImpl;

  factory ServiceOrderItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return ServiceOrderItem(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      serviceOrderId: jsonSerialization['serviceOrderId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['serviceOrderId'],
            ),
      serviceOrder: jsonSerialization['serviceOrder'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.ServiceOrder>(
              jsonSerialization['serviceOrder'],
            ),
      description: jsonSerialization['description'] as String,
      isStockPart: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['isStockPart'],
      ),
      supplyPartId: jsonSerialization['supplyPartId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['supplyPartId'],
            ),
      supplyPart: jsonSerialization['supplyPart'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.SupplyStock>(
              jsonSerialization['supplyPart'],
            ),
      servicePrice: (jsonSerialization['servicePrice'] as num).toDouble(),
    );
  }

  static final t = ServiceOrderItemTable();

  static const db = ServiceOrderItemRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? serviceOrderId;

  _i1.UuidValue? serviceOrderId;

  _i2.ServiceOrder? serviceOrder;

  String description;

  bool isStockPart;

  _i1.UuidValue? supplyPartId;

  _i1.UuidValue? supplyPartId;

  _i3.SupplyStock? supplyPart;

  double servicePrice;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [ServiceOrderItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ServiceOrderItem copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    String? description,
    bool? isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
    double? servicePrice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ServiceOrderItem',
      'id': id.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrder != null) 'serviceOrder': serviceOrder?.toJson(),
      'description': description,
      'isStockPart': isStockPart,
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
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
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrder != null)
        'serviceOrder': serviceOrder?.toJsonForProtocol(),
      'description': description,
      'isStockPart': isStockPart,
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPart != null) 'supplyPart': supplyPart?.toJsonForProtocol(),
      'servicePrice': servicePrice,
    };
  }

  static ServiceOrderItemInclude include({
    _i2.ServiceOrderInclude? serviceOrder,
    _i3.SupplyStockInclude? supplyPart,
  }) {
    return ServiceOrderItemInclude._(
      serviceOrder: serviceOrder,
      supplyPart: supplyPart,
    );
  }

  static ServiceOrderItemIncludeList includeList({
    _i1.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    ServiceOrderItemInclude? include,
  }) {
    return ServiceOrderItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ServiceOrderItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderItemImpl extends ServiceOrderItem {
  _ServiceOrderItemImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
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
  @_i1.useResult
  @override
  ServiceOrderItem copyWith({
    _i1.UuidValue? id,
    Object? serviceOrderId = _Undefined,
    Object? serviceOrderId = _Undefined,
    Object? serviceOrder = _Undefined,
    String? description,
    bool? isStockPart,
    Object? supplyPartId = _Undefined,
    Object? supplyPartId = _Undefined,
    Object? supplyPart = _Undefined,
    double? servicePrice,
  }) {
    return ServiceOrderItem(
      id: id ?? this.id,
      serviceOrderId: serviceOrderId is _i1.UuidValue?
          ? serviceOrderId
          : this.serviceOrderId,
      serviceOrder: serviceOrder is _i2.ServiceOrder?
          ? serviceOrder
          : this.serviceOrder?.copyWith(),
      description: description ?? this.description,
      isStockPart: isStockPart ?? this.isStockPart,
      supplyPartId: supplyPartId is _i1.UuidValue?
          ? supplyPartId
          : this.supplyPartId,
      supplyPart: supplyPart is _i3.SupplyStock?
          ? supplyPart
          : this.supplyPart?.copyWith(),
      servicePrice: servicePrice ?? this.servicePrice,
    );
  }
}

class ServiceOrderItemUpdateTable
    extends _i1.UpdateTable<ServiceOrderItemTable> {
  ServiceOrderItemUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> serviceOrderId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.serviceOrderId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> serviceOrderId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.serviceOrderId,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<bool, bool> isStockPart(bool value) => _i1.ColumnValue(
    table.isStockPart,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> supplyPartId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.supplyPartId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> supplyPartId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.supplyPartId,
    value,
  );

  _i1.ColumnValue<double, double> servicePrice(double value) => _i1.ColumnValue(
    table.servicePrice,
    value,
  );
}

class ServiceOrderItemTable extends _i1.Table<_i1.UuidValue> {
  ServiceOrderItemTable({super.tableRelation})
    : super(tableName: 'service_order_items') {
    updateTable = ServiceOrderItemUpdateTable(this);
    serviceOrderId = _i1.ColumnUuid(
      'serviceOrderId',
      this,
    );
    serviceOrderId = _i1.ColumnUuid(
      'serviceOrderId',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    isStockPart = _i1.ColumnBool(
      'isStockPart',
      this,
    );
    supplyPartId = _i1.ColumnUuid(
      'supplyPartId',
      this,
    );
    supplyPartId = _i1.ColumnUuid(
      'supplyPartId',
      this,
    );
    servicePrice = _i1.ColumnDouble(
      'servicePrice',
      this,
    );
  }

  late final ServiceOrderItemUpdateTable updateTable;

  late final _i1.ColumnUuid serviceOrderId;

  late final _i1.ColumnUuid serviceOrderId;

  _i2.ServiceOrderTable? _serviceOrder;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool isStockPart;

  late final _i1.ColumnUuid supplyPartId;

  late final _i1.ColumnUuid supplyPartId;

  _i3.SupplyStockTable? _supplyPart;

  late final _i1.ColumnDouble servicePrice;

  _i2.ServiceOrderTable get serviceOrder {
    if (_serviceOrder != null) return _serviceOrder!;
    _serviceOrder = _i1.createRelationTable(
      relationFieldName: 'serviceOrder',
      field: ServiceOrderItem.t.serviceOrderId,
      foreignField: _i2.ServiceOrder.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ServiceOrderTable(tableRelation: foreignTableRelation),
    );
    return _serviceOrder!;
  }

  _i3.SupplyStockTable get supplyPart {
    if (_supplyPart != null) return _supplyPart!;
    _supplyPart = _i1.createRelationTable(
      relationFieldName: 'supplyPart',
      field: ServiceOrderItem.t.supplyPartId,
      foreignField: _i3.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _supplyPart!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    serviceOrderId,
    serviceOrderId,
    description,
    isStockPart,
    supplyPartId,
    supplyPartId,
    servicePrice,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'serviceOrder') {
      return serviceOrder;
    }
    if (relationField == 'supplyPart') {
      return supplyPart;
    }
    return null;
  }
}

class ServiceOrderItemInclude extends _i1.IncludeObject {
  ServiceOrderItemInclude._({
    _i2.ServiceOrderInclude? serviceOrder,
    _i3.SupplyStockInclude? supplyPart,
  }) {
    _serviceOrder = serviceOrder;
    _supplyPart = supplyPart;
  }

  _i2.ServiceOrderInclude? _serviceOrder;

  _i3.SupplyStockInclude? _supplyPart;

  @override
  Map<String, _i1.Include?> get includes => {
    'serviceOrder': _serviceOrder,
    'supplyPart': _supplyPart,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => ServiceOrderItem.t;
}

class ServiceOrderItemIncludeList extends _i1.IncludeList {
  ServiceOrderItemIncludeList._({
    _i1.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceOrderItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => ServiceOrderItem.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ServiceOrderItem] by its [id] or null if no such row exists.
  Future<ServiceOrderItem?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ServiceOrderItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<ServiceOrderItem>> insert(
    _i1.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ServiceOrderItem>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ServiceOrderItem] and returns the inserted row.
  ///
  /// The returned [ServiceOrderItem] will have its `id` field set.
  Future<ServiceOrderItem> insertRow(
    _i1.DatabaseSession session,
    ServiceOrderItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ServiceOrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrderItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ServiceOrderItem>> update(
    _i1.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _i1.ColumnSelections<ServiceOrderItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ServiceOrderItem>(
      rows,
      columns: columns?.call(ServiceOrderItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ServiceOrderItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ServiceOrderItem> updateRow(
    _i1.DatabaseSession session,
    ServiceOrderItem row, {
    _i1.ColumnSelections<ServiceOrderItemTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ServiceOrderItemUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ServiceOrderItem>(
      id,
      columnValues: columnValues(ServiceOrderItem.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrderItem]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ServiceOrderItem>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ServiceOrderItemUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<ServiceOrderItemTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderItemTable>? orderBy,
    _i1.OrderByListBuilder<ServiceOrderItemTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ServiceOrderItem>(
      columnValues: columnValues(ServiceOrderItem.t.updateTable),
      where: where(ServiceOrderItem.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrderItem.t),
      orderByList: orderByList?.call(ServiceOrderItem.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ServiceOrderItem]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ServiceOrderItem>> delete(
    _i1.DatabaseSession session,
    List<ServiceOrderItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServiceOrderItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ServiceOrderItem].
  Future<ServiceOrderItem> deleteRow(
    _i1.DatabaseSession session,
    ServiceOrderItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ServiceOrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ServiceOrderItem>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ServiceOrderItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ServiceOrderItem>(
      where: where(ServiceOrderItem.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServiceOrderItem>(
      where: where?.call(ServiceOrderItem.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ServiceOrderItem] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ServiceOrderItemTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    ServiceOrderItem serviceOrderItem,
    _i2.ServiceOrder serviceOrder, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ServiceOrderItem serviceOrderItem,
    _i3.SupplyStock supplyPart, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ServiceOrderItem serviceOrderItem, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ServiceOrderItem serviceOrderItem, {
    _i1.Transaction? transaction,
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
