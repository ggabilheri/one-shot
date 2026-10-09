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
import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;
import '../enums/membership_status.dart' as _ikbz440x;

abstract class Membership
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Membership._({
    _is.UuidValue? id,
    this.userId,
    this.user,
    this.companyId,
    this.company,
    this.membershipNumber,
    required this.startDate,
    this.validUntil,
    _ikbz440x.MembershipStatus? status,
    this.planName,
  }) : id = id ?? const _is.Uuid().v4obj(),
       status = status ?? _ikbz440x.MembershipStatus.active;

  factory Membership({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _ikbz440x.MembershipStatus? status,
    String? planName,
  }) = _MembershipImpl;

  factory Membership.fromJson(Map<String, dynamic> jsonSerialization) {
    return Membership(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
      membershipNumber: jsonSerialization['membershipNumber'] as String?,
      startDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['validUntil']),
      status: jsonSerialization['status'] == null
          ? null
          : _ikbz440x.MembershipStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      planName: jsonSerialization['planName'] as String?,
    );
  }

  static final t = MembershipTable();

  static const db = MembershipRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  String? membershipNumber;

  DateTime startDate;

  DateTime? validUntil;

  _ikbz440x.MembershipStatus status;

  String? planName;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Membership copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? membershipNumber,
    DateTime? startDate,
    DateTime? validUntil,
    _ikbz440x.MembershipStatus? status,
    String? planName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  static MembershipInclude include({
    _izifjpv2.UserProfileInclude? user,
    _iocy1ifk.CompanyInclude? company,
  }) {
    return MembershipInclude._(user: user, company: company);
  }

  static MembershipIncludeList includeList({
    _is.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    MembershipInclude? include,
  }) {
    return MembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MembershipImpl extends Membership {
  _MembershipImpl({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _ikbz440x.MembershipStatus? status,
    String? planName,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         companyId: companyId,
         company: company,
         membershipNumber: membershipNumber,
         startDate: startDate,
         validUntil: validUntil,
         status: status,
         planName: planName,
       );

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Membership copyWith({
    _is.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
    Object? membershipNumber = _Undefined,
    DateTime? startDate,
    Object? validUntil = _Undefined,
    _ikbz440x.MembershipStatus? status,
    Object? planName = _Undefined,
  }) {
    return Membership(
      id: id ?? this.id,
      userId: userId is _is.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      membershipNumber: membershipNumber is String?
          ? membershipNumber
          : this.membershipNumber,
      startDate: startDate ?? this.startDate,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
      status: status ?? this.status,
      planName: planName is String? ? planName : this.planName,
    );
  }
}

class MembershipUpdateTable extends _is.UpdateTable<MembershipTable> {
  MembershipUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue? value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);

  _is.ColumnValue<String, String> membershipNumber(String? value) =>
      _is.ColumnValue(table.membershipNumber, value);

  _is.ColumnValue<DateTime, DateTime> startDate(DateTime value) =>
      _is.ColumnValue(table.startDate, value);

  _is.ColumnValue<DateTime, DateTime> validUntil(DateTime? value) =>
      _is.ColumnValue(table.validUntil, value);

  _is.ColumnValue<_ikbz440x.MembershipStatus, _ikbz440x.MembershipStatus>
  status(_ikbz440x.MembershipStatus value) =>
      _is.ColumnValue(table.status, value);

  _is.ColumnValue<String, String> planName(String? value) =>
      _is.ColumnValue(table.planName, value);
}

class MembershipTable extends _is.Table<_is.UuidValue> {
  MembershipTable({super.tableRelation}) : super(tableName: 'memberships') {
    updateTable = MembershipUpdateTable(this);
    userId = _is.ColumnUuid('userId', this);
    companyId = _is.ColumnUuid('companyId', this);
    membershipNumber = _is.ColumnString('membershipNumber', this);
    startDate = _is.ColumnDateTime('startDate', this);
    validUntil = _is.ColumnDateTime('validUntil', this);
    status = _is.ColumnEnum(
      'status',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    planName = _is.ColumnString('planName', this);
  }

  late final MembershipUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  late final _is.ColumnString membershipNumber;

  late final _is.ColumnDateTime startDate;

  late final _is.ColumnDateTime validUntil;

  late final _is.ColumnEnum<_ikbz440x.MembershipStatus> status;

  late final _is.ColumnString planName;

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: Membership.t.userId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: Membership.t.companyId,
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
    userId,
    companyId,
    membershipNumber,
    startDate,
    validUntil,
    status,
    planName,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class MembershipInclude extends _is.IncludeObject {
  MembershipInclude._({
    _izifjpv2.UserProfileInclude? user,
    _iocy1ifk.CompanyInclude? company,
  }) {
    _user = user;
    _company = company;
  }

  _izifjpv2.UserProfileInclude? _user;

  _iocy1ifk.CompanyInclude? _company;

  @override
  Map<String, _is.Include?> get includes => {
    'user': _user,
    'company': _company,
  };

  @override
  _is.Table<_is.UuidValue> get table => Membership.t;
}

class MembershipIncludeList extends _is.IncludeList {
  MembershipIncludeList._({
    _is.WhereExpressionBuilder<MembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Membership.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Membership.t;
}

class MembershipRepository {
  const MembershipRepository._();

  final attachRow = const MembershipAttachRowRepository._();

  final detachRow = const MembershipDetachRowRepository._();

  /// Returns a list of [Membership]s matching the given query parameters.
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
  Future<List<Membership>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    _is.Transaction? transaction,
    MembershipInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Membership>(
      where: where?.call(Membership.t),
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Membership] matching the given query parameters.
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
  Future<Membership?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<MembershipTable>? where,
    int? offset,
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    _is.Transaction? transaction,
    MembershipInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Membership>(
      where: where?.call(Membership.t),
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Membership] by its [id] or null if no such row exists.
  Future<Membership?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    MembershipInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Membership>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Membership]s in the list and returns the inserted rows.
  ///
  /// The returned [Membership]s will have their `id` fields set.
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
  Future<List<Membership>> insert(
    _is.DatabaseSession session,
    List<Membership> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Membership>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Membership] and returns the inserted row.
  ///
  /// The returned [Membership] will have its `id` field set.
  Future<Membership> insertRow(
    _is.DatabaseSession session,
    Membership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Membership>(row, transaction: transaction);
  }

  /// Upserts all [Membership]s in the list and returns the resulting rows.
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
  /// The returned [Membership]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Membership>> upsert(
    _is.DatabaseSession session,
    List<Membership> rows, {
    required _is.ColumnSelections<MembershipTable> conflictColumns,
    _is.ColumnSelections<MembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<MembershipTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Membership>(
      rows,
      conflictColumns: conflictColumns(Membership.t),
      updateColumns: updateColumns?.call(Membership.t),
      updateWhere: updateWhere?.call(Membership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Membership] and returns the resulting row.
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
  /// The returned [Membership] will have its `id` field set.
  Future<Membership?> upsertRow(
    _is.DatabaseSession session,
    Membership row, {
    required _is.ColumnSelections<MembershipTable> conflictColumns,
    _is.ColumnSelections<MembershipTable>? updateColumns,
    _is.WhereExpressionBuilder<MembershipTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Membership>(
      row,
      conflictColumns: conflictColumns(Membership.t),
      updateColumns: updateColumns?.call(Membership.t),
      updateWhere: updateWhere?.call(Membership.t),
      transaction: transaction,
    );
  }

  /// Updates all [Membership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Membership>> update(
    _is.DatabaseSession session,
    List<Membership> rows, {
    _is.ColumnSelections<MembershipTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Membership>(
      rows,
      columns: columns?.call(Membership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Membership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Membership> updateRow(
    _is.DatabaseSession session,
    Membership row, {
    _is.ColumnSelections<MembershipTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Membership>(
      row,
      columns: columns?.call(Membership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Membership] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Membership?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<MembershipUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Membership>(
      id,
      columnValues: columnValues(Membership.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Membership]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Membership>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<MembershipUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<MembershipTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Membership>(
      columnValues: columnValues(Membership.t.updateTable),
      where: where(Membership.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Membership]s in the list and returns the deleted rows.
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
  Future<List<Membership>> delete(
    _is.DatabaseSession session,
    List<Membership> rows, {
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Membership>(
      rows,
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Membership].
  Future<Membership> deleteRow(
    _is.DatabaseSession session,
    Membership row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Membership>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Membership>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<MembershipTable> where,
    _is.OrderByBuilder<MembershipTable>? orderBy,
    _is.OrderByListBuilder<MembershipTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Membership>(
      where: where(Membership.t),
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Membership>(
      where: where?.call(Membership.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Membership] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<MembershipTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Membership>(
      where: where(Membership.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class MembershipAttachRowRepository {
  const MembershipAttachRowRepository._();

  /// Creates a relation between the given [Membership] and [UserProfile]
  /// by setting the [Membership]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _is.DatabaseSession session,
    Membership membership,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $membership = membership.copyWith(userId: user.id);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Membership] and [Company]
  /// by setting the [Membership]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    Membership membership,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $membership = membership.copyWith(companyId: company.id);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.companyId],
      transaction: transaction,
    );
  }
}

class MembershipDetachRowRepository {
  const MembershipDetachRowRepository._();

  /// Detaches the relation between this [Membership] and the [UserProfile] set in `user`
  /// by setting the [Membership]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _is.DatabaseSession session,
    Membership membership, {
    _is.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }

    var $membership = membership.copyWith(userId: null);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.userId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Membership] and the [Company] set in `company`
  /// by setting the [Membership]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    Membership membership, {
    _is.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }

    var $membership = membership.copyWith(companyId: null);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.companyId],
      transaction: transaction,
    );
  }
}
