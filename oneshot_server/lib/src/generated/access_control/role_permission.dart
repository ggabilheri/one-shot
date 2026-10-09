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
import '../access_control/security_role.dart' as _ivjb8sui;
import '../enums/access_level.enum.dart' as _iznhd8p2;
import '../enums/app_module.enum.dart' as _if1q2mgi;
import '../enums/platform_app.enum.dart' as _ie17db6d;

abstract class RolePermission
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  RolePermission._({
    _is.UuidValue? id,
    this.securityRoleId,
    this.securityRole,
    required this.platform,
    this.module,
    required this.level,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory RolePermission({
    _is.UuidValue? id,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    required _ie17db6d.PlatformApp platform,
    _if1q2mgi.AppModule? module,
    required _iznhd8p2.AccessLevel level,
  }) = _RolePermissionImpl;

  factory RolePermission.fromJson(Map<String, dynamic> jsonSerialization) {
    return RolePermission(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_ivjb8sui.SecurityRole>(
              jsonSerialization['securityRole'],
            ),
      platform: _ie17db6d.PlatformApp.fromJson(
        (jsonSerialization['platform'] as String),
      ),
      module: jsonSerialization['module'] == null
          ? null
          : _if1q2mgi.AppModule.fromJson(
              (jsonSerialization['module'] as String),
            ),
      level: _iznhd8p2.AccessLevel.fromJson(
        (jsonSerialization['level'] as String),
      ),
    );
  }

  static final t = RolePermissionTable();

  static const db = RolePermissionRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? securityRoleId;

  _ivjb8sui.SecurityRole? securityRole;

  _ie17db6d.PlatformApp platform;

  _if1q2mgi.AppModule? module;

  _iznhd8p2.AccessLevel level;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  RolePermission copyWith({
    _is.UuidValue? id,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _ie17db6d.PlatformApp? platform,
    _if1q2mgi.AppModule? module,
    _iznhd8p2.AccessLevel? level,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RolePermission',
      'id': id.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null) 'securityRole': securityRole?.toJson(),
      'platform': platform.toJson(),
      if (module != null) 'module': module?.toJson(),
      'level': level.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RolePermission',
      'id': id.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null)
        'securityRole': securityRole?.toJsonForProtocol(),
      'platform': platform.toJson(),
      if (module != null) 'module': module?.toJson(),
      'level': level.toJson(),
    };
  }

  static RolePermissionInclude include({
    _ivjb8sui.SecurityRoleInclude? securityRole,
  }) {
    return RolePermissionInclude._(securityRole: securityRole);
  }

  static RolePermissionIncludeList includeList({
    _is.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    RolePermissionInclude? include,
  }) {
    return RolePermissionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RolePermissionImpl extends RolePermission {
  _RolePermissionImpl({
    _is.UuidValue? id,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    required _ie17db6d.PlatformApp platform,
    _if1q2mgi.AppModule? module,
    required _iznhd8p2.AccessLevel level,
  }) : super._(
         id: id,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
         platform: platform,
         module: module,
         level: level,
       );

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  RolePermission copyWith({
    _is.UuidValue? id,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
    _ie17db6d.PlatformApp? platform,
    Object? module = _Undefined,
    _iznhd8p2.AccessLevel? level,
  }) {
    return RolePermission(
      id: id ?? this.id,
      securityRoleId: securityRoleId is _is.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _ivjb8sui.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
      platform: platform ?? this.platform,
      module: module is _if1q2mgi.AppModule? ? module : this.module,
      level: level ?? this.level,
    );
  }
}

class RolePermissionUpdateTable extends _is.UpdateTable<RolePermissionTable> {
  RolePermissionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> securityRoleId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.securityRoleId, value);

  _is.ColumnValue<_ie17db6d.PlatformApp, _ie17db6d.PlatformApp> platform(
    _ie17db6d.PlatformApp value,
  ) => _is.ColumnValue(table.platform, value);

  _is.ColumnValue<_if1q2mgi.AppModule, _if1q2mgi.AppModule> module(
    _if1q2mgi.AppModule? value,
  ) => _is.ColumnValue(table.module, value);

  _is.ColumnValue<_iznhd8p2.AccessLevel, _iznhd8p2.AccessLevel> level(
    _iznhd8p2.AccessLevel value,
  ) => _is.ColumnValue(table.level, value);
}

