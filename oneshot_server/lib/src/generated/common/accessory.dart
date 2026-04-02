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
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class Accessory
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Accessory._({
    _i1.UuidValue? id,
    this.userId,
    this.userInfoId,
    this.userInfo,
    this.firearmId,
    this.firearmId,
    this.firearm,
    required this.purpose,
    required this.type,
    required this.manufacturer,
    required this.model,
    this.serialNumber,
    required this.condition,
    this.purchasePrice,
    this.acquisitionDate,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Accessory({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    required String purpose,
    required String type,
    required String manufacturer,
    required String model,
    String? serialNumber,
    required String condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  }) = _AccessoryImpl;

  factory Accessory.fromJson(Map<String, dynamic> jsonSerialization) {
    return Accessory(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      purpose: jsonSerialization['purpose'] as String,
      type: jsonSerialization['type'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String?,
      condition: jsonSerialization['condition'] as String,
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
    );
  }

  static final t = AccessoryTable();

  static const db = AccessoryRepository._();

  @override
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  _i1.UuidValue? firearmId;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

  String purpose;

  String type;

  String manufacturer;

  String model;

  String? serialNumber;

  String condition;

  double? purchasePrice;

  DateTime? acquisitionDate;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Accessory copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    String? purpose,
    String? type,
    String? manufacturer,
    String? model,
    String? serialNumber,
    String? condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Accessory',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'purpose': purpose,
      'type': type,
      'manufacturer': manufacturer,
      'model': model,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Accessory',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'purpose': purpose,
      'type': type,
      'manufacturer': manufacturer,
      'model': model,
      if (serialNumber != null) 'serialNumber': serialNumber,
      'condition': condition,
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
    };
  }

  static AccessoryInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
  }) {
    return AccessoryInclude._(
      userInfo: userInfo,
      firearm: firearm,
    );
  }

  static AccessoryIncludeList includeList({
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    AccessoryInclude? include,
  }) {
    return AccessoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Accessory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AccessoryImpl extends Accessory {
  _AccessoryImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    _i1.UuidValue? firearmId,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    required String purpose,
    required String type,
    required String manufacturer,
    required String model,
    String? serialNumber,
    required String condition,
    double? purchasePrice,
    DateTime? acquisitionDate,
  }) : super._(
         id: id,
         userId: userId,
         userInfoId: userInfoId,
         userInfo: userInfo,
         firearmId: firearmId,
         firearm: firearm,
         purpose: purpose,
         type: type,
         manufacturer: manufacturer,
         model: model,
         serialNumber: serialNumber,
         condition: condition,
         purchasePrice: purchasePrice,
         acquisitionDate: acquisitionDate,
       );

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Accessory copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    String? purpose,
    String? type,
    String? manufacturer,
    String? model,
    Object? serialNumber = _Undefined,
    String? condition,
    Object? purchasePrice = _Undefined,
    Object? acquisitionDate = _Undefined,
  }) {
    return Accessory(
      id: id ?? this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      purpose: purpose ?? this.purpose,
      type: type ?? this.type,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      condition: condition ?? this.condition,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
    );
  }
}

