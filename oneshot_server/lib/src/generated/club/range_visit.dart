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
import '../club/club.dart' as _i3;
import '../shooter/firearm.dart' as _i4;
import 'package:oneshot_server/src/generated/protocol.dart' as _i5;

abstract class RangeVisit
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  RangeVisit._({
    _i1.UuidValue? id,
    this.userId,
    this.user,
    this.clubId,
    this.club,
    this.firearmId,
    this.firearm,
    required this.checkIn,
    this.checkOut,
    int? shotsFired,
    this.notes,
    bool? habitualityReportGenerated,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       shotsFired = shotsFired ?? 0,
       habitualityReportGenerated = habitualityReportGenerated ?? false;

  factory RangeVisit({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['user'],
            ),
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Club>(jsonSerialization['club']),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.Firearm>(
              jsonSerialization['firearm'],
            ),
      checkIn: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['checkIn']),
      checkOut: jsonSerialization['checkOut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['checkOut']),
      shotsFired: jsonSerialization['shotsFired'] as int?,
      notes: jsonSerialization['notes'] as String?,
      habitualityReportGenerated:
          jsonSerialization['habitualityReportGenerated'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(
              jsonSerialization['habitualityReportGenerated'],
            ),
    );
  }

  static final t = RangeVisitTable();

  static const db = RangeVisitRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  _i2.UserProfile? user;

  _i1.UuidValue? clubId;

  _i3.Club? club;

  _i1.UuidValue? firearmId;

  _i4.Firearm? firearm;

  DateTime checkIn;

  DateTime? checkOut;

  int shotsFired;

  String? notes;

  bool habitualityReportGenerated;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RangeVisit copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
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
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
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
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJsonForProtocol(),
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
    _i2.UserProfileInclude? user,
    _i3.ClubInclude? club,
    _i4.FirearmInclude? firearm,
  }) {
    return RangeVisitInclude._(
      user: user,
      club: club,
      firearm: firearm,
    );
  }

  static RangeVisitIncludeList includeList({
    _i1.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RangeVisitTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RangeVisitTable>? orderByList,
    RangeVisitInclude? include,
  }) {
    return RangeVisitIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RangeVisit.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RangeVisit.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RangeVisitImpl extends RangeVisit {
  _RangeVisitImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? clubId,
    _i3.Club? club,
    _i1.UuidValue? firearmId,
    _i4.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         clubId: clubId,
         club: club,
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
  @_i1.useResult
  @override
  RangeVisit copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
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
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i2.UserProfile? ? user : this.user?.copyWith(),
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i3.Club? ? club : this.club?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i4.Firearm? ? firearm : this.firearm?.copyWith(),
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut is DateTime? ? checkOut : this.checkOut,
      shotsFired: shotsFired ?? this.shotsFired,
      notes: notes is String? ? notes : this.notes,
      habitualityReportGenerated:
          habitualityReportGenerated ?? this.habitualityReportGenerated,
    );
  }
}

