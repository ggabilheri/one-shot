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
import '../enums/membership_status.dart' as _i2;
import '../common/user_profile.dart' as _i3;
import '../club/club.dart' as _i4;
import 'package:oneshot_server/src/generated/protocol.dart' as _i5;

abstract class Membership
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Membership._({
    _i1.UuidValue? id,
    this.userId,
    this.userId,
    this.user,
    this.clubId,
    this.clubId,
    this.club,
    this.membershipNumber,
    required this.startDate,
    this.validUntil,
    _i2.MembershipStatus? status,
    this.planName,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       status = status ?? _i2.MembershipStatus.active;

  factory Membership({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  }) = _MembershipImpl;

  factory Membership.fromJson(Map<String, dynamic> jsonSerialization) {
    return Membership(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.UserProfile>(
              jsonSerialization['user'],
            ),
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.Club>(jsonSerialization['club']),
      membershipNumber: jsonSerialization['membershipNumber'] as String?,
      startDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['validUntil']),
      status: jsonSerialization['status'] == null
          ? null
          : _i2.MembershipStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      planName: jsonSerialization['planName'] as String?,
    );
  }

  static final t = MembershipTable();

  static const db = MembershipRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  _i1.UuidValue? userId;

  _i3.UserProfile? user;

  _i1.UuidValue? clubId;

  _i1.UuidValue? clubId;

  _i4.Club? club;

  String? membershipNumber;

  DateTime startDate;

  DateTime? validUntil;

  _i2.MembershipStatus status;

  String? planName;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Membership copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    DateTime? startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Membership',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
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
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJsonForProtocol(),
      if (membershipNumber != null) 'membershipNumber': membershipNumber,
      'startDate': startDate.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      'status': status.toJson(),
      if (planName != null) 'planName': planName,
    };
  }

  static MembershipInclude include({
    _i3.UserProfileInclude? user,
    _i4.ClubInclude? club,
  }) {
    return MembershipInclude._(
      user: user,
      club: club,
    );
  }

  static MembershipIncludeList includeList({
    _i1.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MembershipTable>? orderByList,
    MembershipInclude? include,
  }) {
    return MembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Membership.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Membership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MembershipImpl extends Membership {
  _MembershipImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i1.UuidValue? userId,
    _i3.UserProfile? user,
    _i1.UuidValue? clubId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    String? membershipNumber,
    required DateTime startDate,
    DateTime? validUntil,
    _i2.MembershipStatus? status,
    String? planName,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         clubId: clubId,
         club: club,
         membershipNumber: membershipNumber,
         startDate: startDate,
         validUntil: validUntil,
         status: status,
         planName: planName,
       );

  /// Returns a shallow copy of this [Membership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Membership copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? clubId = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
    Object? membershipNumber = _Undefined,
    DateTime? startDate,
    Object? validUntil = _Undefined,
    _i2.MembershipStatus? status,
    Object? planName = _Undefined,
  }) {
    return Membership(
      id: id ?? this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i3.UserProfile? ? user : this.user?.copyWith(),
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i4.Club? ? club : this.club?.copyWith(),
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

class MembershipUpdateTable extends _i1.UpdateTable<MembershipTable> {
  MembershipUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

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

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> clubId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.clubId,
        value,
      );

  _i1.ColumnValue<String, String> membershipNumber(String? value) =>
      _i1.ColumnValue(
        table.membershipNumber,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> startDate(DateTime value) =>
      _i1.ColumnValue(
        table.startDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> validUntil(DateTime? value) =>
      _i1.ColumnValue(
        table.validUntil,
        value,
      );

  _i1.ColumnValue<_i2.MembershipStatus, _i2.MembershipStatus> status(
    _i2.MembershipStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> planName(String? value) => _i1.ColumnValue(
    table.planName,
    value,
  );
}

class MembershipTable extends _i1.Table<_i1.UuidValue> {
  MembershipTable({super.tableRelation}) : super(tableName: 'memberships') {
    updateTable = MembershipUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    clubId = _i1.ColumnUuid(
      'clubId',
      this,
    );
    clubId = _i1.ColumnUuid(
      'clubId',
      this,
    );
    membershipNumber = _i1.ColumnString(
      'membershipNumber',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    validUntil = _i1.ColumnDateTime(
      'validUntil',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    planName = _i1.ColumnString(
      'planName',
      this,
    );
  }

  late final MembershipUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  late final _i1.ColumnUuid userId;

  _i3.UserProfileTable? _user;

  late final _i1.ColumnUuid clubId;

  late final _i1.ColumnUuid clubId;

  _i4.ClubTable? _club;

  late final _i1.ColumnString membershipNumber;

  late final _i1.ColumnDateTime startDate;

  late final _i1.ColumnDateTime validUntil;

  late final _i1.ColumnEnum<_i2.MembershipStatus> status;

  late final _i1.ColumnString planName;

  _i3.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Membership.t.userId,
      foreignField: _i3.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i4.ClubTable get club {
    if (_club != null) return _club!;
    _club = _i1.createRelationTable(
      relationFieldName: 'club',
      field: Membership.t.clubId,
      foreignField: _i4.Club.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ClubTable(tableRelation: foreignTableRelation),
    );
    return _club!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    userId,
    clubId,
    clubId,
    membershipNumber,
    startDate,
    validUntil,
    status,
    planName,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'club') {
      return club;
    }
    return null;
  }
}

class MembershipInclude extends _i1.IncludeObject {
  MembershipInclude._({
    _i3.UserProfileInclude? user,
    _i4.ClubInclude? club,
  }) {
    _user = user;
    _club = club;
  }

  _i3.UserProfileInclude? _user;

  _i4.ClubInclude? _club;

  @override
  Map<String, _i1.Include?> get includes => {
    'user': _user,
    'club': _club,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Membership.t;
}

class MembershipIncludeList extends _i1.IncludeList {
  MembershipIncludeList._({
    _i1.WhereExpressionBuilder<MembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Membership.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Membership.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MembershipTable>? orderByList,
    _i1.Transaction? transaction,
    MembershipInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Membership>(
      where: where?.call(Membership.t),
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<MembershipTable>? where,
    int? offset,
    _i1.OrderByBuilder<MembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MembershipTable>? orderByList,
    _i1.Transaction? transaction,
    MembershipInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Membership>(
      where: where?.call(Membership.t),
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Membership] by its [id] or null if no such row exists.
  Future<Membership?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    MembershipInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Membership>> insert(
    _i1.DatabaseSession session,
    List<Membership> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Membership>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Membership] and returns the inserted row.
  ///
  /// The returned [Membership] will have its `id` field set.
  Future<Membership> insertRow(
    _i1.DatabaseSession session,
    Membership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Membership>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Membership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Membership>> update(
    _i1.DatabaseSession session,
    List<Membership> rows, {
    _i1.ColumnSelections<MembershipTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Membership>(
      rows,
      columns: columns?.call(Membership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Membership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Membership> updateRow(
    _i1.DatabaseSession session,
    Membership row, {
    _i1.ColumnSelections<MembershipTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<MembershipUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Membership>(
      id,
      columnValues: columnValues(Membership.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Membership]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Membership>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<MembershipUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MembershipTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MembershipTable>? orderBy,
    _i1.OrderByListBuilder<MembershipTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Membership>(
      columnValues: columnValues(Membership.t.updateTable),
      where: where(Membership.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Membership.t),
      orderByList: orderByList?.call(Membership.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Membership]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Membership>> delete(
    _i1.DatabaseSession session,
    List<Membership> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Membership>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Membership].
  Future<Membership> deleteRow(
    _i1.DatabaseSession session,
    Membership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Membership>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Membership>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<MembershipTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Membership>(
      where: where(Membership.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<MembershipTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Membership>(
      where: where?.call(Membership.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Membership] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<MembershipTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Membership membership,
    _i3.UserProfile user, {
    _i1.Transaction? transaction,
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

  /// Creates a relation between the given [Membership] and [Club]
  /// by setting the [Membership]'s foreign key `clubId` to refer to the [Club].
  Future<void> club(
    _i1.DatabaseSession session,
    Membership membership,
    _i4.Club club, {
    _i1.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }
    if (club.id == null) {
      throw ArgumentError.notNull('club.id');
    }

    var $membership = membership.copyWith(clubId: club.id);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.clubId],
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
    _i1.DatabaseSession session,
    Membership membership, {
    _i1.Transaction? transaction,
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

  /// Detaches the relation between this [Membership] and the [Club] set in `club`
  /// by setting the [Membership]'s foreign key `clubId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> club(
    _i1.DatabaseSession session,
    Membership membership, {
    _i1.Transaction? transaction,
  }) async {
    if (membership.id == null) {
      throw ArgumentError.notNull('membership.id');
    }

    var $membership = membership.copyWith(clubId: null);
    await session.db.updateRow<Membership>(
      $membership,
      columns: [Membership.t.clubId],
      transaction: transaction,
    );
  }
}
