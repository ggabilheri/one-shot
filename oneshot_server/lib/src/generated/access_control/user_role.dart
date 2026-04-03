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
import '../common/user_profile.dart' as _i2;
import '../access_control/security_role.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class UserRole
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  UserRole._({
    _i1.UuidValue? id,
    this.userProfileId,
    this.userProfile,
    this.securityRoleId,
    this.securityRole,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory UserRole({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
  }) = _UserRoleImpl;

  factory UserRole.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserRole(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
      securityRoleId: jsonSerialization['securityRoleId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['securityRoleId'],
            ),
      securityRole: jsonSerialization['securityRole'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.SecurityRole>(
              jsonSerialization['securityRole'],
            ),
    );
  }

  static final t = UserRoleTable();

  static const db = UserRoleRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? userProfileId;

  _i2.UserProfile? userProfile;

  _i1.UuidValue? securityRoleId;

  _i3.SecurityRole? securityRole;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserRole copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
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
    };
  }

  static UserRoleInclude include({
    _i2.UserProfileInclude? userProfile,
    _i3.SecurityRoleInclude? securityRole,
  }) {
    return UserRoleInclude._(
      userProfile: userProfile,
      securityRole: securityRole,
    );
  }

  static UserRoleIncludeList includeList({
    _i1.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRoleTable>? orderByList,
    UserRoleInclude? include,
  }) {
    return UserRoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRole.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserRole.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserRoleImpl extends UserRole {
  _UserRoleImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
    _i1.UuidValue? securityRoleId,
    _i3.SecurityRole? securityRole,
  }) : super._(
         id: id,
         userProfileId: userProfileId,
         userProfile: userProfile,
         securityRoleId: securityRoleId,
         securityRole: securityRole,
       );

  /// Returns a shallow copy of this [UserRole]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserRole copyWith({
    _i1.UuidValue? id,
    Object? userProfileId = _Undefined,
    Object? userProfile = _Undefined,
    Object? securityRoleId = _Undefined,
    Object? securityRole = _Undefined,
  }) {
    return UserRole(
      id: id ?? this.id,
      userProfileId: userProfileId is _i1.UuidValue?
          ? userProfileId
          : this.userProfileId,
      userProfile: userProfile is _i2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
      securityRoleId: securityRoleId is _i1.UuidValue?
          ? securityRoleId
          : this.securityRoleId,
      securityRole: securityRole is _i3.SecurityRole?
          ? securityRole
          : this.securityRole?.copyWith(),
    );
  }
}

class UserRoleUpdateTable extends _i1.UpdateTable<UserRoleTable> {
  UserRoleUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userProfileId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.userProfileId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> securityRoleId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.securityRoleId,
    value,
  );
}

class UserRoleTable extends _i1.Table<_i1.UuidValue> {
  UserRoleTable({super.tableRelation}) : super(tableName: 'user_roles') {
    updateTable = UserRoleUpdateTable(this);
    userProfileId = _i1.ColumnUuid(
      'userProfileId',
      this,
    );
    securityRoleId = _i1.ColumnUuid(
      'securityRoleId',
      this,
    );
  }

  late final UserRoleUpdateTable updateTable;

  late final _i1.ColumnUuid userProfileId;

  _i2.UserProfileTable? _userProfile;

  late final _i1.ColumnUuid securityRoleId;

  _i3.SecurityRoleTable? _securityRole;

  _i2.UserProfileTable get userProfile {
    if (_userProfile != null) return _userProfile!;
    _userProfile = _i1.createRelationTable(
      relationFieldName: 'userProfile',
      field: UserRole.t.userProfileId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _userProfile!;
  }

  _i3.SecurityRoleTable get securityRole {
    if (_securityRole != null) return _securityRole!;
    _securityRole = _i1.createRelationTable(
      relationFieldName: 'securityRole',
      field: UserRole.t.securityRoleId,
      foreignField: _i3.SecurityRole.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.SecurityRoleTable(tableRelation: foreignTableRelation),
    );
    return _securityRole!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userProfileId,
    securityRoleId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userProfile') {
      return userProfile;
    }
    if (relationField == 'securityRole') {
      return securityRole;
    }
    return null;
  }
}

class UserRoleInclude extends _i1.IncludeObject {
  UserRoleInclude._({
    _i2.UserProfileInclude? userProfile,
    _i3.SecurityRoleInclude? securityRole,
  }) {
    _userProfile = userProfile;
    _securityRole = securityRole;
  }

  _i2.UserProfileInclude? _userProfile;

  _i3.SecurityRoleInclude? _securityRole;

  @override
  Map<String, _i1.Include?> get includes => {
    'userProfile': _userProfile,
    'securityRole': _securityRole,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => UserRole.t;
}

class UserRoleIncludeList extends _i1.IncludeList {
  UserRoleIncludeList._({
    _i1.WhereExpressionBuilder<UserRoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserRole.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => UserRole.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRoleTable>? orderByList,
    _i1.Transaction? transaction,
    UserRoleInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserRole>(
      where: where?.call(UserRole.t),
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserRoleTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRoleTable>? orderByList,
    _i1.Transaction? transaction,
    UserRoleInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserRole>(
      where: where?.call(UserRole.t),
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserRole] by its [id] or null if no such row exists.
  Future<UserRole?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    UserRoleInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<UserRole>> insert(
    _i1.DatabaseSession session,
    List<UserRole> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<UserRole>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [UserRole] and returns the inserted row.
  ///
  /// The returned [UserRole] will have its `id` field set.
  Future<UserRole> insertRow(
    _i1.DatabaseSession session,
    UserRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserRole>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [UserRole]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<UserRole>> update(
    _i1.DatabaseSession session,
    List<UserRole> rows, {
    _i1.ColumnSelections<UserRoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserRole>(
      rows,
      columns: columns?.call(UserRole.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserRole]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserRole> updateRow(
    _i1.DatabaseSession session,
    UserRole row, {
    _i1.ColumnSelections<UserRoleTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<UserRoleUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<UserRole>(
      id,
      columnValues: columnValues(UserRole.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserRole]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<UserRole>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<UserRoleUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UserRoleTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRoleTable>? orderBy,
    _i1.OrderByListBuilder<UserRoleTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<UserRole>(
      columnValues: columnValues(UserRole.t.updateTable),
      where: where(UserRole.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRole.t),
      orderByList: orderByList?.call(UserRole.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [UserRole]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<UserRole>> delete(
    _i1.DatabaseSession session,
    List<UserRole> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserRole>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [UserRole].
  Future<UserRole> deleteRow(
    _i1.DatabaseSession session,
    UserRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserRole>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<UserRole>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserRoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserRole>(
      where: where(UserRole.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserRoleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserRole>(
      where: where?.call(UserRole.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserRole] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserRoleTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    UserRole userRole,
    _i2.UserProfile userProfile, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    UserRole userRole,
    _i3.SecurityRole securityRole, {
    _i1.Transaction? transaction,
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
}

class UserRoleDetachRowRepository {
  const UserRoleDetachRowRepository._();

  /// Detaches the relation between this [UserRole] and the [UserProfile] set in `userProfile`
  /// by setting the [UserRole]'s foreign key `userProfileId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userProfile(
    _i1.DatabaseSession session,
    UserRole userRole, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    UserRole userRole, {
    _i1.Transaction? transaction,
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
}
