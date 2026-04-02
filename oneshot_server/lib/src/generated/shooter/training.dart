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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import '../shooter/ammunition_stock.dart' as _i4;
import 'package:oneshot_server/src/generated/protocol.dart' as _i5;

abstract class Training
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Training._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Training({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    _i4.AmmunitionStock? ammunition,
    required int shotsFired,
    required double distanceMeters,
    int? score,
    String? targetImagesUrl,
  }) = _TrainingImpl;

  factory Training.fromJson(Map<String, dynamic> jsonSerialization) {
    return Training(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      location: jsonSerialization['location'] as String,
      environmentType: jsonSerialization['environmentType'] as String,
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      ammunitionId: jsonSerialization['ammunitionId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['ammunitionId'],
            ),
      ammunition: jsonSerialization['ammunition'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.AmmunitionStock>(
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
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  DateTime date;

  String location;

  String environmentType;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

  _i1.UuidValue? ammunitionId;

  _i4.AmmunitionStock? ammunition;

  int shotsFired;

  double distanceMeters;

  int? score;

  String? targetImagesUrl;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Training]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Training copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    DateTime? date,
    String? location,
    String? environmentType,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    _i4.AmmunitionStock? ammunition,
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
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
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
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
    _i4.AmmunitionStockInclude? ammunition,
  }) {
    return TrainingInclude._(
      userInfo: userInfo,
      firearm: firearm,
      ammunition: ammunition,
    );
  }

  static TrainingIncludeList includeList({
    _i1.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TrainingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TrainingTable>? orderByList,
    TrainingInclude? include,
  }) {
    return TrainingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Training.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Training.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TrainingImpl extends Training {
  _TrainingImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime date,
    required String location,
    required String environmentType,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    _i1.UuidValue? ammunitionId,
    _i4.AmmunitionStock? ammunition,
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
  @_i1.useResult
  @override
  Training copyWith({
    _i1.UuidValue? id,
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
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      date: date ?? this.date,
      location: location ?? this.location,
      environmentType: environmentType ?? this.environmentType,
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      ammunitionId: ammunitionId is _i1.UuidValue?
          ? ammunitionId
          : this.ammunitionId,
      ammunition: ammunition is _i4.AmmunitionStock?
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

class TrainingUpdateTable extends _i1.UpdateTable<TrainingTable> {
  TrainingUpdateTable(super.table);

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> date(DateTime value) => _i1.ColumnValue(
    table.date,
    value,
  );

  _i1.ColumnValue<String, String> location(String value) => _i1.ColumnValue(
    table.location,
    value,
  );

  _i1.ColumnValue<String, String> environmentType(String value) =>
      _i1.ColumnValue(
        table.environmentType,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ammunitionId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.ammunitionId,
    value,
  );

  _i1.ColumnValue<int, int> shotsFired(int value) => _i1.ColumnValue(
    table.shotsFired,
    value,
  );

  _i1.ColumnValue<double, double> distanceMeters(double value) =>
      _i1.ColumnValue(
        table.distanceMeters,
        value,
      );

  _i1.ColumnValue<int, int> score(int? value) => _i1.ColumnValue(
    table.score,
    value,
  );

  _i1.ColumnValue<String, String> targetImagesUrl(String? value) =>
      _i1.ColumnValue(
        table.targetImagesUrl,
        value,
      );
}

class TrainingTable extends _i1.Table<_i1.UuidValue> {
  TrainingTable({super.tableRelation}) : super(tableName: 'trainings') {
    updateTable = TrainingUpdateTable(this);
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    environmentType = _i1.ColumnString(
      'environmentType',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    ammunitionId = _i1.ColumnUuid(
      'ammunitionId',
      this,
    );
    shotsFired = _i1.ColumnInt(
      'shotsFired',
      this,
    );
    distanceMeters = _i1.ColumnDouble(
      'distanceMeters',
      this,
    );
    score = _i1.ColumnInt(
      'score',
      this,
    );
    targetImagesUrl = _i1.ColumnString(
      'targetImagesUrl',
      this,
    );
  }

  late final TrainingUpdateTable updateTable;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString location;

  late final _i1.ColumnString environmentType;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnUuid ammunitionId;

  _i4.AmmunitionStockTable? _ammunition;

  late final _i1.ColumnInt shotsFired;

  late final _i1.ColumnDouble distanceMeters;

  late final _i1.ColumnInt score;

  late final _i1.ColumnString targetImagesUrl;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Training.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: Training.t.firearmId,
      foreignField: _i3.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  _i4.AmmunitionStockTable get ammunition {
    if (_ammunition != null) return _ammunition!;
    _ammunition = _i1.createRelationTable(
      relationFieldName: 'ammunition',
      field: Training.t.ammunitionId,
      foreignField: _i4.AmmunitionStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.AmmunitionStockTable(tableRelation: foreignTableRelation),
    );
    return _ammunition!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
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

class TrainingInclude extends _i1.IncludeObject {
  TrainingInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
    _i4.AmmunitionStockInclude? ammunition,
  }) {
    _userInfo = userInfo;
    _firearm = firearm;
    _ammunition = ammunition;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.FirearmInclude? _firearm;

  _i4.AmmunitionStockInclude? _ammunition;

  @override
  Map<String, _i1.Include?> get includes => {
    'userInfo': _userInfo,
    'firearm': _firearm,
    'ammunition': _ammunition,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Training.t;
}

class TrainingIncludeList extends _i1.IncludeList {
  TrainingIncludeList._({
    _i1.WhereExpressionBuilder<TrainingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Training.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Training.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TrainingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TrainingTable>? orderByList,
    _i1.Transaction? transaction,
    TrainingInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Training>(
      where: where?.call(Training.t),
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TrainingTable>? where,
    int? offset,
    _i1.OrderByBuilder<TrainingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TrainingTable>? orderByList,
    _i1.Transaction? transaction,
    TrainingInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Training>(
      where: where?.call(Training.t),
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Training] by its [id] or null if no such row exists.
  Future<Training?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    TrainingInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Training>> insert(
    _i1.DatabaseSession session,
    List<Training> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Training>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Training] and returns the inserted row.
  ///
  /// The returned [Training] will have its `id` field set.
  Future<Training> insertRow(
    _i1.DatabaseSession session,
    Training row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Training>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Training]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Training>> update(
    _i1.DatabaseSession session,
    List<Training> rows, {
    _i1.ColumnSelections<TrainingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Training>(
      rows,
      columns: columns?.call(Training.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Training]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Training> updateRow(
    _i1.DatabaseSession session,
    Training row, {
    _i1.ColumnSelections<TrainingTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<TrainingUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Training>(
      id,
      columnValues: columnValues(Training.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Training]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Training>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<TrainingUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TrainingTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TrainingTable>? orderBy,
    _i1.OrderByListBuilder<TrainingTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Training>(
      columnValues: columnValues(Training.t.updateTable),
      where: where(Training.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Training.t),
      orderByList: orderByList?.call(Training.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Training]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Training>> delete(
    _i1.DatabaseSession session,
    List<Training> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Training>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Training].
  Future<Training> deleteRow(
    _i1.DatabaseSession session,
    Training row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Training>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Training>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TrainingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Training>(
      where: where(Training.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TrainingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Training>(
      where: where?.call(Training.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Training] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TrainingTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Training training,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Training training,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Training training,
    _i4.AmmunitionStock ammunition, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Training training, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Training training, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Training training, {
    _i1.Transaction? transaction,
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
