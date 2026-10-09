/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _is;

abstract class AsaasWebhookEvent
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  AsaasWebhookEvent._({
    _is.UuidValue? id,
    required this.eventId,
    required this.event,
    required this.payload,
    bool? processed,
    this.processedAt,
    this.error,
    DateTime? receivedAt,
  }) : id = id ?? const _is.Uuid().v4obj(),
       processed = processed ?? false,
       receivedAt = receivedAt ?? DateTime.now();

  factory AsaasWebhookEvent({
    _is.UuidValue? id,
    required String eventId,
    required String event,
    required String payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  }) = _AsaasWebhookEventImpl;

  factory AsaasWebhookEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return AsaasWebhookEvent(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      eventId: jsonSerialization['eventId'] as String,
      event: jsonSerialization['event'] as String,
      payload: jsonSerialization['payload'] as String,
      processed: jsonSerialization['processed'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['processed']),
      processedAt: jsonSerialization['processedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['processedAt'],
            ),
      error: jsonSerialization['error'] as String?,
      receivedAt: jsonSerialization['receivedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['receivedAt']),
    );
  }

  static final t = AsaasWebhookEventTable();

  static const db = AsaasWebhookEventRepository._();

  @override
  _is.UuidValue id;

  String eventId;

  String event;

  String payload;

  bool processed;

  DateTime? processedAt;

  String? error;

  DateTime receivedAt;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [AsaasWebhookEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  AsaasWebhookEvent copyWith({
    _is.UuidValue? id,
    String? eventId,
    String? event,
    String? payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AsaasWebhookEvent',
      'id': id.toJson(),
      'eventId': eventId,
      'event': event,
      'payload': payload,
      'processed': processed,
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
      if (error != null) 'error': error,
      'receivedAt': receivedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'AsaasWebhookEvent',
      'id': id.toJson(),
      'eventId': eventId,
      'event': event,
      'payload': payload,
      'processed': processed,
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
      if (error != null) 'error': error,
      'receivedAt': receivedAt.toJson(),
    };
  }

  static AsaasWebhookEventInclude include() {
    return AsaasWebhookEventInclude._();
  }

  static AsaasWebhookEventIncludeList includeList({
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    AsaasWebhookEventInclude? include,
  }) {
    return AsaasWebhookEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AsaasWebhookEventImpl extends AsaasWebhookEvent {
  _AsaasWebhookEventImpl({
    _is.UuidValue? id,
    required String eventId,
    required String event,
    required String payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  }) : super._(
         id: id,
         eventId: eventId,
         event: event,
         payload: payload,
         processed: processed,
         processedAt: processedAt,
         error: error,
         receivedAt: receivedAt,
       );

  /// Returns a shallow copy of this [AsaasWebhookEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  AsaasWebhookEvent copyWith({
    _is.UuidValue? id,
    String? eventId,
    String? event,
    String? payload,
    bool? processed,
    Object? processedAt = _Undefined,
    Object? error = _Undefined,
    DateTime? receivedAt,
  }) {
    return AsaasWebhookEvent(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      event: event ?? this.event,
      payload: payload ?? this.payload,
      processed: processed ?? this.processed,
      processedAt: processedAt is DateTime? ? processedAt : this.processedAt,
      error: error is String? ? error : this.error,
      receivedAt: receivedAt ?? this.receivedAt,
    );
  }
}

class AsaasWebhookEventUpdateTable
    extends _is.UpdateTable<AsaasWebhookEventTable> {
  AsaasWebhookEventUpdateTable(super.table);

  _is.ColumnValue<String, String> eventId(String value) =>
      _is.ColumnValue(table.eventId, value);

  _is.ColumnValue<String, String> event(String value) =>
      _is.ColumnValue(table.event, value);

  _is.ColumnValue<String, String> payload(String value) =>
      _is.ColumnValue(table.payload, value);

  _is.ColumnValue<bool, bool> processed(bool value) =>
      _is.ColumnValue(table.processed, value);

  _is.ColumnValue<DateTime, DateTime> processedAt(DateTime? value) =>
      _is.ColumnValue(table.processedAt, value);

  _is.ColumnValue<String, String> error(String? value) =>
      _is.ColumnValue(table.error, value);

  _is.ColumnValue<DateTime, DateTime> receivedAt(DateTime value) =>
      _is.ColumnValue(table.receivedAt, value);
}

class AsaasWebhookEventTable extends _is.Table<_is.UuidValue> {
  AsaasWebhookEventTable({super.tableRelation})
    : super(tableName: 'asaas_webhook_events') {
    updateTable = AsaasWebhookEventUpdateTable(this);
    eventId = _is.ColumnString('eventId', this);
    event = _is.ColumnString('event', this);
    payload = _is.ColumnString('payload', this);
    processed = _is.ColumnBool('processed', this, hasDefault: true);
    processedAt = _is.ColumnDateTime('processedAt', this);
    error = _is.ColumnString('error', this);
    receivedAt = _is.ColumnDateTime('receivedAt', this, hasDefault: true);
  }

