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
import '../finance/invoice.dart' as _i2;
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class InvoiceItem
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  InvoiceItem._({
    _i1.UuidValue? id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.invoiceId,
    this.invoice,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory InvoiceItem({
    _i1.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      description: jsonSerialization['description'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  static final t = InvoiceItemTable();

  static const db = InvoiceItemRepository._();

  @override
  _i1.UuidValue id;

  String description;

  double quantity;

  double unitPrice;

  double totalPrice;

  _i1.UuidValue? invoiceId;

  _i2.Invoice? invoice;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  InvoiceItem copyWith({
    _i1.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'InvoiceItem',
      'id': id.toJson(),
      'description': description,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'InvoiceItem',
      'id': id.toJson(),
      'description': description,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
    };
  }

  static InvoiceItemInclude include({_i2.InvoiceInclude? invoice}) {
    return InvoiceItemInclude._(invoice: invoice);
  }

  static InvoiceItemIncludeList includeList({
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    InvoiceItemInclude? include,
  }) {
    return InvoiceItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(InvoiceItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
    _i1.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  }) : super._(
         id: id,
         description: description,
         quantity: quantity,
         unitPrice: unitPrice,
         totalPrice: totalPrice,
         invoiceId: invoiceId,
         invoice: invoice,
       );

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  InvoiceItem copyWith({
    _i1.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    Object? invoiceId = _Undefined,
    Object? invoice = _Undefined,
  }) {
    return InvoiceItem(
      id: id ?? this.id,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      invoiceId: invoiceId is _i1.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i2.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}

class InvoiceItemUpdateTable extends _i1.UpdateTable<InvoiceItemTable> {
  InvoiceItemUpdateTable(super.table);

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<double, double> quantity(double value) => _i1.ColumnValue(
    table.quantity,
    value,
  );

  _i1.ColumnValue<double, double> unitPrice(double value) => _i1.ColumnValue(
    table.unitPrice,
    value,
  );

  _i1.ColumnValue<double, double> totalPrice(double value) => _i1.ColumnValue(
    table.totalPrice,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> invoiceId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.invoiceId,
    value,
  );
}

class InvoiceItemTable extends _i1.Table<_i1.UuidValue> {
  InvoiceItemTable({super.tableRelation}) : super(tableName: 'invoice_items') {
    updateTable = InvoiceItemUpdateTable(this);
    description = _i1.ColumnString(
      'description',
      this,
    );
    quantity = _i1.ColumnDouble(
      'quantity',
      this,
    );
    unitPrice = _i1.ColumnDouble(
      'unitPrice',
      this,
    );
    totalPrice = _i1.ColumnDouble(
      'totalPrice',
      this,
    );
    invoiceId = _i1.ColumnUuid(
      'invoiceId',
      this,
    );
  }

  late final InvoiceItemUpdateTable updateTable;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble quantity;

  late final _i1.ColumnDouble unitPrice;

  late final _i1.ColumnDouble totalPrice;

  late final _i1.ColumnUuid invoiceId;

  _i2.InvoiceTable? _invoice;

  _i2.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _i1.createRelationTable(
      relationFieldName: 'invoice',
      field: InvoiceItem.t.invoiceId,
      foreignField: _i2.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    description,
    quantity,
    unitPrice,
    totalPrice,
    invoiceId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class InvoiceItemInclude extends _i1.IncludeObject {
  InvoiceItemInclude._({_i2.InvoiceInclude? invoice}) {
    _invoice = invoice;
  }

  _i2.InvoiceInclude? _invoice;

  @override
  Map<String, _i1.Include?> get includes => {'invoice': _invoice};

  @override
  _i1.Table<_i1.UuidValue> get table => InvoiceItem.t;
}

class InvoiceItemIncludeList extends _i1.IncludeList {
  InvoiceItemIncludeList._({
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InvoiceItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => InvoiceItem.t;
}

class InvoiceItemRepository {
  const InvoiceItemRepository._();

  final attachRow = const InvoiceItemAttachRowRepository._();

  final detachRow = const InvoiceItemDetachRowRepository._();

  /// Returns a list of [InvoiceItem]s matching the given query parameters.
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
  Future<List<InvoiceItem>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [InvoiceItem] matching the given query parameters.
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
  Future<InvoiceItem?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [InvoiceItem] by its [id] or null if no such row exists.
  Future<InvoiceItem?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    InvoiceItemInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<InvoiceItem>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [InvoiceItem]s in the list and returns the inserted rows.
  ///
  /// The returned [InvoiceItem]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<InvoiceItem>> insert(
    _i1.DatabaseSession session,
    List<InvoiceItem> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<InvoiceItem>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [InvoiceItem] and returns the inserted row.
  ///
  /// The returned [InvoiceItem] will have its `id` field set.
  Future<InvoiceItem> insertRow(
    _i1.DatabaseSession session,
    InvoiceItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<InvoiceItem>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [InvoiceItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<InvoiceItem>> update(
    _i1.DatabaseSession session,
    List<InvoiceItem> rows, {
    _i1.ColumnSelections<InvoiceItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<InvoiceItem>(
      rows,
      columns: columns?.call(InvoiceItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [InvoiceItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<InvoiceItem> updateRow(
    _i1.DatabaseSession session,
    InvoiceItem row, {
    _i1.ColumnSelections<InvoiceItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<InvoiceItem>(
      row,
      columns: columns?.call(InvoiceItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [InvoiceItem] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<InvoiceItem?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<InvoiceItemUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<InvoiceItem>(
      id,
      columnValues: columnValues(InvoiceItem.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [InvoiceItem]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<InvoiceItem>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<InvoiceItemUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<InvoiceItemTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceItemTable>? orderBy,
    _i1.OrderByListBuilder<InvoiceItemTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<InvoiceItem>(
      columnValues: columnValues(InvoiceItem.t.updateTable),
      where: where(InvoiceItem.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [InvoiceItem]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<InvoiceItem>> delete(
    _i1.DatabaseSession session,
    List<InvoiceItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<InvoiceItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [InvoiceItem].
  Future<InvoiceItem> deleteRow(
    _i1.DatabaseSession session,
    InvoiceItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<InvoiceItem>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<InvoiceItem>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<InvoiceItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<InvoiceItem>(
      where: where(InvoiceItem.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [InvoiceItem] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<InvoiceItemTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<InvoiceItem>(
      where: where(InvoiceItem.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class InvoiceItemAttachRowRepository {
  const InvoiceItemAttachRowRepository._();

  /// Creates a relation between the given [InvoiceItem] and [Invoice]
  /// by setting the [InvoiceItem]'s foreign key `invoiceId` to refer to the [Invoice].
  Future<void> invoice(
    _i1.DatabaseSession session,
    InvoiceItem invoiceItem,
    _i2.Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoiceItem = invoiceItem.copyWith(invoiceId: invoice.id);
    await session.db.updateRow<InvoiceItem>(
      $invoiceItem,
      columns: [InvoiceItem.t.invoiceId],
      transaction: transaction,
    );
  }
}

class InvoiceItemDetachRowRepository {
  const InvoiceItemDetachRowRepository._();

  /// Detaches the relation between this [InvoiceItem] and the [Invoice] set in `invoice`
  /// by setting the [InvoiceItem]'s foreign key `invoiceId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> invoice(
    _i1.DatabaseSession session,
    InvoiceItem invoiceItem, {
    _i1.Transaction? transaction,
  }) async {
    if (invoiceItem.id == null) {
      throw ArgumentError.notNull('invoiceItem.id');
    }

    var $invoiceItem = invoiceItem.copyWith(invoiceId: null);
    await session.db.updateRow<InvoiceItem>(
      $invoiceItem,
      columns: [InvoiceItem.t.invoiceId],
      transaction: transaction,
    );
  }
}