class RangeVisitUpdateTable extends _i1.UpdateTable<RangeVisitTable> {
  RangeVisitUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> clubId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.clubId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> checkIn(DateTime value) =>
      _i1.ColumnValue(
        table.checkIn,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> checkOut(DateTime? value) =>
      _i1.ColumnValue(
        table.checkOut,
        value,
      );

  _i1.ColumnValue<int, int> shotsFired(int value) => _i1.ColumnValue(
    table.shotsFired,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<bool, bool> habitualityReportGenerated(bool value) =>
      _i1.ColumnValue(
        table.habitualityReportGenerated,
        value,
      );
}

class RangeVisitTable extends _i1.Table<_i1.UuidValue> {
  RangeVisitTable({super.tableRelation}) : super(tableName: 'range_visits') {
    updateTable = RangeVisitUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    clubId = _i1.ColumnUuid(
      'clubId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    checkIn = _i1.ColumnDateTime(
      'checkIn',
      this,
    );
    checkOut = _i1.ColumnDateTime(
      'checkOut',
      this,
    );
    shotsFired = _i1.ColumnInt(
      'shotsFired',
      this,
      hasDefault: true,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    habitualityReportGenerated = _i1.ColumnBool(
      'habitualityReportGenerated',
      this,
      hasDefault: true,
    );
  }

  late final RangeVisitUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  _i2.UserProfileTable? _user;

  late final _i1.ColumnUuid clubId;

  _i3.ClubTable? _club;

  late final _i1.ColumnUuid firearmId;

  _i4.FirearmTable? _firearm;

  late final _i1.ColumnDateTime checkIn;

  late final _i1.ColumnDateTime checkOut;

  late final _i1.ColumnInt shotsFired;

  late final _i1.ColumnString notes;

  late final _i1.ColumnBool habitualityReportGenerated;

  _i2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: RangeVisit.t.userId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.ClubTable get club {
    if (_club != null) return _club!;
    _club = _i1.createRelationTable(
      relationFieldName: 'club',
      field: RangeVisit.t.clubId,
      foreignField: _i3.Club.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ClubTable(tableRelation: foreignTableRelation),
    );
    return _club!;
  }

  _i4.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: RangeVisit.t.firearmId,
      foreignField: _i4.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    clubId,
    firearmId,
    checkIn,
    checkOut,
    shotsFired,
    notes,
    habitualityReportGenerated,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'club') {
      return club;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class RangeVisitInclude extends _i1.IncludeObject {
  RangeVisitInclude._({
    _i2.UserProfileInclude? user,
    _i3.ClubInclude? club,
    _i4.FirearmInclude? firearm,
  }) {
    _user = user;
    _club = club;
    _firearm = firearm;
  }

  _i2.UserProfileInclude? _user;

  _i3.ClubInclude? _club;

  _i4.FirearmInclude? _firearm;

  @override
  Map<String, _i1.Include?> get includes => {
    'user': _user,
    'club': _club,
    'firearm': _firearm,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => RangeVisit.t;
}

class RangeVisitIncludeList extends _i1.IncludeList {
  RangeVisitIncludeList._({
    _i1.WhereExpressionBuilder<RangeVisitTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RangeVisit.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => RangeVisit.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RangeVisitTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RangeVisitTable>? orderByList,
    _i1.Transaction? transaction,
    RangeVisitInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RangeVisit>(
      where: where?.call(RangeVisit.t),
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RangeVisitTable>? where,
    int? offset,
    _i1.OrderByBuilder<RangeVisitTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RangeVisitTable>? orderByList,
    _i1.Transaction? transaction,
    RangeVisitInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RangeVisit>(
      where: where?.call(RangeVisit.t),
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RangeVisit] by its [id] or null if no such row exists.
  Future<RangeVisit?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    RangeVisitInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<RangeVisit>> insert(
    _i1.DatabaseSession session,
    List<RangeVisit> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<RangeVisit>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [RangeVisit] and returns the inserted row.
  ///
  /// The returned [RangeVisit] will have its `id` field set.
  Future<RangeVisit> insertRow(
    _i1.DatabaseSession session,
    RangeVisit row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RangeVisit>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RangeVisit]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RangeVisit>> update(
    _i1.DatabaseSession session,
    List<RangeVisit> rows, {
    _i1.ColumnSelections<RangeVisitTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RangeVisit>(
      rows,
      columns: columns?.call(RangeVisit.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RangeVisit]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RangeVisit> updateRow(
    _i1.DatabaseSession session,
    RangeVisit row, {
    _i1.ColumnSelections<RangeVisitTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<RangeVisitUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<RangeVisit>(
      id,
      columnValues: columnValues(RangeVisit.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RangeVisit]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<RangeVisit>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<RangeVisitUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RangeVisitTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RangeVisitTable>? orderBy,
    _i1.OrderByListBuilder<RangeVisitTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<RangeVisit>(
      columnValues: columnValues(RangeVisit.t.updateTable),
      where: where(RangeVisit.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RangeVisit.t),
      orderByList: orderByList?.call(RangeVisit.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [RangeVisit]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RangeVisit>> delete(
    _i1.DatabaseSession session,
    List<RangeVisit> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RangeVisit>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RangeVisit].
  Future<RangeVisit> deleteRow(
    _i1.DatabaseSession session,
    RangeVisit row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RangeVisit>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RangeVisit>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RangeVisitTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RangeVisit>(
      where: where(RangeVisit.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RangeVisitTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RangeVisit>(
      where: where?.call(RangeVisit.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RangeVisit] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RangeVisitTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    RangeVisit rangeVisit,
    _i2.UserProfile user, {
    _i1.Transaction? transaction,
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

  /// Creates a relation between the given [RangeVisit] and [Club]
  /// by setting the [RangeVisit]'s foreign key `clubId` to refer to the [Club].
  Future<void> club(
    _i1.DatabaseSession session,
    RangeVisit rangeVisit,
    _i3.Club club, {
    _i1.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }
    if (club.id == null) {
      throw ArgumentError.notNull('club.id');
    }

    var $rangeVisit = rangeVisit.copyWith(clubId: club.id);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.clubId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RangeVisit] and [Firearm]
  /// by setting the [RangeVisit]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _i1.DatabaseSession session,
    RangeVisit rangeVisit,
    _i4.Firearm firearm, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    RangeVisit rangeVisit, {
    _i1.Transaction? transaction,
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

  /// Detaches the relation between this [RangeVisit] and the [Club] set in `club`
  /// by setting the [RangeVisit]'s foreign key `clubId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> club(
    _i1.DatabaseSession session,
    RangeVisit rangeVisit, {
    _i1.Transaction? transaction,
  }) async {
    if (rangeVisit.id == null) {
      throw ArgumentError.notNull('rangeVisit.id');
    }

    var $rangeVisit = rangeVisit.copyWith(clubId: null);
    await session.db.updateRow<RangeVisit>(
      $rangeVisit,
      columns: [RangeVisit.t.clubId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [RangeVisit] and the [Firearm] set in `firearm`
  /// by setting the [RangeVisit]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _i1.DatabaseSession session,
    RangeVisit rangeVisit, {
    _i1.Transaction? transaction,
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
