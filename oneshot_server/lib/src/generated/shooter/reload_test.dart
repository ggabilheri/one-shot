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
import '../shooter/firearm.dart' as _i25s0fp9;
import '../shooter/reload_session.dart' as _iai2mm7j;

abstract class ReloadTest
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  ReloadTest._({
    _is.UuidValue? id,
    this.reloadSessionId,
    this.reloadSession,
    this.firearmId,
    this.firearm,
    required this.testDate,
    required this.shotsFired,
    required this.highestVelocityFps,
    required this.lowestVelocityFps,
    required this.averageVelocityFps,
    required this.powerFactor,
    required this.averageEnergy,
    this.groupingMeasurement,
    required this.crackedCasings,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory ReloadTest({
    _is.UuidValue? id,
    _is.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime testDate,
    required int shotsFired,
    required double highestVelocityFps,
    required double lowestVelocityFps,
    required double averageVelocityFps,
    required double powerFactor,
    required double averageEnergy,
    double? groupingMeasurement,
    required int crackedCasings,
  }) = _ReloadTestImpl;

  factory ReloadTest.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadTest(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      reloadSessionId: jsonSerialization['reloadSessionId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['reloadSessionId'],
            ),
      reloadSession: jsonSerialization['reloadSession'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iai2mm7j.ReloadSession>(
              jsonSerialization['reloadSession'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      testDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['testDate'],
      ),
      shotsFired: jsonSerialization['shotsFired'] as int,
      highestVelocityFps: (jsonSerialization['highestVelocityFps'] as num)
          .toDouble(),
      lowestVelocityFps: (jsonSerialization['lowestVelocityFps'] as num)
          .toDouble(),
      averageVelocityFps: (jsonSerialization['averageVelocityFps'] as num)
          .toDouble(),
      powerFactor: (jsonSerialization['powerFactor'] as num).toDouble(),
      averageEnergy: (jsonSerialization['averageEnergy'] as num).toDouble(),
      groupingMeasurement: (jsonSerialization['groupingMeasurement'] as num?)
          ?.toDouble(),
      crackedCasings: jsonSerialization['crackedCasings'] as int,
    );
  }

  static final t = ReloadTestTable();

  static const db = ReloadTestRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? reloadSessionId;

  _iai2mm7j.ReloadSession? reloadSession;

  _is.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  DateTime testDate;

  int shotsFired;

  double highestVelocityFps;

  double lowestVelocityFps;

  double averageVelocityFps;

  double powerFactor;

  double averageEnergy;

  double? groupingMeasurement;

  int crackedCasings;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [ReloadTest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ReloadTest copyWith({
    _is.UuidValue? id,
    _is.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    DateTime? testDate,
    int? shotsFired,
    double? highestVelocityFps,
    double? lowestVelocityFps,
    double? averageVelocityFps,
    double? powerFactor,
    double? averageEnergy,
    double? groupingMeasurement,
    int? crackedCasings,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadTest',
      'id': id.toJson(),
      if (reloadSessionId != null) 'reloadSessionId': reloadSessionId?.toJson(),
      if (reloadSession != null) 'reloadSession': reloadSession?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'testDate': testDate.toJson(),
      'shotsFired': shotsFired,
      'highestVelocityFps': highestVelocityFps,
      'lowestVelocityFps': lowestVelocityFps,
      'averageVelocityFps': averageVelocityFps,
      'powerFactor': powerFactor,
      'averageEnergy': averageEnergy,
      if (groupingMeasurement != null)
        'groupingMeasurement': groupingMeasurement,
      'crackedCasings': crackedCasings,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ReloadTest',
      'id': id.toJson(),
      if (reloadSessionId != null) 'reloadSessionId': reloadSessionId?.toJson(),
      if (reloadSession != null)
        'reloadSession': reloadSession?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'testDate': testDate.toJson(),
      'shotsFired': shotsFired,
      'highestVelocityFps': highestVelocityFps,
      'lowestVelocityFps': lowestVelocityFps,
      'averageVelocityFps': averageVelocityFps,
      'powerFactor': powerFactor,
      'averageEnergy': averageEnergy,
      if (groupingMeasurement != null)
        'groupingMeasurement': groupingMeasurement,
      'crackedCasings': crackedCasings,
    };
  }

  static ReloadTestInclude include({
    _iai2mm7j.ReloadSessionInclude? reloadSession,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    return ReloadTestInclude._(reloadSession: reloadSession, firearm: firearm);
  }

  static ReloadTestIncludeList includeList({
    _is.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    ReloadTestInclude? include,
  }) {
    return ReloadTestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadTestImpl extends ReloadTest {
  _ReloadTestImpl({
    _is.UuidValue? id,
    _is.UuidValue? reloadSessionId,
    _iai2mm7j.ReloadSession? reloadSession,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime testDate,
    required int shotsFired,
    required double highestVelocityFps,
    required double lowestVelocityFps,
    required double averageVelocityFps,
    required double powerFactor,
    required double averageEnergy,
    double? groupingMeasurement,
    required int crackedCasings,
  }) : super._(
         id: id,
         reloadSessionId: reloadSessionId,
         reloadSession: reloadSession,
         firearmId: firearmId,
         firearm: firearm,
         testDate: testDate,
         shotsFired: shotsFired,
         highestVelocityFps: highestVelocityFps,
         lowestVelocityFps: lowestVelocityFps,
         averageVelocityFps: averageVelocityFps,
         powerFactor: powerFactor,
         averageEnergy: averageEnergy,
         groupingMeasurement: groupingMeasurement,
         crackedCasings: crackedCasings,
       );

  /// Returns a shallow copy of this [ReloadTest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ReloadTest copyWith({
    _is.UuidValue? id,
    Object? reloadSessionId = _Undefined,
    Object? reloadSession = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? testDate,
    int? shotsFired,
    double? highestVelocityFps,
    double? lowestVelocityFps,
    double? averageVelocityFps,
    double? powerFactor,
    double? averageEnergy,
    Object? groupingMeasurement = _Undefined,
    int? crackedCasings,
  }) {
    return ReloadTest(
      id: id ?? this.id,
      reloadSessionId: reloadSessionId is _is.UuidValue?
          ? reloadSessionId
          : this.reloadSessionId,
      reloadSession: reloadSession is _iai2mm7j.ReloadSession?
          ? reloadSession
          : this.reloadSession?.copyWith(),
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      testDate: testDate ?? this.testDate,
      shotsFired: shotsFired ?? this.shotsFired,
      highestVelocityFps: highestVelocityFps ?? this.highestVelocityFps,
      lowestVelocityFps: lowestVelocityFps ?? this.lowestVelocityFps,
      averageVelocityFps: averageVelocityFps ?? this.averageVelocityFps,
      powerFactor: powerFactor ?? this.powerFactor,
      averageEnergy: averageEnergy ?? this.averageEnergy,
      groupingMeasurement: groupingMeasurement is double?
          ? groupingMeasurement
          : this.groupingMeasurement,
      crackedCasings: crackedCasings ?? this.crackedCasings,
    );
  }
}

class ReloadTestUpdateTable extends _is.UpdateTable<ReloadTestTable> {
  ReloadTestUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> reloadSessionId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.reloadSessionId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<DateTime, DateTime> testDate(DateTime value) =>
      _is.ColumnValue(table.testDate, value);

  _is.ColumnValue<int, int> shotsFired(int value) =>
      _is.ColumnValue(table.shotsFired, value);

  _is.ColumnValue<double, double> highestVelocityFps(double value) =>
      _is.ColumnValue(table.highestVelocityFps, value);

  _is.ColumnValue<double, double> lowestVelocityFps(double value) =>
      _is.ColumnValue(table.lowestVelocityFps, value);

  _is.ColumnValue<double, double> averageVelocityFps(double value) =>
      _is.ColumnValue(table.averageVelocityFps, value);

  _is.ColumnValue<double, double> powerFactor(double value) =>
      _is.ColumnValue(table.powerFactor, value);

  _is.ColumnValue<double, double> averageEnergy(double value) =>
      _is.ColumnValue(table.averageEnergy, value);

  _is.ColumnValue<double, double> groupingMeasurement(double? value) =>
      _is.ColumnValue(table.groupingMeasurement, value);

  _is.ColumnValue<int, int> crackedCasings(int value) =>
      _is.ColumnValue(table.crackedCasings, value);
}

class ReloadTestTable extends _is.Table<_is.UuidValue> {
  ReloadTestTable({super.tableRelation}) : super(tableName: 'reload_tests') {
    updateTable = ReloadTestUpdateTable(this);
    reloadSessionId = _is.ColumnUuid('reloadSessionId', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    testDate = _is.ColumnDateTime('testDate', this);
    shotsFired = _is.ColumnInt('shotsFired', this);
    highestVelocityFps = _is.ColumnDouble('highestVelocityFps', this);
    lowestVelocityFps = _is.ColumnDouble('lowestVelocityFps', this);
    averageVelocityFps = _is.ColumnDouble('averageVelocityFps', this);
    powerFactor = _is.ColumnDouble('powerFactor', this);
    averageEnergy = _is.ColumnDouble('averageEnergy', this);
    groupingMeasurement = _is.ColumnDouble('groupingMeasurement', this);
    crackedCasings = _is.ColumnInt('crackedCasings', this);
  }

  late final ReloadTestUpdateTable updateTable;

  late final _is.ColumnUuid reloadSessionId;

  _iai2mm7j.ReloadSessionTable? _reloadSession;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnDateTime testDate;

  late final _is.ColumnInt shotsFired;

  late final _is.ColumnDouble highestVelocityFps;

  late final _is.ColumnDouble lowestVelocityFps;

  late final _is.ColumnDouble averageVelocityFps;

  late final _is.ColumnDouble powerFactor;

  late final _is.ColumnDouble averageEnergy;

  late final _is.ColumnDouble groupingMeasurement;

  late final _is.ColumnInt crackedCasings;

  _iai2mm7j.ReloadSessionTable get reloadSession {
    if (_reloadSession != null) return _reloadSession!;
    _reloadSession = _is.createRelationTable(
      relationFieldName: 'reloadSession',
      field: ReloadTest.t.reloadSessionId,
      foreignField: _iai2mm7j.ReloadSession.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iai2mm7j.ReloadSessionTable(tableRelation: foreignTableRelation),
    );
    return _reloadSession!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: ReloadTest.t.firearmId,
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
    reloadSessionId,
    firearmId,
    testDate,
    shotsFired,
    highestVelocityFps,
    lowestVelocityFps,
    averageVelocityFps,
    powerFactor,
    averageEnergy,
    groupingMeasurement,
    crackedCasings,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'reloadSession') {
      return reloadSession;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class ReloadTestInclude extends _is.IncludeObject {
  ReloadTestInclude._({
    _iai2mm7j.ReloadSessionInclude? reloadSession,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    _reloadSession = reloadSession;
    _firearm = firearm;
  }

  _iai2mm7j.ReloadSessionInclude? _reloadSession;

  _i25s0fp9.FirearmInclude? _firearm;

  @override
  Map<String, _is.Include?> get includes => {
    'reloadSession': _reloadSession,
    'firearm': _firearm,
  };

  @override
  _is.Table<_is.UuidValue> get table => ReloadTest.t;
}

class ReloadTestIncludeList extends _is.IncludeList {
  ReloadTestIncludeList._({
    _is.WhereExpressionBuilder<ReloadTestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReloadTest.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => ReloadTest.t;
}

class ReloadTestRepository {
  const ReloadTestRepository._();

  final attachRow = const ReloadTestAttachRowRepository._();

  final detachRow = const ReloadTestDetachRowRepository._();

  /// Returns a list of [ReloadTest]s matching the given query parameters.
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
  Future<List<ReloadTest>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    _is.Transaction? transaction,
    ReloadTestInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ReloadTest>(
      where: where?.call(ReloadTest.t),
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ReloadTest] matching the given query parameters.
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
  Future<ReloadTest?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadTestTable>? where,
    int? offset,
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    _is.Transaction? transaction,
    ReloadTestInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ReloadTest>(
      where: where?.call(ReloadTest.t),
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ReloadTest] by its [id] or null if no such row exists.
  Future<ReloadTest?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    ReloadTestInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ReloadTest>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ReloadTest]s in the list and returns the inserted rows.
  ///
  /// The returned [ReloadTest]s will have their `id` fields set.
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
  Future<List<ReloadTest>> insert(
    _is.DatabaseSession session,
    List<ReloadTest> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ReloadTest>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ReloadTest] and returns the inserted row.
  ///
  /// The returned [ReloadTest] will have its `id` field set.
  Future<ReloadTest> insertRow(
    _is.DatabaseSession session,
    ReloadTest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ReloadTest>(row, transaction: transaction);
  }

  /// Upserts all [ReloadTest]s in the list and returns the resulting rows.
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
  /// The returned [ReloadTest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadTest>> upsert(
    _is.DatabaseSession session,
    List<ReloadTest> rows, {
    required _is.ColumnSelections<ReloadTestTable> conflictColumns,
    _is.ColumnSelections<ReloadTestTable>? updateColumns,
    _is.WhereExpressionBuilder<ReloadTestTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ReloadTest>(
      rows,
      conflictColumns: conflictColumns(ReloadTest.t),
      updateColumns: updateColumns?.call(ReloadTest.t),
      updateWhere: updateWhere?.call(ReloadTest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ReloadTest] and returns the resulting row.
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
  /// The returned [ReloadTest] will have its `id` field set.
  Future<ReloadTest?> upsertRow(
    _is.DatabaseSession session,
    ReloadTest row, {
    required _is.ColumnSelections<ReloadTestTable> conflictColumns,
    _is.ColumnSelections<ReloadTestTable>? updateColumns,
    _is.WhereExpressionBuilder<ReloadTestTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ReloadTest>(
      row,
      conflictColumns: conflictColumns(ReloadTest.t),
      updateColumns: updateColumns?.call(ReloadTest.t),
      updateWhere: updateWhere?.call(ReloadTest.t),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadTest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadTest>> update(
    _is.DatabaseSession session,
    List<ReloadTest> rows, {
    _is.ColumnSelections<ReloadTestTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ReloadTest>(
      rows,
      columns: columns?.call(ReloadTest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ReloadTest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ReloadTest> updateRow(
    _is.DatabaseSession session,
    ReloadTest row, {
    _is.ColumnSelections<ReloadTestTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ReloadTest>(
      row,
      columns: columns?.call(ReloadTest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReloadTest] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ReloadTest?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ReloadTestUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ReloadTest>(
      id,
      columnValues: columnValues(ReloadTest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadTest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadTest>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ReloadTestUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ReloadTestTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ReloadTest>(
      columnValues: columnValues(ReloadTest.t.updateTable),
      where: where(ReloadTest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ReloadTest]s in the list and returns the deleted rows.
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
  Future<List<ReloadTest>> delete(
    _is.DatabaseSession session,
    List<ReloadTest> rows, {
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ReloadTest>(
      rows,
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ReloadTest].
  Future<ReloadTest> deleteRow(
    _is.DatabaseSession session,
    ReloadTest row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ReloadTest>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadTest>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ReloadTestTable> where,
    _is.OrderByBuilder<ReloadTestTable>? orderBy,
    _is.OrderByListBuilder<ReloadTestTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ReloadTest>(
      where: where(ReloadTest.t),
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ReloadTest>(
      where: where?.call(ReloadTest.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ReloadTest] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ReloadTestTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ReloadTest>(
      where: where(ReloadTest.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ReloadTestAttachRowRepository {
  const ReloadTestAttachRowRepository._();

  /// Creates a relation between the given [ReloadTest] and [ReloadSession]
  /// by setting the [ReloadTest]'s foreign key `reloadSessionId` to refer to the [ReloadSession].
  Future<void> reloadSession(
    _is.DatabaseSession session,
    ReloadTest reloadTest,
    _iai2mm7j.ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadTest.id == null) {
      throw ArgumentError.notNull('reloadTest.id');
    }
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadTest = reloadTest.copyWith(reloadSessionId: reloadSession.id);
    await session.db.updateRow<ReloadTest>(
      $reloadTest,
      columns: [ReloadTest.t.reloadSessionId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ReloadTest] and [Firearm]
  /// by setting the [ReloadTest]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _is.DatabaseSession session,
    ReloadTest reloadTest,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
  }) async {
    if (reloadTest.id == null) {
      throw ArgumentError.notNull('reloadTest.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $reloadTest = reloadTest.copyWith(firearmId: firearm.id);
    await session.db.updateRow<ReloadTest>(
      $reloadTest,
      columns: [ReloadTest.t.firearmId],
      transaction: transaction,
    );
  }
}

class ReloadTestDetachRowRepository {
  const ReloadTestDetachRowRepository._();

  /// Detaches the relation between this [ReloadTest] and the [ReloadSession] set in `reloadSession`
  /// by setting the [ReloadTest]'s foreign key `reloadSessionId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> reloadSession(
    _is.DatabaseSession session,
    ReloadTest reloadTest, {
    _is.Transaction? transaction,
  }) async {
    if (reloadTest.id == null) {
      throw ArgumentError.notNull('reloadTest.id');
    }

    var $reloadTest = reloadTest.copyWith(reloadSessionId: null);
    await session.db.updateRow<ReloadTest>(
      $reloadTest,
      columns: [ReloadTest.t.reloadSessionId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ReloadTest] and the [Firearm] set in `firearm`
  /// by setting the [ReloadTest]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _is.DatabaseSession session,
    ReloadTest reloadTest, {
    _is.Transaction? transaction,
  }) async {
    if (reloadTest.id == null) {
      throw ArgumentError.notNull('reloadTest.id');
    }

    var $reloadTest = reloadTest.copyWith(firearmId: null);
    await session.db.updateRow<ReloadTest>(
      $reloadTest,
      columns: [ReloadTest.t.firearmId],
      transaction: transaction,
    );
  }
}
