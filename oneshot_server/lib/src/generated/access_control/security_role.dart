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

abstract class SecurityRole
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  SecurityRole._({
    _is.UuidValue? id,
    required this.name,
    this.description,
    bool? active,
  }) : id = id ?? const _is.Uuid().v4obj(),
       active = active ?? true;

  factory SecurityRole({
    _is.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) = _SecurityRoleImpl;

  factory SecurityRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return SecurityRole(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  static final t = SecurityRoleTable();

  static const db = SecurityRoleRepository._();

  @override
  _is.UuidValue id;

  String name;

  String? description;

  bool active;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SecurityRole copyWith({
    _is.UuidValue? id,
    String? name,
    String? description,
    bool? active,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SecurityRole',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'active': active,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SecurityRole',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'active': active,
    };
  }

  static SecurityRoleInclude include() {
    return SecurityRoleInclude._();
  }

  static SecurityRoleIncludeList includeList({
    _is.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    SecurityRoleInclude? include,
  }) {
    return SecurityRoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SecurityRoleImpl extends SecurityRole {
  _SecurityRoleImpl({
    _is.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) : super._(id: id, name: name, description: description, active: active);

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SecurityRole copyWith({
    _is.UuidValue? id,
    String? name,
    Object? description = _Undefined,
    bool? active,
  }) {
    return SecurityRole(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      active: active ?? this.active,
    );
  }
}

class SecurityRoleUpdateTable extends _is.UpdateTable<SecurityRoleTable> {
  SecurityRoleUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> description(String? value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<bool, bool> active(bool value) =>
      _is.ColumnValue(table.active, value);
}

class SecurityRoleTable extends _is.Table<_is.UuidValue> {
  SecurityRoleTable({super.tableRelation})
    : super(tableName: 'security_roles') {
    updateTable = SecurityRoleUpdateTable(this);
    name = _is.ColumnString('name', this);
    description = _is.ColumnString('description', this);
    active = _is.ColumnBool('active', this);
  }

  late final SecurityRoleUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnBool active;

  @override
  List<_is.Column> get columns => [id, name, description, active];
}

class SecurityRoleInclude extends _is.IncludeObject {
  SecurityRoleInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue> get table => SecurityRole.t;
}

class SecurityRoleIncludeList extends _is.IncludeList {
  SecurityRoleIncludeList._({
    _is.WhereExpressionBuilder<SecurityRoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SecurityRole.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => SecurityRole.t;
}

class SecurityRoleRepository {
  const SecurityRoleRepository._();

  /// Returns a list of [SecurityRole]s matching the given query parameters.
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
  Future<List<SecurityRole>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SecurityRole>(
      where: where?.call(SecurityRole.t),
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SecurityRole] matching the given query parameters.
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
  Future<SecurityRole?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? offset,
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SecurityRole>(
      where: where?.call(SecurityRole.t),
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SecurityRole] by its [id] or null if no such row exists.
  Future<SecurityRole?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SecurityRole>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SecurityRole]s in the list and returns the inserted rows.
  ///
  /// The returned [SecurityRole]s will have their `id` fields set.
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
  Future<List<SecurityRole>> insert(
    _is.DatabaseSession session,
    List<SecurityRole> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SecurityRole>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SecurityRole] and returns the inserted row.
  ///
  /// The returned [SecurityRole] will have its `id` field set.
  Future<SecurityRole> insertRow(
    _is.DatabaseSession session,
    SecurityRole row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SecurityRole>(row, transaction: transaction);
  }

  /// Upserts all [SecurityRole]s in the list and returns the resulting rows.
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
  /// The returned [SecurityRole]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SecurityRole>> upsert(
    _is.DatabaseSession session,
    List<SecurityRole> rows, {
    required _is.ColumnSelections<SecurityRoleTable> conflictColumns,
    _is.ColumnSelections<SecurityRoleTable>? updateColumns,
    _is.WhereExpressionBuilder<SecurityRoleTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SecurityRole>(
      rows,
      conflictColumns: conflictColumns(SecurityRole.t),
      updateColumns: updateColumns?.call(SecurityRole.t),
      updateWhere: updateWhere?.call(SecurityRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SecurityRole] and returns the resulting row.
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
  /// The returned [SecurityRole] will have its `id` field set.
  Future<SecurityRole?> upsertRow(
    _is.DatabaseSession session,
    SecurityRole row, {
    required _is.ColumnSelections<SecurityRoleTable> conflictColumns,
    _is.ColumnSelections<SecurityRoleTable>? updateColumns,
    _is.WhereExpressionBuilder<SecurityRoleTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SecurityRole>(
      row,
      conflictColumns: conflictColumns(SecurityRole.t),
      updateColumns: updateColumns?.call(SecurityRole.t),
      updateWhere: updateWhere?.call(SecurityRole.t),
      transaction: transaction,
    );
  }

  /// Updates all [SecurityRole]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SecurityRole>> update(
    _is.DatabaseSession session,
    List<SecurityRole> rows, {
    _is.ColumnSelections<SecurityRoleTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SecurityRole>(
      rows,
      columns: columns?.call(SecurityRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SecurityRole]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SecurityRole> updateRow(
    _is.DatabaseSession session,
    SecurityRole row, {
    _is.ColumnSelections<SecurityRoleTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SecurityRole>(
      row,
      columns: columns?.call(SecurityRole.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SecurityRole] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SecurityRole?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SecurityRoleUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SecurityRole>(
      id,
      columnValues: columnValues(SecurityRole.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SecurityRole]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SecurityRole>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SecurityRoleUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SecurityRoleTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SecurityRole>(
      columnValues: columnValues(SecurityRole.t.updateTable),
      where: where(SecurityRole.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SecurityRole]s in the list and returns the deleted rows.
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
  Future<List<SecurityRole>> delete(
    _is.DatabaseSession session,
    List<SecurityRole> rows, {
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SecurityRole>(
      rows,
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SecurityRole].
  Future<SecurityRole> deleteRow(
    _is.DatabaseSession session,
    SecurityRole row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SecurityRole>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SecurityRole>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SecurityRoleTable> where,
    _is.OrderByBuilder<SecurityRoleTable>? orderBy,
    _is.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SecurityRole>(
      where: where(SecurityRole.t),
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SecurityRole>(
      where: where?.call(SecurityRole.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SecurityRole] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SecurityRoleTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SecurityRole>(
      where: where(SecurityRole.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
