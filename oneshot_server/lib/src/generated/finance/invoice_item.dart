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
import '../finance/invoice.dart' as _i3d856q3;

abstract class InvoiceItem
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  InvoiceItem._({
    _is.UuidValue? id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.invoiceId,
    this.invoice,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory InvoiceItem({
    _is.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      description: jsonSerialization['description'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i3d856q3.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  static final t = InvoiceItemTable();

  static const db = InvoiceItemRepository._();

  @override
  _is.UuidValue id;

  String description;

  double quantity;

  double unitPrice;

  double totalPrice;

  _is.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  InvoiceItem copyWith({
    _is.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
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

  static InvoiceItemInclude include({_i3d856q3.InvoiceInclude? invoice}) {
    return InvoiceItemInclude._(invoice: invoice);
  }

  static InvoiceItemIncludeList includeList({
    _is.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    InvoiceItemInclude? include,
  }) {
    return InvoiceItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
    _is.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
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
  @_is.useResult
  @override
  InvoiceItem copyWith({
    _is.UuidValue? id,
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
      invoiceId: invoiceId is _is.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
    );
  }
}

class InvoiceItemUpdateTable extends _is.UpdateTable<InvoiceItemTable> {
  InvoiceItemUpdateTable(super.table);

  _is.ColumnValue<String, String> description(String value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<double, double> quantity(double value) =>
      _is.ColumnValue(table.quantity, value);

  _is.ColumnValue<double, double> unitPrice(double value) =>
      _is.ColumnValue(table.unitPrice, value);

  _is.ColumnValue<double, double> totalPrice(double value) =>
      _is.ColumnValue(table.totalPrice, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.invoiceId, value);
}

class InvoiceItemTable extends _is.Table<_is.UuidValue> {
  InvoiceItemTable({super.tableRelation}) : super(tableName: 'invoice_items') {
    updateTable = InvoiceItemUpdateTable(this);
    description = _is.ColumnString('description', this);
    quantity = _is.ColumnDouble('quantity', this);
    unitPrice = _is.ColumnDouble('unitPrice', this);
    totalPrice = _is.ColumnDouble('totalPrice', this);
    invoiceId = _is.ColumnUuid('invoiceId', this);
  }

  late final InvoiceItemUpdateTable updateTable;

  late final _is.ColumnString description;

  late final _is.ColumnDouble quantity;

  late final _is.ColumnDouble unitPrice;

  late final _is.ColumnDouble totalPrice;

  late final _is.ColumnUuid invoiceId;

  _i3d856q3.InvoiceTable? _invoice;

  _i3d856q3.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _is.createRelationTable(
      relationFieldName: 'invoice',
      field: InvoiceItem.t.invoiceId,
      foreignField: _i3d856q3.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3d856q3.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    description,
    quantity,
    unitPrice,
    totalPrice,
    invoiceId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class InvoiceItemInclude extends _is.IncludeObject {
  InvoiceItemInclude._({_i3d856q3.InvoiceInclude? invoice}) {
    _invoice = invoice;
  }

  _i3d856q3.InvoiceInclude? _invoice;

  @override
  Map<String, _is.Include?> get includes => {'invoice': _invoice};

  @override
  _is.Table<_is.UuidValue> get table => InvoiceItem.t;
}

class InvoiceItemIncludeList extends _is.IncludeList {
  InvoiceItemIncludeList._({
    _is.WhereExpressionBuilder<InvoiceItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InvoiceItem.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => InvoiceItem.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _is.Transaction? transaction,
    InvoiceItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? offset,
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _is.Transaction? transaction,
    InvoiceItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [InvoiceItem] by its [id] or null if no such row exists.
  Future<InvoiceItem?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    InvoiceItemInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<InvoiceItem>> insert(
    _is.DatabaseSession session,
    List<InvoiceItem> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<InvoiceItem>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [InvoiceItem] and returns the inserted row.
  ///
  /// The returned [InvoiceItem] will have its `id` field set.
  Future<InvoiceItem> insertRow(
    _is.DatabaseSession session,
    InvoiceItem row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<InvoiceItem>(row, transaction: transaction);
  }

  /// Upserts all [InvoiceItem]s in the list and returns the resulting rows.
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
  /// The returned [InvoiceItem]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<InvoiceItem>> upsert(
    _is.DatabaseSession session,
    List<InvoiceItem> rows, {
    required _is.ColumnSelections<InvoiceItemTable> conflictColumns,
    _is.ColumnSelections<InvoiceItemTable>? updateColumns,
    _is.WhereExpressionBuilder<InvoiceItemTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<InvoiceItem>(
      rows,
      conflictColumns: conflictColumns(InvoiceItem.t),
      updateColumns: updateColumns?.call(InvoiceItem.t),
      updateWhere: updateWhere?.call(InvoiceItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [InvoiceItem] and returns the resulting row.
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
  /// The returned [InvoiceItem] will have its `id` field set.
  Future<InvoiceItem?> upsertRow(
    _is.DatabaseSession session,
    InvoiceItem row, {
    required _is.ColumnSelections<InvoiceItemTable> conflictColumns,
    _is.ColumnSelections<InvoiceItemTable>? updateColumns,
    _is.WhereExpressionBuilder<InvoiceItemTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<InvoiceItem>(
      row,
      conflictColumns: conflictColumns(InvoiceItem.t),
      updateColumns: updateColumns?.call(InvoiceItem.t),
      updateWhere: updateWhere?.call(InvoiceItem.t),
      transaction: transaction,
    );
  }

  /// Updates all [InvoiceItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<InvoiceItem>> update(
    _is.DatabaseSession session,
    List<InvoiceItem> rows, {
    _is.ColumnSelections<InvoiceItemTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<InvoiceItem>(
      rows,
      columns: columns?.call(InvoiceItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [InvoiceItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<InvoiceItem> updateRow(
    _is.DatabaseSession session,
    InvoiceItem row, {
    _is.ColumnSelections<InvoiceItemTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<InvoiceItemUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<InvoiceItem>(
      id,
      columnValues: columnValues(InvoiceItem.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [InvoiceItem]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<InvoiceItem>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<InvoiceItemUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<InvoiceItemTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<InvoiceItem>(
      columnValues: columnValues(InvoiceItem.t.updateTable),
      where: where(InvoiceItem.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [InvoiceItem]s in the list and returns the deleted rows.
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
  Future<List<InvoiceItem>> delete(
    _is.DatabaseSession session,
    List<InvoiceItem> rows, {
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<InvoiceItem>(
      rows,
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [InvoiceItem].
  Future<InvoiceItem> deleteRow(
    _is.DatabaseSession session,
    InvoiceItem row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<InvoiceItem>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<InvoiceItem>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<InvoiceItemTable> where,
    _is.OrderByBuilder<InvoiceItemTable>? orderBy,
    _is.OrderByListBuilder<InvoiceItemTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<InvoiceItem>(
      where: where(InvoiceItem.t),
      orderBy: orderBy?.call(InvoiceItem.t),
      orderByList: orderByList?.call(InvoiceItem.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceItemTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<InvoiceItem>(
      where: where?.call(InvoiceItem.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [InvoiceItem] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<InvoiceItemTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    InvoiceItem invoiceItem,
    _i3d856q3.Invoice invoice, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    InvoiceItem invoiceItem, {
    _is.Transaction? transaction,
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