class RolePermissionTable extends _is.Table<_is.UuidValue> {
  RolePermissionTable({super.tableRelation})
    : super(tableName: 'role_permissions') {
    updateTable = RolePermissionUpdateTable(this);
    securityRoleId = _is.ColumnUuid('securityRoleId', this);
    platform = _is.ColumnEnum('platform', this, _is.EnumSerialization.byName);
    module = _is.ColumnEnum('module', this, _is.EnumSerialization.byName);
    level = _is.ColumnEnum('level', this, _is.EnumSerialization.byName);
  }

  late final RolePermissionUpdateTable updateTable;

  late final _is.ColumnUuid securityRoleId;

  _ivjb8sui.SecurityRoleTable? _securityRole;

  late final _is.ColumnEnum<_ie17db6d.PlatformApp> platform;

  late final _is.ColumnEnum<_if1q2mgi.AppModule> module;

  late final _is.ColumnEnum<_iznhd8p2.AccessLevel> level;

  _ivjb8sui.SecurityRoleTable get securityRole {
    if (_securityRole != null) return _securityRole!;
    _securityRole = _is.createRelationTable(
      relationFieldName: 'securityRole',
      field: RolePermission.t.securityRoleId,
      foreignField: _ivjb8sui.SecurityRole.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ivjb8sui.SecurityRoleTable(tableRelation: foreignTableRelation),
    );
    return _securityRole!;
  }

  @override
  List<_is.Column> get columns => [id, securityRoleId, platform, module, level];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'securityRole') {
      return securityRole;
    }
    return null;
  }
}

class RolePermissionInclude extends _is.IncludeObject {
  RolePermissionInclude._({_ivjb8sui.SecurityRoleInclude? securityRole}) {
    _securityRole = securityRole;
  }

  _ivjb8sui.SecurityRoleInclude? _securityRole;

  @override
  Map<String, _is.Include?> get includes => {'securityRole': _securityRole};

  @override
  _is.Table<_is.UuidValue> get table => RolePermission.t;
}

