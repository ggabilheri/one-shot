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

abstract class SecurityRole
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  SecurityRole._({
    _i1.UuidValue? id,
    required this.name,
    this.description,
    bool? active,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true;

  factory SecurityRole({
    _i1.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) = _SecurityRoleImpl;

  factory SecurityRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return SecurityRole(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  static final t = SecurityRoleTable();

  static const db = SecurityRoleRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String? description;

  bool active;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SecurityRole copyWith({
    _i1.UuidValue? id,
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
    _i1.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SecurityRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SecurityRoleTable>? orderByList,
    SecurityRoleInclude? include,
  }) {
    return SecurityRoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SecurityRole.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SecurityRole.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SecurityRoleImpl extends SecurityRole {
  _SecurityRoleImpl({
    _i1.UuidValue? id,
    required String name,
    String? description,
    bool? active,
  }) : super._(
         id: id,
         name: name,
         description: description,
         active: active,
       );

  /// Returns a shallow copy of this [SecurityRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SecurityRole copyWith({
    _i1.UuidValue? id,
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

class SecurityRoleUpdateTable extends _i1.UpdateTable<SecurityRoleTable> {
  SecurityRoleUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<bool, bool> active(bool value) => _i1.ColumnValue(
    table.active,
    value,
  );
}

class SecurityRoleTable extends _i1.Table<_i1.UuidValue> {
  SecurityRoleTable({super.tableRelation})
    : super(tableName: 'security_roles') {
    updateTable = SecurityRoleUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    active = _i1.ColumnBool(
      'active',
      this,
    );
  }

  late final SecurityRoleUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool active;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    description,
    active,
  ];
}

class SecurityRoleInclude extends _i1.IncludeObject {
  SecurityRoleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<_i1.UuidValue> get table => SecurityRole.t;
}

class SecurityRoleIncludeList extends _i1.IncludeList {
  SecurityRoleIncludeList._({
    _i1.WhereExpressionBuilder<SecurityRoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SecurityRole.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => SecurityRole.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SecurityRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SecurityRole>(
      where: where?.call(SecurityRole.t),
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? offset,
    _i1.OrderByBuilder<SecurityRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SecurityRoleTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SecurityRole>(
      where: where?.call(SecurityRole.t),
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SecurityRole] by its [id] or null if no such row exists.
  Future<SecurityRole?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<SecurityRole>> insert(
    _i1.DatabaseSession session,
    List<SecurityRole> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<SecurityRole>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [SecurityRole] and returns the inserted row.
  ///
  /// The returned [SecurityRole] will have its `id` field set.
  Future<SecurityRole> insertRow(
    _i1.DatabaseSession session,
    SecurityRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SecurityRole>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SecurityRole]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SecurityRole>> update(
    _i1.DatabaseSession session,
    List<SecurityRole> rows, {
    _i1.ColumnSelections<SecurityRoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SecurityRole>(
      rows,
      columns: columns?.call(SecurityRole.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SecurityRole]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SecurityRole> updateRow(
    _i1.DatabaseSession session,
    SecurityRole row, {
    _i1.ColumnSelections<SecurityRoleTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<SecurityRoleUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SecurityRole>(
      id,
      columnValues: columnValues(SecurityRole.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SecurityRole]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SecurityRole>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<SecurityRoleUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SecurityRoleTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SecurityRoleTable>? orderBy,
    _i1.OrderByListBuilder<SecurityRoleTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SecurityRole>(
      columnValues: columnValues(SecurityRole.t.updateTable),
      where: where(SecurityRole.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SecurityRole.t),
      orderByList: orderByList?.call(SecurityRole.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SecurityRole]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SecurityRole>> delete(
    _i1.DatabaseSession session,
    List<SecurityRole> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SecurityRole>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SecurityRole].
  Future<SecurityRole> deleteRow(
    _i1.DatabaseSession session,
    SecurityRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SecurityRole>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SecurityRole>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SecurityRoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SecurityRole>(
      where: where(SecurityRole.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SecurityRoleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SecurityRole>(
      where: where?.call(SecurityRole.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SecurityRole] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SecurityRoleTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SecurityRole>(
      where: where(SecurityRole.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
