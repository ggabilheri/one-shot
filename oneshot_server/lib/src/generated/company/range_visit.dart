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
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class RangeVisit
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  RangeVisit._({
    _is.UuidValue? id,
    this.userId,
    this.user,
    this.companyId,
    this.company,
    this.firearmId,
    this.firearm,
    required this.checkIn,
    this.checkOut,
    int? shotsFired,
    this.notes,
    bool? habitualityReportGenerated,
  }) : id = id ?? const _is.Uuid().v4obj(),
       shotsFired = shotsFired ?? 0,
       habitualityReportGenerated = habitualityReportGenerated ?? false;

  factory RangeVisit({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) = _RangeVisitImpl;

  factory RangeVisit.fromJson(Map<String, dynamic> jsonSerialization) {
    return RangeVisit(
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
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      checkIn: _is.DateTimeJsonExtension.fromJson(jsonSerialization['checkIn']),
      checkOut: jsonSerialization['checkOut'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['checkOut']),
      shotsFired: jsonSerialization['shotsFired'] as int?,
      notes: jsonSerialization['notes'] as String?,
      habitualityReportGenerated:
          jsonSerialization['habitualityReportGenerated'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(
              jsonSerialization['habitualityReportGenerated'],
            ),
    );
  }

  static final t = RangeVisitTable();

  static const db = RangeVisitRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  _is.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  DateTime checkIn;

  DateTime? checkOut;

  int shotsFired;

  String? notes;

  bool habitualityReportGenerated;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  RangeVisit copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    DateTime? checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RangeVisit',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'checkIn': checkIn.toJson(),
      if (checkOut != null) 'checkOut': checkOut?.toJson(),
      'shotsFired': shotsFired,
      if (notes != null) 'notes': notes,
      'habitualityReportGenerated': habitualityReportGenerated,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RangeVisit',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'checkIn': checkIn.toJson(),
      if (checkOut != null) 'checkOut': checkOut?.toJson(),
      'shotsFired': shotsFired,
      if (notes != null) 'notes': notes,
      'habitualityReportGenerated': habitualityReportGenerated,
    };
  }

  static RangeVisitInclude include({
    _izifjpv2.UserProfileInclude? user,
    _iocy1ifk.CompanyInclude? company,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    return RangeVisitInclude._(user: user, company: company, firearm: firearm);
  }

  static RangeVisitIncludeList includeList({
    _is.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    RangeVisitInclude? include,
  }) {
    return RangeVisitIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RangeVisitImpl extends RangeVisit {
  _RangeVisitImpl({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         companyId: companyId,
         company: company,
         firearmId: firearmId,
         firearm: firearm,
         checkIn: checkIn,
         checkOut: checkOut,
         shotsFired: shotsFired,
         notes: notes,
         habitualityReportGenerated: habitualityReportGenerated,
       );

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  RangeVisit copyWith({
    _is.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? checkIn,
    Object? checkOut = _Undefined,
    int? shotsFired,
    Object? notes = _Undefined,
    bool? habitualityReportGenerated,
  }) {
    return RangeVisit(
      id: id ?? this.id,
      userId: userId is _is.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut is DateTime? ? checkOut : this.checkOut,
      shotsFired: shotsFired ?? this.shotsFired,
      notes: notes is String? ? notes : this.notes,
      habitualityReportGenerated:
          habitualityReportGenerated ?? this.habitualityReportGenerated,
    );
  }
}

class RangeVisitUpdateTable extends _is.UpdateTable<RangeVisitTable> {
  RangeVisitUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue? value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<DateTime, DateTime> checkIn(DateTime value) =>
      _is.ColumnValue(table.checkIn, value);

  _is.ColumnValue<DateTime, DateTime> checkOut(DateTime? value) =>
      _is.ColumnValue(table.checkOut, value);

  _is.ColumnValue<int, int> shotsFired(int value) =>
      _is.ColumnValue(table.shotsFired, value);

  _is.ColumnValue<String, String> notes(String? value) =>
      _is.ColumnValue(table.notes, value);

  _is.ColumnValue<bool, bool> habitualityReportGenerated(bool value) =>
      _is.ColumnValue(table.habitualityReportGenerated, value);
}

class RangeVisitTable extends _is.Table<_is.UuidValue> {
  RangeVisitTable({super.tableRelation}) : super(tableName: 'range_visits') {
    updateTable = RangeVisitUpdateTable(this);
    userId = _is.ColumnUuid('userId', this);
    companyId = _is.ColumnUuid('companyId', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    checkIn = _is.ColumnDateTime('checkIn', this);
    checkOut = _is.ColumnDateTime('checkOut', this);
    shotsFired = _is.ColumnInt('shotsFired', this, hasDefault: true);
    notes = _is.ColumnString('notes', this);
    habitualityReportGenerated = _is.ColumnBool(
      'habitualityReportGenerated',
      this,
      hasDefault: true,
    );
  }

  late final RangeVisitUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnDateTime checkIn;

  late final _is.ColumnDateTime checkOut;

  late final _is.ColumnInt shotsFired;

  late final _is.ColumnString notes;

  late final _is.ColumnBool habitualityReportGenerated;

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: RangeVisit.t.userId,
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
      field: RangeVisit.t.companyId,
      foreignField: _iocy1ifk.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iocy1ifk.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: RangeVisit.t.firearmId,
      foreignField: _i25s0fp9.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i25s0fp9.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    companyId,
    firearmId,
    checkIn,
    checkOut,
    shotsFired,
    notes,
    habitualityReportGenerated,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'company') {
      return company;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class RangeVisitInclude extends _is.IncludeObject {
  RangeVisitInclude._({
    _izifjpv2.UserProfileInclude? user,
    _iocy1ifk.CompanyInclude? company,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    _user = user;
    _company = company;
    _firearm = firearm;
  }

  _izifjpv2.UserProfileInclude? _user;

  _iocy1ifk.CompanyInclude? _company;

  _i25s0fp9.FirearmInclude? _firearm;

  @override
  Map<String, _is.Include?> get includes => {
    'user': _user,
    'company': _company,
    'firearm': _firearm,
  };

  @override
  _is.Table<_is.UuidValue> get table => RangeVisit.t;
}

class RangeVisitIncludeList extends _is.IncludeList {
  RangeVisitIncludeList._({
    _is.WhereExpressionBuilder<RangeVisitTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RangeVisit.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => RangeVisit.t;
}

class RangeVisitRepository {
  const RangeVisitRepository._();

  final attachRow = const RangeVisitAttachRowRepository._();

  final detachRow = const RangeVisitDetachRowRepository._();

  /// Returns a list of [RangeVisit]s matching the given query parameters.
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
  Future<List<RangeVisit>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    _is.Transaction? transaction,
    RangeVisitInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RangeVisit>(
      where: where?.call(RangeVisit.t),
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RangeVisit] matching the given query parameters.
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
  Future<RangeVisit?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RangeVisitTable>? where,
    int? offset,
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    _is.Transaction? transaction,
    RangeVisitInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RangeVisit>(
      where: where?.call(RangeVisit.t),
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RangeVisit] by its [id] or null if no such row exists.
  Future<RangeVisit?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    RangeVisitInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RangeVisit>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RangeVisit]s in the list and returns the inserted rows.
  ///
  /// The returned [RangeVisit]s will have their `id` fields set.
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
  Future<List<RangeVisit>> insert(
    _is.DatabaseSession session,
    List<RangeVisit> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<RangeVisit>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [RangeVisit] and returns the inserted row.
  ///
  /// The returned [RangeVisit] will have its `id` field set.
  Future<RangeVisit> insertRow(
    _is.DatabaseSession session,
    RangeVisit row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<RangeVisit>(row, transaction: transaction);
  }

  /// Upserts all [RangeVisit]s in the list and returns the resulting rows.
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
  /// The returned [RangeVisit]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RangeVisit>> upsert(
    _is.DatabaseSession session,
    List<RangeVisit> rows, {
    required _is.ColumnSelections<RangeVisitTable> conflictColumns,
    _is.ColumnSelections<RangeVisitTable>? updateColumns,
    _is.WhereExpressionBuilder<RangeVisitTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<RangeVisit>(
      rows,
      conflictColumns: conflictColumns(RangeVisit.t),
      updateColumns: updateColumns?.call(RangeVisit.t),
      updateWhere: updateWhere?.call(RangeVisit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [RangeVisit] and returns the resulting row.
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
  /// The returned [RangeVisit] will have its `id` field set.
  Future<RangeVisit?> upsertRow(
    _is.DatabaseSession session,
    RangeVisit row, {
    required _is.ColumnSelections<RangeVisitTable> conflictColumns,
    _is.ColumnSelections<RangeVisitTable>? updateColumns,
    _is.WhereExpressionBuilder<RangeVisitTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<RangeVisit>(
      row,
      conflictColumns: conflictColumns(RangeVisit.t),
      updateColumns: updateColumns?.call(RangeVisit.t),
      updateWhere: updateWhere?.call(RangeVisit.t),
      transaction: transaction,
    );
  }

  /// Updates all [RangeVisit]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RangeVisit>> update(
    _is.DatabaseSession session,
    List<RangeVisit> rows, {
    _is.ColumnSelections<RangeVisitTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<RangeVisit>(
      rows,
      columns: columns?.call(RangeVisit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [RangeVisit]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RangeVisit> updateRow(
    _is.DatabaseSession session,
    RangeVisit row, {
    _is.ColumnSelections<RangeVisitTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<RangeVisit>(
      row,
      columns: columns?.call(RangeVisit.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RangeVisit] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RangeVisit?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<RangeVisitUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<RangeVisit>(
      id,
      columnValues: columnValues(RangeVisit.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RangeVisit]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RangeVisit>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<RangeVisitUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<RangeVisitTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<RangeVisit>(
      columnValues: columnValues(RangeVisit.t.updateTable),
      where: where(RangeVisit.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [RangeVisit]s in the list and returns the deleted rows.
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
  Future<List<RangeVisit>> delete(
    _is.DatabaseSession session,
    List<RangeVisit> rows, {
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<RangeVisit>(
      rows,
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [RangeVisit].
  Future<RangeVisit> deleteRow(
    _is.DatabaseSession session,
    RangeVisit row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RangeVisit>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RangeVisit>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RangeVisitTable> where,
    _is.OrderByBuilder<RangeVisitTable>? orderBy,
    _is.OrderByListBuilder<RangeVisitTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<RangeVisit>(
      where: where(RangeVisit.t),
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<RangeVisit>(
      where: where?.call(RangeVisit.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RangeVisit] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RangeVisitTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RangeVisit>(
      where: where(RangeVisit.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class RangeVisitAttachRowRepository {
  const RangeVisitAttachRowRepository._();

  /// Creates a relation between the given [RangeVisit] and [UserProfile]
  /// by setting the [RangeVisit]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _is.DatabaseSession session,
    RangeVisit rangeVisit,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $rangeVisit = rangeVisit.copyWith(userId: user.id);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RangeVisit] and [Company]
  /// by setting the [RangeVisit]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    RangeVisit rangeVisit,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $rangeVisit = rangeVisit.copyWith(companyId: company.id);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.companyId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RangeVisit] and [Firearm]
  /// by setting the [RangeVisit]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _is.DatabaseSession session,
    RangeVisit rangeVisit,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $rangeVisit = rangeVisit.copyWith(firearmId: firearm.id);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.firearmId],
      transaction: transaction,
    );
  }
}

class RangeVisitDetachRowRepository {
  const RangeVisitDetachRowRepository._();

  /// Detaches the relation between this [RangeVisit] and the [UserProfile] set in `user`
  /// by setting the [RangeVisit]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _is.DatabaseSession session,
    RangeVisit rangeVisit, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }

    var $rangeVisit = rangeVisit.copyWith(userId: null);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.userId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [RangeVisit] and the [Company] set in `company`
  /// by setting the [RangeVisit]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    RangeVisit rangeVisit, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }

    var $rangeVisit = rangeVisit.copyWith(companyId: null);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.companyId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [RangeVisit] and the [Firearm] set in `firearm`
  /// by setting the [RangeVisit]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _is.DatabaseSession session,
    RangeVisit rangeVisit, {
    _is.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }

    var $rangeVisit = rangeVisit.copyWith(firearmId: null);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.firearmId],
      transaction: transaction,
    );
  }
}
