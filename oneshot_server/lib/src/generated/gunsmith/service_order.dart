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
import '../gunsmith/gunsmith_client.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class ServiceOrder
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  ServiceOrder._({
    this.id,
    this.clientId,
    required this.clientId,
    this.client,
    this.firearmId,
    required this.firearmId,
    this.firearm,
    required this.entryDate,
    this.estimatedDeliveryDate,
    required this.totalPrice,
    this.discount,
    required this.finalPrice,
    this.paymentMethod,
    this.notes,
  });

  factory ServiceOrder({
    _i1.UuidValue? id,
    _i1.UuidValue? clientId,
    required _i1.UuidValue clientId,
    _i2.GunsmithClient? client,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      clientId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['clientId'],
      ),
      client: jsonSerialization['client'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.GunsmithClient>(
              jsonSerialization['client'],
            ),
      firearmId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['firearmId'],
      ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      entryDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['entryDate'],
      ),
      estimatedDeliveryDate: jsonSerialization['estimatedDeliveryDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
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
  _i1.UuidValue? id;

  _i1.UuidValue? clientId;

  _i1.UuidValue clientId;

  _i2.GunsmithClient? client;

  _i1.UuidValue? firearmId;

  _i1.UuidValue firearmId;

  _i3.Firearm? firearm;

  DateTime entryDate;

  DateTime? estimatedDeliveryDate;

  double totalPrice;

  double? discount;

  double finalPrice;

  String? paymentMethod;

  String? notes;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ServiceOrder]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ServiceOrder copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? clientId,
    _i1.UuidValue? clientId,
    _i2.GunsmithClient? client,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
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
      if (id != null) 'id': id?.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      'clientId': clientId.toJson(),
      if (client != null) 'client': client?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      'firearmId': firearmId.toJson(),
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
      if (id != null) 'id': id?.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      'clientId': clientId.toJson(),
      if (client != null) 'client': client?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      'firearmId': firearmId.toJson(),
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
    _i2.GunsmithClientInclude? client,
    _i3.FirearmInclude? firearm,
  }) {
    return ServiceOrderInclude._(
      client: client,
      firearm: firearm,
    );
  }

  static ServiceOrderIncludeList includeList({
    _i1.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderTable>? orderByList,
    ServiceOrderInclude? include,
  }) {
    return ServiceOrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrder.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ServiceOrder.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderImpl extends ServiceOrder {
  _ServiceOrderImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? clientId,
    required _i1.UuidValue clientId,
    _i2.GunsmithClient? client,
    _i1.UuidValue? firearmId,
    required _i1.UuidValue firearmId,
    _i3.Firearm? firearm,
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
  @_i1.useResult
  @override
  ServiceOrder copyWith({
    Object? id = _Undefined,
    Object? clientId = _Undefined,
    _i1.UuidValue? clientId,
    Object? client = _Undefined,
    Object? firearmId = _Undefined,
    _i1.UuidValue? firearmId,
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
      id: id is _i1.UuidValue? ? id : this.id,
      clientId: clientId ?? this.clientId,
      client: client is _i2.GunsmithClient? ? client : this.client?.copyWith(),
      firearmId: firearmId ?? this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
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

class ServiceOrderUpdateTable extends _i1.UpdateTable<ServiceOrderTable> {
  ServiceOrderUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> clientId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.clientId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> clientId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.clientId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> entryDate(DateTime value) =>
      _i1.ColumnValue(
        table.entryDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> estimatedDeliveryDate(DateTime? value) =>
      _i1.ColumnValue(
        table.estimatedDeliveryDate,
        value,
      );

  _i1.ColumnValue<double, double> totalPrice(double value) => _i1.ColumnValue(
    table.totalPrice,
    value,
  );

  _i1.ColumnValue<double, double> discount(double? value) => _i1.ColumnValue(
    table.discount,
    value,
  );

  _i1.ColumnValue<double, double> finalPrice(double value) => _i1.ColumnValue(
    table.finalPrice,
    value,
  );

  _i1.ColumnValue<String, String> paymentMethod(String? value) =>
      _i1.ColumnValue(
        table.paymentMethod,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );
}

class ServiceOrderTable extends _i1.Table<_i1.UuidValue?> {
  ServiceOrderTable({super.tableRelation})
    : super(tableName: 'service_orders') {
    updateTable = ServiceOrderUpdateTable(this);
    clientId = _i1.ColumnUuid(
      'clientId',
      this,
    );
    clientId = _i1.ColumnUuid(
      'clientId',
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
    entryDate = _i1.ColumnDateTime(
      'entryDate',
      this,
    );
    estimatedDeliveryDate = _i1.ColumnDateTime(
      'estimatedDeliveryDate',
      this,
    );
    totalPrice = _i1.ColumnDouble(
      'totalPrice',
      this,
    );
    discount = _i1.ColumnDouble(
      'discount',
      this,
    );
    finalPrice = _i1.ColumnDouble(
      'finalPrice',
      this,
    );
    paymentMethod = _i1.ColumnString(
      'paymentMethod',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
  }

  late final ServiceOrderUpdateTable updateTable;

  late final _i1.ColumnUuid clientId;

  late final _i1.ColumnUuid clientId;

  _i2.GunsmithClientTable? _client;

  late final _i1.ColumnUuid firearmId;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnDateTime entryDate;

  late final _i1.ColumnDateTime estimatedDeliveryDate;

  late final _i1.ColumnDouble totalPrice;

  late final _i1.ColumnDouble discount;

  late final _i1.ColumnDouble finalPrice;

  late final _i1.ColumnString paymentMethod;

  late final _i1.ColumnString notes;

  _i2.GunsmithClientTable get client {
    if (_client != null) return _client!;
    _client = _i1.createRelationTable(
      relationFieldName: 'client',
      field: ServiceOrder.t.clientId,
      foreignField: _i2.GunsmithClient.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.GunsmithClientTable(tableRelation: foreignTableRelation),
    );
    return _client!;
  }

  _i3.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: ServiceOrder.t.firearmId,
      foreignField: _i3.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    clientId,
    clientId,
    firearmId,
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'client') {
      return client;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class ServiceOrderInclude extends _i1.IncludeObject {
  ServiceOrderInclude._({
    _i2.GunsmithClientInclude? client,
    _i3.FirearmInclude? firearm,
  }) {
    _client = client;
    _firearm = firearm;
  }

  _i2.GunsmithClientInclude? _client;

  _i3.FirearmInclude? _firearm;

  @override
  Map<String, _i1.Include?> get includes => {
    'client': _client,
    'firearm': _firearm,
  };

  @override
  _i1.Table<_i1.UuidValue?> get table => ServiceOrder.t;
}

class ServiceOrderIncludeList extends _i1.IncludeList {
  ServiceOrderIncludeList._({
    _i1.WhereExpressionBuilder<ServiceOrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceOrder.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => ServiceOrder.t;
}

class ServiceOrderRepository {
  const ServiceOrderRepository._();

  final attachRow = const ServiceOrderAttachRowRepository._();

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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceOrderInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceOrderTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceOrderInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ServiceOrder] by its [id] or null if no such row exists.
  Future<ServiceOrder?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ServiceOrderInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<ServiceOrder>> insert(
    _i1.DatabaseSession session,
    List<ServiceOrder> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ServiceOrder>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ServiceOrder] and returns the inserted row.
  ///
  /// The returned [ServiceOrder] will have its `id` field set.
  Future<ServiceOrder> insertRow(
    _i1.DatabaseSession session,
    ServiceOrder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ServiceOrder>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrder]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ServiceOrder>> update(
    _i1.DatabaseSession session,
    List<ServiceOrder> rows, {
    _i1.ColumnSelections<ServiceOrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ServiceOrder>(
      rows,
      columns: columns?.call(ServiceOrder.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ServiceOrder]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ServiceOrder> updateRow(
    _i1.DatabaseSession session,
    ServiceOrder row, {
    _i1.ColumnSelections<ServiceOrderTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ServiceOrderUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ServiceOrder>(
      id,
      columnValues: columnValues(ServiceOrder.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ServiceOrder]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ServiceOrder>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ServiceOrderUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ServiceOrderTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceOrderTable>? orderBy,
    _i1.OrderByListBuilder<ServiceOrderTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ServiceOrder>(
      columnValues: columnValues(ServiceOrder.t.updateTable),
      where: where(ServiceOrder.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceOrder.t),
      orderByList: orderByList?.call(ServiceOrder.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ServiceOrder]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ServiceOrder>> delete(
    _i1.DatabaseSession session,
    List<ServiceOrder> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServiceOrder>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ServiceOrder].
  Future<ServiceOrder> deleteRow(
    _i1.DatabaseSession session,
    ServiceOrder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ServiceOrder>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ServiceOrder>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ServiceOrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ServiceOrder>(
      where: where(ServiceOrder.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ServiceOrderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServiceOrder>(
      where: where?.call(ServiceOrder.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ServiceOrder] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ServiceOrderTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    ServiceOrder serviceOrder,
    _i2.GunsmithClient client, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ServiceOrder serviceOrder,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
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
