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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class AsaasWebhookEvent
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  AsaasWebhookEvent._({
    _i1.UuidValue? id,
    required this.eventId,
    required this.event,
    required this.payload,
    bool? processed,
    this.processedAt,
    this.error,
    DateTime? receivedAt,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       processed = processed ?? false,
       receivedAt = receivedAt ?? DateTime.now();

  factory AsaasWebhookEvent({
    _i1.UuidValue? id,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      eventId: jsonSerialization['eventId'] as String,
      event: jsonSerialization['event'] as String,
      payload: jsonSerialization['payload'] as String,
      processed: jsonSerialization['processed'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['processed']),
      processedAt: jsonSerialization['processedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['processedAt'],
            ),
      error: jsonSerialization['error'] as String?,
      receivedAt: jsonSerialization['receivedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['receivedAt']),
    );
  }

  static final t = AsaasWebhookEventTable();

  static const db = AsaasWebhookEventRepository._();

  @override
  _i1.UuidValue id;

  String eventId;

  String event;

  String payload;

  bool processed;

  DateTime? processedAt;

  String? error;

  DateTime receivedAt;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [AsaasWebhookEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AsaasWebhookEvent copyWith({
    _i1.UuidValue? id,
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
    _i1.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    AsaasWebhookEventInclude? include,
  }) {
    return AsaasWebhookEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AsaasWebhookEventImpl extends AsaasWebhookEvent {
  _AsaasWebhookEventImpl({
    _i1.UuidValue? id,
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
  @_i1.useResult
  @override
  AsaasWebhookEvent copyWith({
    _i1.UuidValue? id,
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
    extends _i1.UpdateTable<AsaasWebhookEventTable> {
  AsaasWebhookEventUpdateTable(super.table);

  _i1.ColumnValue<String, String> eventId(String value) => _i1.ColumnValue(
    table.eventId,
    value,
  );

  _i1.ColumnValue<String, String> event(String value) => _i1.ColumnValue(
    table.event,
    value,
  );

  _i1.ColumnValue<String, String> payload(String value) => _i1.ColumnValue(
    table.payload,
    value,
  );

  _i1.ColumnValue<bool, bool> processed(bool value) => _i1.ColumnValue(
    table.processed,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> processedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.processedAt,
        value,
      );

  _i1.ColumnValue<String, String> error(String? value) => _i1.ColumnValue(
    table.error,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> receivedAt(DateTime value) =>
      _i1.ColumnValue(
        table.receivedAt,
        value,
      );
}

class AsaasWebhookEventTable extends _i1.Table<_i1.UuidValue> {
  AsaasWebhookEventTable({super.tableRelation})
    : super(tableName: 'asaas_webhook_events') {
    updateTable = AsaasWebhookEventUpdateTable(this);
    eventId = _i1.ColumnString(
      'eventId',
      this,
    );
    event = _i1.ColumnString(
      'event',
      this,
    );
    payload = _i1.ColumnString(
      'payload',
      this,
    );
    processed = _i1.ColumnBool(
      'processed',
      this,
      hasDefault: true,
    );
    processedAt = _i1.ColumnDateTime(
      'processedAt',
      this,
    );
    error = _i1.ColumnString(
      'error',
      this,
    );
    receivedAt = _i1.ColumnDateTime(
      'receivedAt',
      this,
      hasDefault: true,
    );
  }

  late final AsaasWebhookEventUpdateTable updateTable;

  late final _i1.ColumnString eventId;

  late final _i1.ColumnString event;

  late final _i1.ColumnString payload;

  late final _i1.ColumnBool processed;

  late final _i1.ColumnDateTime processedAt;

  late final _i1.ColumnString error;

  late final _i1.ColumnDateTime receivedAt;

  @override
  List<_i1.Column> get columns => [
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

class AsaasWebhookEventInclude extends _i1.IncludeObject {
  AsaasWebhookEventInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<_i1.UuidValue> get table => AsaasWebhookEvent.t;
}

class AsaasWebhookEventIncludeList extends _i1.IncludeList {
  AsaasWebhookEventIncludeList._({
    _i1.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AsaasWebhookEvent.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => AsaasWebhookEvent.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? offset,
    _i1.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [AsaasWebhookEvent] by its [id] or null if no such row exists.
  Future<AsaasWebhookEvent?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<AsaasWebhookEvent>> insert(
    _i1.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<AsaasWebhookEvent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [AsaasWebhookEvent] and returns the inserted row.
  ///
  /// The returned [AsaasWebhookEvent] will have its `id` field set.
  Future<AsaasWebhookEvent> insertRow(
    _i1.DatabaseSession session,
    AsaasWebhookEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AsaasWebhookEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [AsaasWebhookEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<AsaasWebhookEvent>> update(
    _i1.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _i1.ColumnSelections<AsaasWebhookEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AsaasWebhookEvent>(
      rows,
      columns: columns?.call(AsaasWebhookEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AsaasWebhookEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AsaasWebhookEvent> updateRow(
    _i1.DatabaseSession session,
    AsaasWebhookEvent row, {
    _i1.ColumnSelections<AsaasWebhookEventTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<AsaasWebhookEventUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<AsaasWebhookEvent>(
      id,
      columnValues: columnValues(AsaasWebhookEvent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AsaasWebhookEvent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<AsaasWebhookEvent>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AsaasWebhookEventUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AsaasWebhookEventTable>? orderBy,
    _i1.OrderByListBuilder<AsaasWebhookEventTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<AsaasWebhookEvent>(
      columnValues: columnValues(AsaasWebhookEvent.t.updateTable),
      where: where(AsaasWebhookEvent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AsaasWebhookEvent.t),
      orderByList: orderByList?.call(AsaasWebhookEvent.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [AsaasWebhookEvent]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<AsaasWebhookEvent>> delete(
    _i1.DatabaseSession session,
    List<AsaasWebhookEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AsaasWebhookEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [AsaasWebhookEvent].
  Future<AsaasWebhookEvent> deleteRow(
    _i1.DatabaseSession session,
    AsaasWebhookEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AsaasWebhookEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<AsaasWebhookEvent>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AsaasWebhookEvent>(
      where: where(AsaasWebhookEvent.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AsaasWebhookEventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AsaasWebhookEvent>(
      where: where?.call(AsaasWebhookEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [AsaasWebhookEvent] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AsaasWebhookEventTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<AsaasWebhookEvent>(
      where: where(AsaasWebhookEvent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
