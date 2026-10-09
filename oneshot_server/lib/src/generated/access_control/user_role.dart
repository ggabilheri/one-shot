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
import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;

abstract class UserRole
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  UserRole._({
    _is.UuidValue? id,
    this.userProfileId,
    this.userProfile,
    this.securityRoleId,
    this.securityRole,
    this.companyId,
    this.company,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory UserRole({
    _is.UuidValue? id,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _UserRoleImpl;

  factory UserRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserRole(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
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
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
    );
  }

  static final t = UserRoleTable();

  static const db = UserRoleRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? userProfileId;

  _izifjpv2.UserProfile? userProfile;

  _is.UuidValue? securityRoleId;

  _ivjb8sui.SecurityRole? securityRole;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  UserRole copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserRole',
      'id': id.toJson(),
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null) 'securityRole': securityRole?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'UserRole',
      'id': id.toJson(),
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJsonForProtocol(),
      if (securityRoleId != null) 'securityRoleId': securityRoleId?.toJson(),
      if (securityRole != null)
        'securityRole': securityRole?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  static UserRoleInclude include({
    _izifjpv2.UserProfileInclude? userProfile,
    _ivjb8sui.SecurityRoleInclude? securityRole,
    _iocy1ifk.CompanyInclude? company,
  }) {
    return UserRoleInclude._(
      userProfile: userProfile,
      securityRole: securityRole,
      company: company,
    );
  }

  static UserRoleIncludeList includeList({
    _is.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    UserRoleInclude? include,
  }) {
    return UserRoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserRoleImpl extends UserRole {
  _UserRoleImpl({
    _is.UuidValue? id,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
    _is.UuidValue? securityRoleId,
    _ivjb8sui.SecurityRole? securityRole,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) : super._(
         id: id,
         userProfileId: userProfileId,
         userProfile: userProfile,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  UserRole copyWith({
    _is.UuidValue? id,
    Object? userProfileId = _Undefined,
    Object? userProfile = _Undefined,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
  }) {
    return UserRole(
      id: id ?? this.id,
      userProfileId: userProfileId is _is.UuidValue?
          ? userProfileId
          : this.userProfileId,
      userProfile: userProfile is _izifjpv2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
      securityRoleId: securityRoleId is _is.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _ivjb8sui.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
    );
  }
}

class UserRoleUpdateTable extends _is.UpdateTable<UserRoleTable> {
  UserRoleUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userProfileId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.userProfileId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> securityRoleId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.securityRoleId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);
}

class UserRoleTable extends _is.Table<_is.UuidValue> {
  UserRoleTable({super.tableRelation}) : super(tableName: 'user_roles') {
    updateTable = UserRoleUpdateTable(this);
    userProfileId = _is.ColumnUuid('userProfileId', this);
    securityRoleId = _is.ColumnUuid('securityRoleId', this);
    companyId = _is.ColumnUuid('companyId', this);
  }

  late final UserRoleUpdateTable updateTable;

  late final _is.ColumnUuid userProfileId;

  _izifjpv2.UserProfileTable? _userProfile;

  late final _is.ColumnUuid securityRoleId;

  _ivjb8sui.SecurityRoleTable? _securityRole;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  _izifjpv2.UserProfileTable get userProfile {
    if (_userProfile != null) return _userProfile!;
    _userProfile = _is.createRelationTable(
      relationFieldName: 'userProfile',
      field: UserRole.t.userProfileId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _userProfile!;
  }

  _ivjb8sui.SecurityRoleTable get securityRole {
    if (_securityRole != null) return _securityRole!;
    _securityRole = _is.createRelationTable(
      relationFieldName: 'securityRole',
      field: UserRole.t.securityRoleId,
      foreignField: _ivjb8sui.SecurityRole.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ivjb8sui.SecurityRoleTable(tableRelation: foreignTableRelation),
    );
    return _securityRole!;
  }

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: UserRole.t.companyId,
      foreignField: _iocy1ifk.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iocy1ifk.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userProfileId,
    securityRoleId,
    companyId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userProfile') {
      return userProfile;
    }
    if (relationField == 'securityRole') {
      return securityRole;
    }
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class UserRoleInclude extends _is.IncludeObject {
  UserRoleInclude._({
    _izifjpv2.UserProfileInclude? userProfile,
    _ivjb8sui.SecurityRoleInclude? securityRole,
    _iocy1ifk.CompanyInclude? company,
  }) {
    _userProfile = userProfile;
    _securityRole = securityRole;
    _company = company;
  }

  _izifjpv2.UserProfileInclude? _userProfile;

  _ivjb8sui.SecurityRoleInclude? _securityRole;

  _iocy1ifk.CompanyInclude? _company;

  @override
  Map<String, _is.Include?> get includes => {
    'userProfile': _userProfile,
    'securityRole': _securityRole,
    'company': _company,
  };

  @override
  _is.Table<_is.UuidValue> get table => UserRole.t;
}

class UserRoleIncludeList extends _is.IncludeList {
  UserRoleIncludeList._({
    _is.WhereExpressionBuilder<UserRoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserRole.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => UserRole.t;
}

class UserRoleRepository {
  const UserRoleRepository._();

  final attachRow = const UserRoleAttachRowRepository._();

  final detachRow = const UserRoleDetachRowRepository._();

  /// Returns a list of [UserRole]s matching the given query parameters.
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
  Future<List<UserRole>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    _is.Transaction? transaction,
    UserRoleInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserRole>(
      where: where?.call(UserRole.t),
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [UserRole] matching the given query parameters.
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
  Future<UserRole?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserRoleTable>? where,
    int? offset,
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    _is.Transaction? transaction,
    UserRoleInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserRole>(
      where: where?.call(UserRole.t),
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserRole] by its [id] or null if no such row exists.
  Future<UserRole?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    UserRoleInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<UserRole>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [UserRole]s in the list and returns the inserted rows.
  ///
  /// The returned [UserRole]s will have their `id` fields set.
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
  Future<List<UserRole>> insert(
    _is.DatabaseSession session,
    List<UserRole> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<UserRole>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [UserRole] and returns the inserted row.
  ///
  /// The returned [UserRole] will have its `id` field set.
  Future<UserRole> insertRow(
    _is.DatabaseSession session,
    UserRole row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserRole>(row, transaction: transaction);
  }

  /// Upserts all [UserRole]s in the list and returns the resulting rows.
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
  /// The returned [UserRole]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserRole>> upsert(
    _is.DatabaseSession session,
    List<UserRole> rows, {
    required _is.ColumnSelections<UserRoleTable> conflictColumns,
    _is.ColumnSelections<UserRoleTable>? updateColumns,
    _is.WhereExpressionBuilder<UserRoleTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<UserRole>(
      rows,
      conflictColumns: conflictColumns(UserRole.t),
      updateColumns: updateColumns?.call(UserRole.t),
      updateWhere: updateWhere?.call(UserRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [UserRole] and returns the resulting row.
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
  /// The returned [UserRole] will have its `id` field set.
  Future<UserRole?> upsertRow(
    _is.DatabaseSession session,
    UserRole row, {
    required _is.ColumnSelections<UserRoleTable> conflictColumns,
    _is.ColumnSelections<UserRoleTable>? updateColumns,
    _is.WhereExpressionBuilder<UserRoleTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<UserRole>(
      row,
      conflictColumns: conflictColumns(UserRole.t),
      updateColumns: updateColumns?.call(UserRole.t),
      updateWhere: updateWhere?.call(UserRole.t),
      transaction: transaction,
    );
  }

  /// Updates all [UserRole]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserRole>> update(
    _is.DatabaseSession session,
    List<UserRole> rows, {
    _is.ColumnSelections<UserRoleTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<UserRole>(
      rows,
      columns: columns?.call(UserRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [UserRole]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserRole> updateRow(
    _is.DatabaseSession session,
    UserRole row, {
    _is.ColumnSelections<UserRoleTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserRole>(
      row,
      columns: columns?.call(UserRole.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserRole] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<UserRole?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<UserRoleUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<UserRole>(
      id,
      columnValues: columnValues(UserRole.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserRole]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserRole>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<UserRoleUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<UserRoleTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<UserRole>(
      columnValues: columnValues(UserRole.t.updateTable),
      where: where(UserRole.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [UserRole]s in the list and returns the deleted rows.
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
  Future<List<UserRole>> delete(
    _is.DatabaseSession session,
    List<UserRole> rows, {
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<UserRole>(
      rows,
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [UserRole].
  Future<UserRole> deleteRow(
    _is.DatabaseSession session,
    UserRole row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserRole>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserRole>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserRoleTable> where,
    _is.OrderByBuilder<UserRoleTable>? orderBy,
    _is.OrderByListBuilder<UserRoleTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<UserRole>(
      where: where(UserRole.t),
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<UserRole>(
      where: where?.call(UserRole.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserRole] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserRoleTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<UserRole>(
      where: where(UserRole.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class UserRoleAttachRowRepository {
  const UserRoleAttachRowRepository._();

  /// Creates a relation between the given [UserRole] and [UserProfile]
  /// by setting the [UserRole]'s foreign key `userProfileId` to refer to the [UserProfile].
  Future<void> userProfile(
    _is.DatabaseSession session,
    UserRole userRole,
    _izifjpv2.UserProfile userProfile, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }

    var $userRole = userRole.copyWith(userProfileId: userProfile.id);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.userProfileId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [UserRole] and [SecurityRole]
  /// by setting the [UserRole]'s foreign key `securityRoleId` to refer to the [SecurityRole].
  Future<void> securityRole(
    _is.DatabaseSession session,
    UserRole userRole,
    _ivjb8sui.SecurityRole securityRole, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }
    if (securityRole.id == null) {
      throw ArgumentError.notNull('securityRole.id');
    }

    var $userRole = userRole.copyWith(securityRoleId: securityRole.id);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.securityRoleId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [UserRole] and [Company]
  /// by setting the [UserRole]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    UserRole userRole,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $userRole = userRole.copyWith(companyId: company.id);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.companyId],
      transaction: transaction,
    );
  }
}

class UserRoleDetachRowRepository {
  const UserRoleDetachRowRepository._();

  /// Detaches the relation between this [UserRole] and the [UserProfile] set in `userProfile`
  /// by setting the [UserRole]'s foreign key `userProfileId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userProfile(
    _is.DatabaseSession session,
    UserRole userRole, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }

    var $userRole = userRole.copyWith(userProfileId: null);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.userProfileId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [UserRole] and the [SecurityRole] set in `securityRole`
  /// by setting the [UserRole]'s foreign key `securityRoleId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> securityRole(
    _is.DatabaseSession session,
    UserRole userRole, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }

    var $userRole = userRole.copyWith(securityRoleId: null);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.securityRoleId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [UserRole] and the [Company] set in `company`
  /// by setting the [UserRole]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    UserRole userRole, {
    _is.Transaction? transaction,
  }) async {
    if (userRole.id == null) {
      throw ArgumentError.notNull('userRole.id');
    }

    var $userRole = userRole.copyWith(companyId: null);
    await session.db.updateRow<UserRole>(
      $userRole,
      columns: [UserRole.t.companyId],
      transaction: transaction,
    );
  }
}