  late final AsaasWebhookEventUpdateTable updateTable;

  late final _is.ColumnString eventId;

  late final _is.ColumnString event;

  late final _is.ColumnString payload;

  late final _is.ColumnBool processed;

  late final _is.ColumnDateTime processedAt;

  late final _is.ColumnString error;

  late final _is.ColumnDateTime receivedAt;

  @override
  List<_is.Column> get columns => [
    id,
    eventId,
    event,
    payload,
    processed,
    processedAt,
    error,
    receivedAt,
  ];
}

class AsaasWebhookEventInclude extends _is.IncludeObject {
  AsaasWebhookEventInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue> get table => AsaasWebhookEvent.t;
}

class AsaasWebhookEventIncludeList extends _is.IncludeList {
  AsaasWebhookEventIncludeList._({
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AsaasWebhookEvent.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => AsaasWebhookEvent.t;
}

class AsaasWebhookEventRepository {
  const AsaasWebhookEventRepository._();

  /// Returns a list of [AsaasWebhookEvent]s matching the given query parameters.
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
  Future<List<AsaasWebhookEvent>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [AsaasWebhookEvent] matching the given query parameters.
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
  Future<AsaasWebhookEvent?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? offset,
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [AsaasWebhookEvent] by its [id] or null if no such row exists.
  Future<AsaasWebhookEvent?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<AsaasWebhookEvent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [AsaasWebhookEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [AsaasWebhookEvent]s will have their `id` fields set.
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
  Future<List<AsaasWebhookEvent>> insert(
    _is.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<AsaasWebhookEvent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [AsaasWebhookEvent] and returns the inserted row.
  ///
  /// The returned [AsaasWebhookEvent] will have its `id` field set.
  Future<AsaasWebhookEvent> insertRow(
    _is.DatabaseSession session,
    AsaasWebhookEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<AsaasWebhookEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [AsaasWebhookEvent]s in the list and returns the resulting rows.
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
  /// The returned [AsaasWebhookEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AsaasWebhookEvent>> upsert(
    _is.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    required _is.ColumnSelections<AsaasWebhookEventTable> conflictColumns,
    _is.ColumnSelections<AsaasWebhookEventTable>? updateColumns,
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<AsaasWebhookEvent>(
      rows,
      conflictColumns: conflictColumns(AsaasWebhookEvent.t),
      updateColumns: updateColumns?.call(AsaasWebhookEvent.t),
      updateWhere: updateWhere?.call(AsaasWebhookEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [AsaasWebhookEvent] and returns the resulting row.
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
  /// The returned [AsaasWebhookEvent] will have its `id` field set.
  Future<AsaasWebhookEvent?> upsertRow(
    _is.DatabaseSession session,
    AsaasWebhookEvent row, {
    required _is.ColumnSelections<AsaasWebhookEventTable> conflictColumns,
    _is.ColumnSelections<AsaasWebhookEventTable>? updateColumns,
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<AsaasWebhookEvent>(
      row,
      conflictColumns: conflictColumns(AsaasWebhookEvent.t),
      updateColumns: updateColumns?.call(AsaasWebhookEvent.t),
      updateWhere: updateWhere?.call(AsaasWebhookEvent.t),
      transaction: transaction,
    );
  }

  /// Updates all [AsaasWebhookEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AsaasWebhookEvent>> update(
    _is.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _is.ColumnSelections<AsaasWebhookEventTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<AsaasWebhookEvent>(
      rows,
      columns: columns?.call(AsaasWebhookEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [AsaasWebhookEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AsaasWebhookEvent> updateRow(
    _is.DatabaseSession session,
    AsaasWebhookEvent row, {
    _is.ColumnSelections<AsaasWebhookEventTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<AsaasWebhookEvent>(
      row,
      columns: columns?.call(AsaasWebhookEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AsaasWebhookEvent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<AsaasWebhookEvent?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<AsaasWebhookEventUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<AsaasWebhookEvent>(
      id,
      columnValues: columnValues(AsaasWebhookEvent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AsaasWebhookEvent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<AsaasWebhookEvent>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<AsaasWebhookEventUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<AsaasWebhookEvent>(
      columnValues: columnValues(AsaasWebhookEvent.t.updateTable),
      where: where(AsaasWebhookEvent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [AsaasWebhookEvent]s in the list and returns the deleted rows.
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
  Future<List<AsaasWebhookEvent>> delete(
    _is.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<AsaasWebhookEvent>(
      rows,
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [AsaasWebhookEvent].
  Future<AsaasWebhookEvent> deleteRow(
    _is.DatabaseSession session,
    AsaasWebhookEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AsaasWebhookEvent>(
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
  Future<List<AsaasWebhookEvent>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    _is.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _is.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<AsaasWebhookEvent>(
      where: where(AsaasWebhookEvent.t),
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [AsaasWebhookEvent] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<AsaasWebhookEvent>(
      where: where(AsaasWebhookEvent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
