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
import '../access_control/security_role.dart' as _i2;
import '../enums/platform_app.enum.dart' as _i3;
import '../enums/app_module.enum.dart' as _i4;
import '../enums/access_level.enum.dart' as _i5;
import 'package:oneshot_server/src/generated/protocol.dart' as _i6;

abstract class RolePermission
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  RolePermission._({
    _i1.UuidValue? id,
    this.securityRoleId,
    this.securityRole,
    required this.platform,
    this.module,
    required this.level,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory RolePermission({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    required _i3.PlatformApp platform,
    _i4.AppModule? module,
    required _i5.AccessLevel level,
  }) = _RolePermissionImpl;

  factory RolePermission.fromJson(Map<String, dynamic> jsonSerialization) {
    return RolePermission(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _i6.Protocol().deserialize<_i2.SecurityRole>(
              jsonSerialization['securityRole'],
            ),
      platform: _i3.PlatformApp.fromJson(
        (jsonSerialization['platform'] as String),
      ),
      module: jsonSerialization['module'] == null
          ? null
          : _i4.AppModule.fromJson((jsonSerialization['module'] as String)),
      level: _i5.AccessLevel.fromJson((jsonSerialization['level'] as String)),
    );
  }

  static final t = RolePermissionTable();

  static const db = RolePermissionRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? securityRoleId;

  _i2.SecurityRole? securityRole;

  _i3.PlatformApp platform;

  _i4.AppModule? module;

  _i5.AccessLevel level;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [RolePermission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RolePermission copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    _i3.PlatformApp? platform,
    _i4.AppModule? module,
    _i5.AccessLevel? level,
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
    _i2.SecurityRoleInclude? securityRole,
  }) {
    return RolePermissionInclude._(securityRole: securityRole);
  }

  static RolePermissionIncludeList includeList({
    _i1.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RolePermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RolePermissionTable>? orderByList,
    RolePermissionInclude? include,
  }) {
    return RolePermissionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RolePermission.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RolePermission.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RolePermissionImpl extends RolePermission {
  _RolePermissionImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? securityRoleId,
    _i2.SecurityRole? securityRole,
    required _i3.PlatformApp platform,
    _i4.AppModule? module,
    required _i5.AccessLevel level,
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
  @_i1.useResult
  @override
  RolePermission copyWith({
    _i1.UuidValue? id,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
    _i3.PlatformApp? platform,
    Object? module = _Undefined,
    _i5.AccessLevel? level,
  }) {
    return RolePermission(
      id: id ?? this.id,
      securityRoleId: securityRoleId is _i1.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _i2.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
      platform: platform ?? this.platform,
      module: module is _i4.AppModule? ? module : this.module,
      level: level ?? this.level,
    );
  }
}

class RolePermissionUpdateTable extends _i1.UpdateTable<RolePermissionTable> {
  RolePermissionUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> securityRoleId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.securityRoleId,
    value,
  );

  _i1.ColumnValue<_i3.PlatformApp, _i3.PlatformApp> platform(
    _i3.PlatformApp value,
  ) => _i1.ColumnValue(
    table.platform,
    value,
  );

  _i1.ColumnValue<_i4.AppModule, _i4.AppModule> module(_i4.AppModule? value) =>
      _i1.ColumnValue(
        table.module,
        value,
      );

  _i1.ColumnValue<_i5.AccessLevel, _i5.AccessLevel> level(
    _i5.AccessLevel value,
  ) => _i1.ColumnValue(
    table.level,
    value,
  );
}

class RolePermissionTable extends _i1.Table<_i1.UuidValue> {
  RolePermissionTable({super.tableRelation})
    : super(tableName: 'role_permissions') {
    updateTable = RolePermissionUpdateTable(this);
    securityRoleId = _i1.ColumnUuid(
      'securityRoleId',
      this,
    );
    platform = _i1.ColumnEnum(
      'platform',
      this,
      _i1.EnumSerialization.byName,
    );
    module = _i1.ColumnEnum(
      'module',
      this,
      _i1.EnumSerialization.byName,
    );
    level = _i1.ColumnEnum(
      'level',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final RolePermissionUpdateTable updateTable;

  late final _i1.ColumnUuid securityRoleId;

  _i2.SecurityRoleTable? _securityRole;

  late final _i1.ColumnEnum<_i3.PlatformApp> platform;

  late final _i1.ColumnEnum<_i4.AppModule> module;

  late final _i1.ColumnEnum<_i5.AccessLevel> level;

  _i2.SecurityRoleTable get securityRole {
    if (_securityRole != null) return _securityRole!;
    _securityRole = _i1.createRelationTable(
      relationFieldName: 'securityRole',
      field: RolePermission.t.securityRoleId,
      foreignField: _i2.SecurityRole.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.SecurityRoleTable(tableRelation: foreignTableRelation),
    );
    return _securityRole!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    securityRoleId,
    platform,
    module,
    level,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'securityRole') {
      return securityRole;
    }
    return null;
  }
}

class RolePermissionInclude extends _i1.IncludeObject {
  RolePermissionInclude._({_i2.SecurityRoleInclude? securityRole}) {
    _securityRole = securityRole;
  }

  _i2.SecurityRoleInclude? _securityRole;

  @override
  Map<String, _i1.Include?> get includes => {'securityRole': _securityRole};

  @override
  _i1.Table<_i1.UuidValue> get table => RolePermission.t;
}

class RolePermissionIncludeList extends _i1.IncludeList {
  RolePermissionIncludeList._({
    _i1.WhereExpressionBuilder<RolePermissionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RolePermission.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => RolePermission.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RolePermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RolePermissionTable>? orderByList,
    _i1.Transaction? transaction,
    RolePermissionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RolePermission>(
      where: where?.call(RolePermission.t),
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RolePermissionTable>? where,
    int? offset,
    _i1.OrderByBuilder<RolePermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RolePermissionTable>? orderByList,
    _i1.Transaction? transaction,
    RolePermissionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RolePermission>(
      where: where?.call(RolePermission.t),
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RolePermission] by its [id] or null if no such row exists.
  Future<RolePermission?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    RolePermissionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<RolePermission>> insert(
    _i1.DatabaseSession session,
    List<RolePermission> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<RolePermission>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [RolePermission] and returns the inserted row.
  ///
  /// The returned [RolePermission] will have its `id` field set.
  Future<RolePermission> insertRow(
    _i1.DatabaseSession session,
    RolePermission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RolePermission>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RolePermission]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RolePermission>> update(
    _i1.DatabaseSession session,
    List<RolePermission> rows, {
    _i1.ColumnSelections<RolePermissionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RolePermission>(
      rows,
      columns: columns?.call(RolePermission.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RolePermission]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RolePermission> updateRow(
    _i1.DatabaseSession session,
    RolePermission row, {
    _i1.ColumnSelections<RolePermissionTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<RolePermissionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<RolePermission>(
      id,
      columnValues: columnValues(RolePermission.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RolePermission]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<RolePermission>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<RolePermissionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RolePermissionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RolePermissionTable>? orderBy,
    _i1.OrderByListBuilder<RolePermissionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<RolePermission>(
      columnValues: columnValues(RolePermission.t.updateTable),
      where: where(RolePermission.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RolePermission.t),
      orderByList: orderByList?.call(RolePermission.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [RolePermission]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RolePermission>> delete(
    _i1.DatabaseSession session,
    List<RolePermission> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RolePermission>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RolePermission].
  Future<RolePermission> deleteRow(
    _i1.DatabaseSession session,
    RolePermission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RolePermission>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RolePermission>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RolePermissionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RolePermission>(
      where: where(RolePermission.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RolePermissionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RolePermission>(
      where: where?.call(RolePermission.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RolePermission] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RolePermissionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    RolePermission rolePermission,
    _i2.SecurityRole securityRole, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    RolePermission rolePermission, {
    _i1.Transaction? transaction,
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