class AccessoryUpdateTable extends _i1.UpdateTable<AccessoryTable> {
  AccessoryUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<String, String> purpose(String value) => _i1.ColumnValue(
    table.purpose,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> manufacturer(String value) => _i1.ColumnValue(
    table.manufacturer,
    value,
  );

  _i1.ColumnValue<String, String> model(String value) => _i1.ColumnValue(
    table.model,
    value,
  );

  _i1.ColumnValue<String, String> serialNumber(String? value) =>
      _i1.ColumnValue(
        table.serialNumber,
        value,
      );

  _i1.ColumnValue<String, String> condition(String value) => _i1.ColumnValue(
    table.condition,
    value,
  );

  _i1.ColumnValue<double, double> purchasePrice(double? value) =>
      _i1.ColumnValue(
        table.purchasePrice,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _i1.ColumnValue(
        table.acquisitionDate,
        value,
      );
}

class AccessoryTable extends _i1.Table<_i1.UuidValue> {
  AccessoryTable({super.tableRelation}) : super(tableName: 'accessories') {
    updateTable = AccessoryUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    purpose = _i1.ColumnString(
      'purpose',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    manufacturer = _i1.ColumnString(
      'manufacturer',
      this,
    );
    model = _i1.ColumnString(
      'model',
      this,
    );
    serialNumber = _i1.ColumnString(
      'serialNumber',
      this,
    );
    condition = _i1.ColumnString(
      'condition',
      this,
    );
    purchasePrice = _i1.ColumnDouble(
      'purchasePrice',
      this,
    );
    acquisitionDate = _i1.ColumnDateTime(
      'acquisitionDate',
      this,
    );
  }

  late final AccessoryUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnUuid firearmId;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnString purpose;

  late final _i1.ColumnString type;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnString model;

  late final _i1.ColumnString serialNumber;

  late final _i1.ColumnString condition;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnDateTime acquisitionDate;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Accessory.t.userInfoId,
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
      field: Accessory.t.firearmId,
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
    userId,
    userInfoId,
    firearmId,
    firearmId,
    purpose,
    type,
    manufacturer,
    model,
    serialNumber,
    condition,
    purchasePrice,
    acquisitionDate,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class AccessoryInclude extends _i1.IncludeObject {
  AccessoryInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.FirearmInclude? firearm,
  }) {
    _userInfo = userInfo;
    _firearm = firearm;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.FirearmInclude? _firearm;

  @override
  Map<String, _i1.Include?> get includes => {
    'userInfo': _userInfo,
    'firearm': _firearm,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Accessory.t;
}

class AccessoryIncludeList extends _i1.IncludeList {
  AccessoryIncludeList._({
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Accessory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Accessory.t;
}

class AccessoryRepository {
  const AccessoryRepository._();

  final attachRow = const AccessoryAttachRowRepository._();

  final detachRow = const AccessoryDetachRowRepository._();

  /// Returns a list of [Accessory]s matching the given query parameters.
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
  Future<List<Accessory>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Accessory] matching the given query parameters.
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
  Future<Accessory?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Accessory] by its [id] or null if no such row exists.
  Future<Accessory?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Accessory>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Accessory]s in the list and returns the inserted rows.
  ///
  /// The returned [Accessory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Accessory>> insert(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Accessory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Accessory] and returns the inserted row.
  ///
  /// The returned [Accessory] will have its `id` field set.
  Future<Accessory> insertRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Accessory>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Accessory>> update(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.ColumnSelections<AccessoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Accessory>(
      rows,
      columns: columns?.call(Accessory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Accessory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Accessory> updateRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.ColumnSelections<AccessoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Accessory>(
      row,
      columns: columns?.call(Accessory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Accessory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Accessory?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Accessory>(
      id,
      columnValues: columnValues(Accessory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Accessory>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Accessory>(
      columnValues: columnValues(Accessory.t.updateTable),
      where: where(Accessory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Accessory]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Accessory>> delete(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Accessory>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Accessory].
  Future<Accessory> deleteRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Accessory>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Accessory>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Accessory>(
      where: where(Accessory.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Accessory>(
      where: where?.call(Accessory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Accessory] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Accessory>(
      where: where(Accessory.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class AccessoryAttachRowRepository {
  const AccessoryAttachRowRepository._();

  /// Creates a relation between the given [Accessory] and [UserInfo]
  /// by setting the [Accessory]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Accessory accessory,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $accessory = accessory.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Accessory] and [Firearm]
  /// by setting the [Accessory]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _i1.DatabaseSession session,
    Accessory accessory,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $accessory = accessory.copyWith(firearmId: firearm.id);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.firearmId],
      transaction: transaction,
    );
  }
}

class AccessoryDetachRowRepository {
  const AccessoryDetachRowRepository._();

  /// Detaches the relation between this [Accessory] and the [UserInfo] set in `userInfo`
  /// by setting the [Accessory]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Accessory accessory, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }

    var $accessory = accessory.copyWith(userInfoId: null);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Accessory] and the [Firearm] set in `firearm`
  /// by setting the [Accessory]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _i1.DatabaseSession session,
    Accessory accessory, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }

    var $accessory = accessory.copyWith(firearmId: null);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.firearmId],
      transaction: transaction,
    );
  }
}
