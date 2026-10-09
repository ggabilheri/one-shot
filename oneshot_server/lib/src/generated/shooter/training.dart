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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i1n3uhu0;
import '../shooter/ammunition_stock.dart' as _idy3jb5r;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Training
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Training._({
    _is.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.date,
    required this.location,
    required this.environmentType,
    this.firearmId,
    this.firearm,
    this.ammunitionId,
    this.ammunition,
    required this.shotsFired,
    required this.distanceMeters,
    this.score,
    this.targetImagesUrl,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Training({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) = _TrainingImpl;

  factory Training.fromJson(Map<String, dynamic> jsonSerialization) {
    return Training(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      date: _is.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      location: jsonSerialization['location'] as String,
      environmentType: jsonSerialization['environmentType'] as String,
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      ammunitionId: jsonSerialization['ammunitionId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['ammunitionId'],
            ),
      ammunition: jsonSerialization['ammunition'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_idy3jb5r.AmmunitionStock>(
              jsonSerialization['ammunition'],
            ),
      shotsFired: jsonSerialization['shotsFired'] as int,
      distanceMeters: (jsonSerialization['distanceMeters'] as num).toDouble(),
      score: jsonSerialization['score'] as int?,
      targetImagesUrl: jsonSerialization['targetImagesUrl'] as String?,
    );
  }

  static final t = TrainingTable();

  static const db = TrainingRepository._();

  @override
  _is.UuidValue id;

  int? userInfoId;

  _i1n3uhu0.UserInfo? userInfo;

  DateTime date;

  String location;

  String environmentType;

  _is.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  _is.UuidValue? ammunitionId;

  _idy3jb5r.AmmunitionStock? ammunition;

  int shotsFired;

  double distanceMeters;

  int? score;

  String? targetImagesUrl;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Training copyWith({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    DateTime? date,
    String? location,
    String? environmentType,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    int? shotsFired,
    double? distanceMeters,
    int? score,
    String? targetImagesUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Training',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'date': date.toJson(),
      'location': location,
      'environmentType': environmentType,
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (ammunitionId != null) 'ammunitionId': ammunitionId?.toJson(),
      if (ammunition != null) 'ammunition': ammunition?.toJson(),
      'shotsFired': shotsFired,
      'distanceMeters': distanceMeters,
      if (score != null) 'score': score,
      if (targetImagesUrl != null) 'targetImagesUrl': targetImagesUrl,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Training',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'date': date.toJson(),
      'location': location,
      'environmentType': environmentType,
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      if (ammunitionId != null) 'ammunitionId': ammunitionId?.toJson(),
      if (ammunition != null) 'ammunition': ammunition?.toJsonForProtocol(),
      'shotsFired': shotsFired,
      'distanceMeters': distanceMeters,
      if (score != null) 'score': score,
      if (targetImagesUrl != null) 'targetImagesUrl': targetImagesUrl,
    };
  }

  static TrainingInclude include({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _i25s0fp9.FirearmInclude? firearm,
    _idy3jb5r.AmmunitionStockInclude? ammunition,
  }) {
    return TrainingInclude._(
      userInfo: userInfo,
      firearm: firearm,
      ammunition: ammunition,
    );
  }

  static TrainingIncludeList includeList({
    _is.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    TrainingInclude? include,
  }) {
    return TrainingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TrainingImpl extends Training {
  _TrainingImpl({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _is.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    _is.UuidValue? ammunitionId,
    _idy3jb5r.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         date: date,
         location: location,
         environmentType: environmentType,
         firearmId: firearmId,
         firearm: firearm,
         ammunitionId: ammunitionId,
         ammunition: ammunition,
         shotsFired: shotsFired,
         distanceMeters: distanceMeters,
         score: score,
         targetImagesUrl: targetImagesUrl,
       );

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Training copyWith({
    _is.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    DateTime? date,
    String? location,
    String? environmentType,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? ammunitionId = _Undefined,
    Object? ammunition = _Undefined,
    int? shotsFired,
    double? distanceMeters,
    Object? score = _Undefined,
    Object? targetImagesUrl = _Undefined,
  }) {
    return Training(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i1n3uhu0.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      date: date ?? this.date,
      location: location ?? this.location,
      environmentType: environmentType ?? this.environmentType,
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      ammunitionId: ammunitionId is _is.UuidValue?
          ? ammunitionId
          : this.ammunitionId,
      ammunition: ammunition is _idy3jb5r.AmmunitionStock?
          ? ammunition
          : this.ammunition?.copyWith(),
      shotsFired: shotsFired ?? this.shotsFired,
      distanceMeters: distanceMeters ?? this.distanceMeters,
      score: score is int? ? score : this.score,
      targetImagesUrl: targetImagesUrl is String?
          ? targetImagesUrl
          : this.targetImagesUrl,
    );
  }
}

class TrainingUpdateTable extends _is.UpdateTable<TrainingTable> {
  TrainingUpdateTable(super.table);

  _is.ColumnValue<int, int> userInfoId(int? value) =>
      _is.ColumnValue(table.userInfoId, value);

  _is.ColumnValue<DateTime, DateTime> date(DateTime value) =>
      _is.ColumnValue(table.date, value);

  _is.ColumnValue<String, String> location(String value) =>
      _is.ColumnValue(table.location, value);

  _is.ColumnValue<String, String> environmentType(String value) =>
      _is.ColumnValue(table.environmentType, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> ammunitionId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.ammunitionId, value);

  _is.ColumnValue<int, int> shotsFired(int value) =>
      _is.ColumnValue(table.shotsFired, value);

  _is.ColumnValue<double, double> distanceMeters(double value) =>
      _is.ColumnValue(table.distanceMeters, value);

  _is.ColumnValue<int, int> score(int? value) =>
      _is.ColumnValue(table.score, value);

  _is.ColumnValue<String, String> targetImagesUrl(String? value) =>
      _is.ColumnValue(table.targetImagesUrl, value);
}

class TrainingTable extends _is.Table<_is.UuidValue> {
  TrainingTable({super.tableRelation}) : super(tableName: 'trainings') {
    updateTable = TrainingUpdateTable(this);
    userInfoId = _is.ColumnInt('userInfoId', this);
    date = _is.ColumnDateTime('date', this);
    location = _is.ColumnString('location', this);
    environmentType = _is.ColumnString('environmentType', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    ammunitionId = _is.ColumnUuid('ammunitionId', this);
    shotsFired = _is.ColumnInt('shotsFired', this);
    distanceMeters = _is.ColumnDouble('distanceMeters', this);
    score = _is.ColumnInt('score', this);
    targetImagesUrl = _is.ColumnString('targetImagesUrl', this);
  }

  late final TrainingUpdateTable updateTable;

  late final _is.ColumnInt userInfoId;

  _i1n3uhu0.UserInfoTable? _userInfo;

  late final _is.ColumnDateTime date;

  late final _is.ColumnString location;

  late final _is.ColumnString environmentType;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnUuid ammunitionId;

  _idy3jb5r.AmmunitionStockTable? _ammunition;

  late final _is.ColumnInt shotsFired;

  late final _is.ColumnDouble distanceMeters;

  late final _is.ColumnInt score;

  late final _is.ColumnString targetImagesUrl;

  _i1n3uhu0.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _is.createRelationTable(
      relationFieldName: 'userInfo',
      field: Training.t.userInfoId,
      foreignField: _i1n3uhu0.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i1n3uhu0.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: Training.t.firearmId,
      foreignField: _i25s0fp9.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i25s0fp9.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  _idy3jb5r.AmmunitionStockTable get ammunition {
    if (_ammunition != null) return _ammunition!;
    _ammunition = _is.createRelationTable(
      relationFieldName: 'ammunition',
      field: Training.t.ammunitionId,
      foreignField: _idy3jb5r.AmmunitionStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _idy3jb5r.AmmunitionStockTable(tableRelation: foreignTableRelation),
    );
    return _ammunition!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userInfoId,
    date,
    location,
    environmentType,
    firearmId,
    ammunitionId,
    shotsFired,
    distanceMeters,
    score,
    targetImagesUrl,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    if (relationField == 'ammunition') {
      return ammunition;
    }
    return null;
  }
}

class TrainingInclude extends _is.IncludeObject {
  TrainingInclude._({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _i25s0fp9.FirearmInclude? firearm,
    _idy3jb5r.AmmunitionStockInclude? ammunition,
  }) {
    _userInfo = userInfo;
    _firearm = firearm;
    _ammunition = ammunition;
  }

  _i1n3uhu0.UserInfoInclude? _userInfo;

  _i25s0fp9.FirearmInclude? _firearm;

  _idy3jb5r.AmmunitionStockInclude? _ammunition;

  @override
  Map<String, _is.Include?> get includes => {
    'userInfo': _userInfo,
    'firearm': _firearm,
    'ammunition': _ammunition,
  };

  @override
  _is.Table<_is.UuidValue> get table => Training.t;
}

class TrainingIncludeList extends _is.IncludeList {
  TrainingIncludeList._({
    _is.WhereExpressionBuilder<TrainingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Training.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Training.t;
}

class TrainingRepository {
  const TrainingRepository._();

  final attachRow = const TrainingAttachRowRepository._();

  final detachRow = const TrainingDetachRowRepository._();

  /// Returns a list of [Training]s matching the given query parameters.
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
  Future<List<Training>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    _is.Transaction? transaction,
    TrainingInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Training>(
      where: where?.call(Training.t),
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Training] matching the given query parameters.
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
  Future<Training?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<TrainingTable>? where,
    int? offset,
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    _is.Transaction? transaction,
    TrainingInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Training>(
      where: where?.call(Training.t),
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Training] by its [id] or null if no such row exists.
  Future<Training?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    TrainingInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Training>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Training]s in the list and returns the inserted rows.
  ///
  /// The returned [Training]s will have their `id` fields set.
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
  Future<List<Training>> insert(
    _is.DatabaseSession session,
    List<Training> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Training>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Training] and returns the inserted row.
  ///
  /// The returned [Training] will have its `id` field set.
  Future<Training> insertRow(
    _is.DatabaseSession session,
    Training row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Training>(row, transaction: transaction);
  }

  /// Upserts all [Training]s in the list and returns the resulting rows.
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
  /// The returned [Training]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Training>> upsert(
    _is.DatabaseSession session,
    List<Training> rows, {
    required _is.ColumnSelections<TrainingTable> conflictColumns,
    _is.ColumnSelections<TrainingTable>? updateColumns,
    _is.WhereExpressionBuilder<TrainingTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Training>(
      rows,
      conflictColumns: conflictColumns(Training.t),
      updateColumns: updateColumns?.call(Training.t),
      updateWhere: updateWhere?.call(Training.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Training] and returns the resulting row.
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
  /// The returned [Training] will have its `id` field set.
  Future<Training?> upsertRow(
    _is.DatabaseSession session,
    Training row, {
    required _is.ColumnSelections<TrainingTable> conflictColumns,
    _is.ColumnSelections<TrainingTable>? updateColumns,
    _is.WhereExpressionBuilder<TrainingTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Training>(
      row,
      conflictColumns: conflictColumns(Training.t),
      updateColumns: updateColumns?.call(Training.t),
      updateWhere: updateWhere?.call(Training.t),
      transaction: transaction,
    );
  }

  /// Updates all [Training]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Training>> update(
    _is.DatabaseSession session,
    List<Training> rows, {
    _is.ColumnSelections<TrainingTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Training>(
      rows,
      columns: columns?.call(Training.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Training]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Training> updateRow(
    _is.DatabaseSession session,
    Training row, {
    _is.ColumnSelections<TrainingTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Training>(
      row,
      columns: columns?.call(Training.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Training] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Training?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<TrainingUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Training>(
      id,
      columnValues: columnValues(Training.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Training]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Training>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<TrainingUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<TrainingTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Training>(
      columnValues: columnValues(Training.t.updateTable),
      where: where(Training.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Training]s in the list and returns the deleted rows.
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
  Future<List<Training>> delete(
    _is.DatabaseSession session,
    List<Training> rows, {
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Training>(
      rows,
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Training].
  Future<Training> deleteRow(
    _is.DatabaseSession session,
    Training row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Training>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Training>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<TrainingTable> where,
    _is.OrderByBuilder<TrainingTable>? orderBy,
    _is.OrderByListBuilder<TrainingTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Training>(
      where: where(Training.t),
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Training>(
      where: where?.call(Training.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Training] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<TrainingTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Training>(
      where: where(Training.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class TrainingAttachRowRepository {
  const TrainingAttachRowRepository._();

  /// Creates a relation between the given [Training] and [UserInfo]
  /// by setting the [Training]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _is.DatabaseSession session,
    Training training,
    _i1n3uhu0.UserInfo userInfo, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $training = training.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Training] and [Firearm]
  /// by setting the [Training]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _is.DatabaseSession session,
    Training training,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $training = training.copyWith(firearmId: firearm.id);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.firearmId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Training] and [AmmunitionStock]
  /// by setting the [Training]'s foreign key `ammunitionId` to refer to the [AmmunitionStock].
  Future<void> ammunition(
    _is.DatabaseSession session,
    Training training,
    _idy3jb5r.AmmunitionStock ammunition, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }
    if (ammunition.id == null) {
      throw ArgumentError.notNull('ammunition.id');
    }

    var $training = training.copyWith(ammunitionId: ammunition.id);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.ammunitionId],
      transaction: transaction,
    );
  }
}

class TrainingDetachRowRepository {
  const TrainingDetachRowRepository._();

  /// Detaches the relation between this [Training] and the [UserInfo] set in `userInfo`
  /// by setting the [Training]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _is.DatabaseSession session,
    Training training, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }

    var $training = training.copyWith(userInfoId: null);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Training] and the [Firearm] set in `firearm`
  /// by setting the [Training]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _is.DatabaseSession session,
    Training training, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }

    var $training = training.copyWith(firearmId: null);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.firearmId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Training] and the [AmmunitionStock] set in `ammunition`
  /// by setting the [Training]'s foreign key `ammunitionId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> ammunition(
    _is.DatabaseSession session,
    Training training, {
    _is.Transaction? transaction,
  }) async {
    if (training.id == null) {
      throw ArgumentError.notNull('training.id');
    }

    var $training = training.copyWith(ammunitionId: null);
    await session.db.updateRow<Training>(
      $training,
      columns: [Training.t.ammunitionId],
      transaction: transaction,
    );
  }
}
