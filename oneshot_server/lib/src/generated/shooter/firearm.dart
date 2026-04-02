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
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class Firearm
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Firearm._({
    _i1.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.purpose,
    required this.type,
    required this.action,
    required this.usageType,
    required this.serialNumber,
    required this.manufactureCountry,
    required this.manufacturer,
    required this.model,
    required this.caliber,
    required this.magazineCapacity,
    required this.barrelLength,
    required this.weight,
    this.acquisitionDate,
    this.purchasePrice,
    this.saleDate,
    this.salePrice,
    required this.condition,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Firearm({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String purpose,
    required String type,
    required String action,
    required String usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    required String caliber,
    required int magazineCapacity,
    required String barrelLength,
    required double weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    required String condition,
  }) = _FirearmImpl;

  factory Firearm.fromJson(Map<String, dynamic> jsonSerialization) {
    return Firearm(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      purpose: jsonSerialization['purpose'] as String,
      type: jsonSerialization['type'] as String,
      action: jsonSerialization['action'] as String,
      usageType: jsonSerialization['usageType'] as String,
      serialNumber: jsonSerialization['serialNumber'] as String,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      caliber: jsonSerialization['caliber'] as String,
      magazineCapacity: jsonSerialization['magazineCapacity'] as int,
      barrelLength: jsonSerialization['barrelLength'] as String,
      weight: (jsonSerialization['weight'] as num).toDouble(),
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      saleDate: jsonSerialization['saleDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['saleDate']),
      salePrice: (jsonSerialization['salePrice'] as num?)?.toDouble(),
      condition: jsonSerialization['condition'] as String,
    );
  }

  static final t = FirearmTable();

  static const db = FirearmRepository._();

  @override
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  String purpose;

  String type;

  String action;

  String usageType;

  String serialNumber;

  String manufactureCountry;

  String manufacturer;

  String model;

  String caliber;

  int magazineCapacity;

  String barrelLength;

  double weight;

  DateTime? acquisitionDate;

  double? purchasePrice;

  DateTime? saleDate;

  double? salePrice;

  String condition;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Firearm copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? purpose,
    String? type,
    String? action,
    String? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? caliber,
    int? magazineCapacity,
    String? barrelLength,
    double? weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    String? condition,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Firearm',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'purpose': purpose,
      'type': type,
      'action': action,
      'usageType': usageType,
      'serialNumber': serialNumber,
      'manufactureCountry': manufactureCountry,
      'manufacturer': manufacturer,
      'model': model,
      'caliber': caliber,
      'magazineCapacity': magazineCapacity,
      'barrelLength': barrelLength,
      'weight': weight,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (saleDate != null) 'saleDate': saleDate?.toJson(),
      if (salePrice != null) 'salePrice': salePrice,
      'condition': condition,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Firearm',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'purpose': purpose,
      'type': type,
      'action': action,
      'usageType': usageType,
      'serialNumber': serialNumber,
      'manufactureCountry': manufactureCountry,
      'manufacturer': manufacturer,
      'model': model,
      'caliber': caliber,
      'magazineCapacity': magazineCapacity,
      'barrelLength': barrelLength,
      'weight': weight,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (saleDate != null) 'saleDate': saleDate?.toJson(),
      if (salePrice != null) 'salePrice': salePrice,
      'condition': condition,
    };
  }

  static FirearmInclude include({_i2.UserInfoInclude? userInfo}) {
    return FirearmInclude._(userInfo: userInfo);
  }

  static FirearmIncludeList includeList({
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    FirearmInclude? include,
  }) {
    return FirearmIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Firearm.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FirearmImpl extends Firearm {
  _FirearmImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String purpose,
    required String type,
    required String action,
    required String usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    required String caliber,
    required int magazineCapacity,
    required String barrelLength,
    required double weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    required String condition,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         purpose: purpose,
         type: type,
         action: action,
         usageType: usageType,
         serialNumber: serialNumber,
         manufactureCountry: manufactureCountry,
         manufacturer: manufacturer,
         model: model,
         caliber: caliber,
         magazineCapacity: magazineCapacity,
         barrelLength: barrelLength,
         weight: weight,
         acquisitionDate: acquisitionDate,
         purchasePrice: purchasePrice,
         saleDate: saleDate,
         salePrice: salePrice,
         condition: condition,
       );

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Firearm copyWith({
    _i1.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? purpose,
    String? type,
    String? action,
    String? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? caliber,
    int? magazineCapacity,
    String? barrelLength,
    double? weight,
    Object? acquisitionDate = _Undefined,
    Object? purchasePrice = _Undefined,
    Object? saleDate = _Undefined,
    Object? salePrice = _Undefined,
    String? condition,
  }) {
    return Firearm(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      purpose: purpose ?? this.purpose,
      type: type ?? this.type,
      action: action ?? this.action,
      usageType: usageType ?? this.usageType,
      serialNumber: serialNumber ?? this.serialNumber,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      caliber: caliber ?? this.caliber,
      magazineCapacity: magazineCapacity ?? this.magazineCapacity,
      barrelLength: barrelLength ?? this.barrelLength,
      weight: weight ?? this.weight,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      saleDate: saleDate is DateTime? ? saleDate : this.saleDate,
      salePrice: salePrice is double? ? salePrice : this.salePrice,
      condition: condition ?? this.condition,
    );
  }
}

class FirearmUpdateTable extends _i1.UpdateTable<FirearmTable> {
  FirearmUpdateTable(super.table);

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
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

  _i1.ColumnValue<String, String> action(String value) => _i1.ColumnValue(
    table.action,
    value,
  );

  _i1.ColumnValue<String, String> usageType(String value) => _i1.ColumnValue(
    table.usageType,
    value,
  );

  _i1.ColumnValue<String, String> serialNumber(String value) => _i1.ColumnValue(
    table.serialNumber,
    value,
  );

  _i1.ColumnValue<String, String> manufactureCountry(String value) =>
      _i1.ColumnValue(
        table.manufactureCountry,
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

  _i1.ColumnValue<String, String> caliber(String value) => _i1.ColumnValue(
    table.caliber,
    value,
  );

  _i1.ColumnValue<int, int> magazineCapacity(int value) => _i1.ColumnValue(
    table.magazineCapacity,
    value,
  );

  _i1.ColumnValue<String, String> barrelLength(String value) => _i1.ColumnValue(
    table.barrelLength,
    value,
  );

  _i1.ColumnValue<double, double> weight(double value) => _i1.ColumnValue(
    table.weight,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _i1.ColumnValue(
        table.acquisitionDate,
        value,
      );

  _i1.ColumnValue<double, double> purchasePrice(double? value) =>
      _i1.ColumnValue(
        table.purchasePrice,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> saleDate(DateTime? value) =>
      _i1.ColumnValue(
        table.saleDate,
        value,
      );

  _i1.ColumnValue<double, double> salePrice(double? value) => _i1.ColumnValue(
    table.salePrice,
    value,
  );

  _i1.ColumnValue<String, String> condition(String value) => _i1.ColumnValue(
    table.condition,
    value,
  );
}

class FirearmTable extends _i1.Table<_i1.UuidValue> {
  FirearmTable({super.tableRelation}) : super(tableName: 'firearms') {
    updateTable = FirearmUpdateTable(this);
    userInfoId = _i1.ColumnInt(
      'userInfoId',
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
    action = _i1.ColumnString(
      'action',
      this,
    );
    usageType = _i1.ColumnString(
      'usageType',
      this,
    );
    serialNumber = _i1.ColumnString(
      'serialNumber',
      this,
    );
    manufactureCountry = _i1.ColumnString(
      'manufactureCountry',
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
    caliber = _i1.ColumnString(
      'caliber',
      this,
    );
    magazineCapacity = _i1.ColumnInt(
      'magazineCapacity',
      this,
    );
    barrelLength = _i1.ColumnString(
      'barrelLength',
      this,
    );
    weight = _i1.ColumnDouble(
      'weight',
      this,
    );
    acquisitionDate = _i1.ColumnDateTime(
      'acquisitionDate',
      this,
    );
    purchasePrice = _i1.ColumnDouble(
      'purchasePrice',
      this,
    );
    saleDate = _i1.ColumnDateTime(
      'saleDate',
      this,
    );
    salePrice = _i1.ColumnDouble(
      'salePrice',
      this,
    );
    condition = _i1.ColumnString(
      'condition',
      this,
    );
  }

  late final FirearmUpdateTable updateTable;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnString purpose;

  late final _i1.ColumnString type;

  late final _i1.ColumnString action;

  late final _i1.ColumnString usageType;

  late final _i1.ColumnString serialNumber;

  late final _i1.ColumnString manufactureCountry;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnString model;

  late final _i1.ColumnString caliber;

  late final _i1.ColumnInt magazineCapacity;

  late final _i1.ColumnString barrelLength;

  late final _i1.ColumnDouble weight;

  late final _i1.ColumnDateTime acquisitionDate;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnDateTime saleDate;

  late final _i1.ColumnDouble salePrice;

  late final _i1.ColumnString condition;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Firearm.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userInfoId,
    purpose,
    type,
    action,
    usageType,
    serialNumber,
    manufactureCountry,
    manufacturer,
    model,
    caliber,
    magazineCapacity,
    barrelLength,
    weight,
    acquisitionDate,
    purchasePrice,
    saleDate,
    salePrice,
    condition,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class FirearmInclude extends _i1.IncludeObject {
  FirearmInclude._({_i2.UserInfoInclude? userInfo}) {
    _userInfo = userInfo;
  }

  _i2.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {'userInfo': _userInfo};

  @override
  _i1.Table<_i1.UuidValue> get table => Firearm.t;
}

class FirearmIncludeList extends _i1.IncludeList {
  FirearmIncludeList._({
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Firearm.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Firearm.t;
}

class FirearmRepository {
  const FirearmRepository._();

  final attachRow = const FirearmAttachRowRepository._();

  final detachRow = const FirearmDetachRowRepository._();

  /// Returns a list of [Firearm]s matching the given query parameters.
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
  Future<List<Firearm>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Firearm] matching the given query parameters.
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
  Future<Firearm?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Firearm] by its [id] or null if no such row exists.
  Future<Firearm?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Firearm>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Firearm]s in the list and returns the inserted rows.
  ///
  /// The returned [Firearm]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Firearm>> insert(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Firearm>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Firearm] and returns the inserted row.
  ///
  /// The returned [Firearm] will have its `id` field set.
  Future<Firearm> insertRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Firearm>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Firearm>> update(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.ColumnSelections<FirearmTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Firearm>(
      rows,
      columns: columns?.call(Firearm.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Firearm]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Firearm> updateRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.ColumnSelections<FirearmTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Firearm>(
      row,
      columns: columns?.call(Firearm.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Firearm] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Firearm?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Firearm>(
      id,
      columnValues: columnValues(Firearm.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Firearm>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Firearm>(
      columnValues: columnValues(Firearm.t.updateTable),
      where: where(Firearm.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Firearm]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Firearm>> delete(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Firearm>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Firearm].
  Future<Firearm> deleteRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Firearm>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Firearm>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Firearm>(
      where: where(Firearm.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Firearm>(
      where: where?.call(Firearm.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Firearm] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Firearm>(
      where: where(Firearm.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class FirearmAttachRowRepository {
  const FirearmAttachRowRepository._();

  /// Creates a relation between the given [Firearm] and [UserInfo]
  /// by setting the [Firearm]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Firearm firearm,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $firearm = firearm.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Firearm>(
      $firearm,
      columns: [Firearm.t.userInfoId],
      transaction: transaction,
    );
  }
}

class FirearmDetachRowRepository {
  const FirearmDetachRowRepository._();

  /// Detaches the relation between this [Firearm] and the [UserInfo] set in `userInfo`
  /// by setting the [Firearm]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _i1.DatabaseSession session,
    Firearm firearm, {
    _i1.Transaction? transaction,
  }) async {
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $firearm = firearm.copyWith(userInfoId: null);
    await session.db.updateRow<Firearm>(
      $firearm,
      columns: [Firearm.t.userInfoId],
      transaction: transaction,
    );
  }
}