class RolePermissionIncludeList extends _is.IncludeList {
  RolePermissionIncludeList._({
    _is.WhereExpressionBuilder<RolePermissionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RolePermission.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => RolePermission.t;
}

class RolePermissionRepository {
  const RolePermissionRepository._();

  final attachRow = const RolePermissionAttachRowRepository._();

  final detachRow = const RolePermissionDetachRowRepository._();

  /// Returns a list of [RolePermission]s matching the given query parameters.
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
  Future<List<RolePermission>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    _is.Transaction? transaction,
    RolePermissionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RolePermission>(
      where: where?.call(RolePermission.t),
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RolePermission] matching the given query parameters.
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
  Future<RolePermission?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RolePermissionTable>? where,
    int? offset,
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    _is.Transaction? transaction,
    RolePermissionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RolePermission>(
      where: where?.call(RolePermission.t),
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RolePermission] by its [id] or null if no such row exists.
  Future<RolePermission?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    RolePermissionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RolePermission>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RolePermission]s in the list and returns the inserted rows.
  ///
  /// The returned [RolePermission]s will have their `id` fields set.
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
  Future<List<RolePermission>> insert(
    _is.DatabaseSession session,
    List<RolePermission> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<RolePermission>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [RolePermission] and returns the inserted row.
  ///
  /// The returned [RolePermission] will have its `id` field set.
  Future<RolePermission> insertRow(
    _is.DatabaseSession session,
    RolePermission row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<RolePermission>(row, transaction: transaction);
  }

  /// Upserts all [RolePermission]s in the list and returns the resulting rows.
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
  /// The returned [RolePermission]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RolePermission>> upsert(
    _is.DatabaseSession session,
    List<RolePermission> rows, {
    required _is.ColumnSelections<RolePermissionTable> conflictColumns,
    _is.ColumnSelections<RolePermissionTable>? updateColumns,
    _is.WhereExpressionBuilder<RolePermissionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<RolePermission>(
      rows,
      conflictColumns: conflictColumns(RolePermission.t),
      updateColumns: updateColumns?.call(RolePermission.t),
      updateWhere: updateWhere?.call(RolePermission.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [RolePermission] and returns the resulting row.
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
  /// The returned [RolePermission] will have its `id` field set.
  Future<RolePermission?> upsertRow(
    _is.DatabaseSession session,
    RolePermission row, {
    required _is.ColumnSelections<RolePermissionTable> conflictColumns,
    _is.ColumnSelections<RolePermissionTable>? updateColumns,
    _is.WhereExpressionBuilder<RolePermissionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<RolePermission>(
      row,
      conflictColumns: conflictColumns(RolePermission.t),
      updateColumns: updateColumns?.call(RolePermission.t),
      updateWhere: updateWhere?.call(RolePermission.t),
      transaction: transaction,
    );
  }

  /// Updates all [RolePermission]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RolePermission>> update(
    _is.DatabaseSession session,
    List<RolePermission> rows, {
    _is.ColumnSelections<RolePermissionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<RolePermission>(
      rows,
      columns: columns?.call(RolePermission.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [RolePermission]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RolePermission> updateRow(
    _is.DatabaseSession session,
    RolePermission row, {
    _is.ColumnSelections<RolePermissionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<RolePermission>(
      row,
      columns: columns?.call(RolePermission.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RolePermission] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RolePermission?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<RolePermissionUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<RolePermission>(
      id,
      columnValues: columnValues(RolePermission.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RolePermission]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RolePermission>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<RolePermissionUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<RolePermissionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<RolePermission>(
      columnValues: columnValues(RolePermission.t.updateTable),
      where: where(RolePermission.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [RolePermission]s in the list and returns the deleted rows.
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
  Future<List<RolePermission>> delete(
    _is.DatabaseSession session,
    List<RolePermission> rows, {
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<RolePermission>(
      rows,
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [RolePermission].
  Future<RolePermission> deleteRow(
    _is.DatabaseSession session,
    RolePermission row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RolePermission>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RolePermission>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RolePermissionTable> where,
    _is.OrderByBuilder<RolePermissionTable>? orderBy,
    _is.OrderByListBuilder<RolePermissionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<RolePermission>(
      where: where(RolePermission.t),
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<RolePermission>(
      where: where?.call(RolePermission.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RolePermission] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RolePermissionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RolePermission>(
      where: where(RolePermission.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class RolePermissionAttachRowRepository {
  const RolePermissionAttachRowRepository._();

  /// Creates a relation between the given [RolePermission] and [SecurityRole]
  /// by setting the [RolePermission]'s foreign key `securityRoleId` to refer to the [SecurityRole].
  Future<void> securityRole(
    _is.DatabaseSession session,
    RolePermission rolePermission,
    _ivjb8sui.SecurityRole securityRole, {
    _is.Transaction? transaction,
  }) async {
    if (rolePermission.id == null) {
      throw ArgumentError.notNull('rolePermission.id');
    }
    if (securityRole.id == null) {
      throw ArgumentError.notNull('securityRole.id');
    }

    var $rolePermission = rolePermission.copyWith(
      securityRoleId: securityRole.id,
    );
    await session.db.updateRow<RolePermission>(
      $rolePermission,
      columns: [RolePermission.t.securityRoleId],
      transaction: transaction,
    );
  }
}

class RolePermissionDetachRowRepository {
  const RolePermissionDetachRowRepository._();

  /// Detaches the relation between this [RolePermission] and the [SecurityRole] set in `securityRole`
  /// by setting the [RolePermission]'s foreign key `securityRoleId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> securityRole(
    _is.DatabaseSession session,
    RolePermission rolePermission, {
    _is.Transaction? transaction,
  }) async {
    if (rolePermission.id == null) {
      throw ArgumentError.notNull('rolePermission.id');
    }

    var $rolePermission = rolePermission.copyWith(securityRoleId: null);
    await session.db.updateRow<RolePermission>(
      $rolePermission,
      columns: [RolePermission.t.securityRoleId],
      transaction: transaction,
    );
  }
}
