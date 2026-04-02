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
import '../shooter/reload_session.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class ReloadTest
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  ReloadTest._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory ReloadTest({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      reloadSessionId: jsonSerialization['reloadSessionId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['reloadSessionId'],
            ),
      reloadSession: jsonSerialization['reloadSession'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.ReloadSession>(
              jsonSerialization['reloadSession'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      testDate: _i1.DateTimeJsonExtension.fromJson(
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
  _i1.UuidValue id;

  _i1.UuidValue? reloadSessionId;

  _i2.ReloadSession? reloadSession;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

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
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [ReloadTest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ReloadTest copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
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
    _i2.ReloadSessionInclude? reloadSession,
    _i3.FirearmInclude? firearm,
  }) {
    return ReloadTestInclude._(
      reloadSession: reloadSession,
      firearm: firearm,
    );
  }

  static ReloadTestIncludeList includeList({
    _i1.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadTestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadTestTable>? orderByList,
    ReloadTestInclude? include,
  }) {
    return ReloadTestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadTest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ReloadTest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadTestImpl extends ReloadTest {
  _ReloadTestImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? reloadSessionId,
    _i2.ReloadSession? reloadSession,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
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
  @_i1.useResult
  @override
  ReloadTest copyWith({
    _i1.UuidValue? id,
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
      reloadSessionId: reloadSessionId is _i1.UuidValue?
          ? reloadSessionId
          : this.reloadSessionId,
      reloadSession: reloadSession is _i2.ReloadSession?
          ? reloadSession
          : this.reloadSession?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
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

class ReloadTestUpdateTable extends _i1.UpdateTable<ReloadTestTable> {
  ReloadTestUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> reloadSessionId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.reloadSessionId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> testDate(DateTime value) =>
      _i1.ColumnValue(
        table.testDate,
        value,
      );

  _i1.ColumnValue<int, int> shotsFired(int value) => _i1.ColumnValue(
    table.shotsFired,
    value,
  );

  _i1.ColumnValue<double, double> highestVelocityFps(double value) =>
      _i1.ColumnValue(
        table.highestVelocityFps,
        value,
      );

  _i1.ColumnValue<double, double> lowestVelocityFps(double value) =>
      _i1.ColumnValue(
        table.lowestVelocityFps,
        value,
      );

  _i1.ColumnValue<double, double> averageVelocityFps(double value) =>
      _i1.ColumnValue(
        table.averageVelocityFps,
        value,
      );

  _i1.ColumnValue<double, double> powerFactor(double value) => _i1.ColumnValue(
    table.powerFactor,
    value,
  );

  _i1.ColumnValue<double, double> averageEnergy(double value) =>
      _i1.ColumnValue(
        table.averageEnergy,
        value,
      );

  _i1.ColumnValue<double, double> groupingMeasurement(double? value) =>
      _i1.ColumnValue(
        table.groupingMeasurement,
        value,
      );

  _i1.ColumnValue<int, int> crackedCasings(int value) => _i1.ColumnValue(
    table.crackedCasings,
    value,
  );
}

class ReloadTestTable extends _i1.Table<_i1.UuidValue> {
  ReloadTestTable({super.tableRelation}) : super(tableName: 'reload_tests') {
    updateTable = ReloadTestUpdateTable(this);
    reloadSessionId = _i1.ColumnUuid(
      'reloadSessionId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    testDate = _i1.ColumnDateTime(
      'testDate',
      this,
    );
    shotsFired = _i1.ColumnInt(
      'shotsFired',
      this,
    );
    highestVelocityFps = _i1.ColumnDouble(
      'highestVelocityFps',
      this,
    );
    lowestVelocityFps = _i1.ColumnDouble(
      'lowestVelocityFps',
      this,
    );
    averageVelocityFps = _i1.ColumnDouble(
      'averageVelocityFps',
      this,
    );
    powerFactor = _i1.ColumnDouble(
      'powerFactor',
      this,
    );
    averageEnergy = _i1.ColumnDouble(
      'averageEnergy',
      this,
    );
    groupingMeasurement = _i1.ColumnDouble(
      'groupingMeasurement',
      this,
    );
    crackedCasings = _i1.ColumnInt(
      'crackedCasings',
      this,
    );
  }

  late final ReloadTestUpdateTable updateTable;

  late final _i1.ColumnUuid reloadSessionId;

  _i2.ReloadSessionTable? _reloadSession;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnDateTime testDate;

  late final _i1.ColumnInt shotsFired;

  late final _i1.ColumnDouble highestVelocityFps;

  late final _i1.ColumnDouble lowestVelocityFps;

  late final _i1.ColumnDouble averageVelocityFps;

  late final _i1.ColumnDouble powerFactor;

  late final _i1.ColumnDouble averageEnergy;

  late final _i1.ColumnDouble groupingMeasurement;

  late final _i1.ColumnInt crackedCasings;

  _i2.ReloadSessionTable get reloadSession {
    if (_reloadSession != null) return _reloadSession!;
    _reloadSession = _i1.createRelationTable(
      relationFieldName: 'reloadSession',
      field: ReloadTest.t.reloadSessionId,
      foreignField: _i2.ReloadSession.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ReloadSessionTable(tableRelation: foreignTableRelation),
    );
    return _reloadSession!;
  }

  _i3.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: ReloadTest.t.firearmId,
      foreignField: _i3.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'reloadSession') {
      return reloadSession;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class ReloadTestInclude extends _i1.IncludeObject {
  ReloadTestInclude._({
    _i2.ReloadSessionInclude? reloadSession,
    _i3.FirearmInclude? firearm,
  }) {
    _reloadSession = reloadSession;
    _firearm = firearm;
  }

  _i2.ReloadSessionInclude? _reloadSession;

  _i3.FirearmInclude? _firearm;

  @override
  Map<String, _i1.Include?> get includes => {
    'reloadSession': _reloadSession,
    'firearm': _firearm,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => ReloadTest.t;
}

class ReloadTestIncludeList extends _i1.IncludeList {
  ReloadTestIncludeList._({
    _i1.WhereExpressionBuilder<ReloadTestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReloadTest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => ReloadTest.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadTestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadTestTable>? orderByList,
    _i1.Transaction? transaction,
    ReloadTestInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ReloadTest>(
      where: where?.call(ReloadTest.t),
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadTestTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReloadTestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadTestTable>? orderByList,
    _i1.Transaction? transaction,
    ReloadTestInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ReloadTest>(
      where: where?.call(ReloadTest.t),
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ReloadTest] by its [id] or null if no such row exists.
  Future<ReloadTest?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ReloadTestInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<ReloadTest>> insert(
    _i1.DatabaseSession session,
    List<ReloadTest> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ReloadTest>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ReloadTest] and returns the inserted row.
  ///
  /// The returned [ReloadTest] will have its `id` field set.
  Future<ReloadTest> insertRow(
    _i1.DatabaseSession session,
    ReloadTest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ReloadTest>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ReloadTest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ReloadTest>> update(
    _i1.DatabaseSession session,
    List<ReloadTest> rows, {
    _i1.ColumnSelections<ReloadTestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ReloadTest>(
      rows,
      columns: columns?.call(ReloadTest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReloadTest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ReloadTest> updateRow(
    _i1.DatabaseSession session,
    ReloadTest row, {
    _i1.ColumnSelections<ReloadTestTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ReloadTestUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ReloadTest>(
      id,
      columnValues: columnValues(ReloadTest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadTest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ReloadTest>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ReloadTestUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ReloadTestTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadTestTable>? orderBy,
    _i1.OrderByListBuilder<ReloadTestTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ReloadTest>(
      columnValues: columnValues(ReloadTest.t.updateTable),
      where: where(ReloadTest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadTest.t),
      orderByList: orderByList?.call(ReloadTest.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ReloadTest]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ReloadTest>> delete(
    _i1.DatabaseSession session,
    List<ReloadTest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ReloadTest>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ReloadTest].
  Future<ReloadTest> deleteRow(
    _i1.DatabaseSession session,
    ReloadTest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ReloadTest>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ReloadTest>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ReloadTestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ReloadTest>(
      where: where(ReloadTest.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadTestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ReloadTest>(
      where: where?.call(ReloadTest.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ReloadTest] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ReloadTestTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    ReloadTest reloadTest,
    _i2.ReloadSession reloadSession, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadTest reloadTest,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadTest reloadTest, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadTest reloadTest, {
    _i1.Transaction? transaction,
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
