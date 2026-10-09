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
import '../common/accessory.dart' as _ixwksfmb;
import '../common/supply_stock.dart' as _icdicocn;

abstract class ReloadSession
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  ReloadSession._({
    _is.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.reloadDate,
    this.pressId,
    this.press,
    required this.caliber,
    required this.casingBatch,
    required this.reloadsCompleted,
    this.powderId,
    this.powder,
    required this.powderGrains,
    this.primerId,
    this.primer,
    this.projectileId,
    this.projectile,
    required this.oal,
    required this.totalCost,
    required this.unitCost,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory ReloadSession({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required DateTime reloadDate,
    _is.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _is.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    required double powderGrains,
    _is.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _is.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) = _ReloadSessionImpl;

  factory ReloadSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadSession(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      reloadDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['reloadDate'],
      ),
      pressId: jsonSerialization['pressId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['pressId']),
      press: jsonSerialization['press'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_ixwksfmb.Accessory>(
              jsonSerialization['press'],
            ),
      caliber: jsonSerialization['caliber'] as String,
      casingBatch: jsonSerialization['casingBatch'] as String,
      reloadsCompleted: jsonSerialization['reloadsCompleted'] as int,
      powderId: jsonSerialization['powderId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['powderId']),
      powder: jsonSerialization['powder'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['powder'],
            ),
      powderGrains: (jsonSerialization['powderGrains'] as num).toDouble(),
      primerId: jsonSerialization['primerId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['primerId']),
      primer: jsonSerialization['primer'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['primer'],
            ),
      projectileId: jsonSerialization['projectileId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['projectileId'],
            ),
      projectile: jsonSerialization['projectile'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_icdicocn.SupplyStock>(
              jsonSerialization['projectile'],
            ),
      oal: (jsonSerialization['oal'] as num).toDouble(),
      totalCost: (jsonSerialization['totalCost'] as num).toDouble(),
      unitCost: (jsonSerialization['unitCost'] as num).toDouble(),
    );
  }

  static final t = ReloadSessionTable();

  static const db = ReloadSessionRepository._();

  @override
  _is.UuidValue id;

  int? userInfoId;

  _i1n3uhu0.UserInfo? userInfo;

  DateTime reloadDate;

  _is.UuidValue? pressId;

  _ixwksfmb.Accessory? press;

  String caliber;

  String casingBatch;

  int reloadsCompleted;

  _is.UuidValue? powderId;

  _icdicocn.SupplyStock? powder;

  double powderGrains;

  _is.UuidValue? primerId;

  _icdicocn.SupplyStock? primer;

  _is.UuidValue? projectileId;

  _icdicocn.SupplyStock? projectile;

  double oal;

  double totalCost;

  double unitCost;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ReloadSession copyWith({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    DateTime? reloadDate,
    _is.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    _is.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    double? powderGrains,
    _is.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _is.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    double? oal,
    double? totalCost,
    double? unitCost,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadSession',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      if (press != null) 'press': press?.toJson(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      if (powder != null) 'powder': powder?.toJson(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      if (primer != null) 'primer': primer?.toJson(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      if (projectile != null) 'projectile': projectile?.toJson(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ReloadSession',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      if (press != null) 'press': press?.toJsonForProtocol(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      if (powder != null) 'powder': powder?.toJsonForProtocol(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      if (primer != null) 'primer': primer?.toJsonForProtocol(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      if (projectile != null) 'projectile': projectile?.toJsonForProtocol(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  static ReloadSessionInclude include({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _ixwksfmb.AccessoryInclude? press,
    _icdicocn.SupplyStockInclude? powder,
    _icdicocn.SupplyStockInclude? primer,
    _icdicocn.SupplyStockInclude? projectile,
  }) {
    return ReloadSessionInclude._(
      userInfo: userInfo,
      press: press,
      powder: powder,
      primer: primer,
      projectile: projectile,
    );
  }

  static ReloadSessionIncludeList includeList({
    _is.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    ReloadSessionInclude? include,
  }) {
    return ReloadSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadSessionImpl extends ReloadSession {
  _ReloadSessionImpl({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required DateTime reloadDate,
    _is.UuidValue? pressId,
    _ixwksfmb.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _is.UuidValue? powderId,
    _icdicocn.SupplyStock? powder,
    required double powderGrains,
    _is.UuidValue? primerId,
    _icdicocn.SupplyStock? primer,
    _is.UuidValue? projectileId,
    _icdicocn.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         reloadDate: reloadDate,
         pressId: pressId,
         press: press,
         caliber: caliber,
         casingBatch: casingBatch,
         reloadsCompleted: reloadsCompleted,
         powderId: powderId,
         powder: powder,
         powderGrains: powderGrains,
         primerId: primerId,
         primer: primer,
         projectileId: projectileId,
         projectile: projectile,
         oal: oal,
         totalCost: totalCost,
         unitCost: unitCost,
       );

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ReloadSession copyWith({
    _is.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    DateTime? reloadDate,
    Object? pressId = _Undefined,
    Object? press = _Undefined,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    Object? powderId = _Undefined,
    Object? powder = _Undefined,
    double? powderGrains,
    Object? primerId = _Undefined,
    Object? primer = _Undefined,
    Object? projectileId = _Undefined,
    Object? projectile = _Undefined,
    double? oal,
    double? totalCost,
    double? unitCost,
  }) {
    return ReloadSession(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i1n3uhu0.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      reloadDate: reloadDate ?? this.reloadDate,
      pressId: pressId is _is.UuidValue? ? pressId : this.pressId,
      press: press is _ixwksfmb.Accessory? ? press : this.press?.copyWith(),
      caliber: caliber ?? this.caliber,
      casingBatch: casingBatch ?? this.casingBatch,
      reloadsCompleted: reloadsCompleted ?? this.reloadsCompleted,
      powderId: powderId is _is.UuidValue? ? powderId : this.powderId,
      powder: powder is _icdicocn.SupplyStock?
          ? powder
          : this.powder?.copyWith(),
      powderGrains: powderGrains ?? this.powderGrains,
      primerId: primerId is _is.UuidValue? ? primerId : this.primerId,
      primer: primer is _icdicocn.SupplyStock?
          ? primer
          : this.primer?.copyWith(),
      projectileId: projectileId is _is.UuidValue?
          ? projectileId
          : this.projectileId,
      projectile: projectile is _icdicocn.SupplyStock?
          ? projectile
          : this.projectile?.copyWith(),
      oal: oal ?? this.oal,
      totalCost: totalCost ?? this.totalCost,
      unitCost: unitCost ?? this.unitCost,
    );
  }
}

class ReloadSessionUpdateTable extends _is.UpdateTable<ReloadSessionTable> {
  ReloadSessionUpdateTable(super.table);

  _is.ColumnValue<int, int> userInfoId(int? value) =>
      _is.ColumnValue(table.userInfoId, value);

  _is.ColumnValue<DateTime, DateTime> reloadDate(DateTime value) =>
      _is.ColumnValue(table.reloadDate, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> pressId(_is.UuidValue? value) =>
      _is.ColumnValue(table.pressId, value);

  _is.ColumnValue<String, String> caliber(String value) =>
      _is.ColumnValue(table.caliber, value);

  _is.ColumnValue<String, String> casingBatch(String value) =>
      _is.ColumnValue(table.casingBatch, value);

  _is.ColumnValue<int, int> reloadsCompleted(int value) =>
      _is.ColumnValue(table.reloadsCompleted, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> powderId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.powderId, value);

  _is.ColumnValue<double, double> powderGrains(double value) =>
      _is.ColumnValue(table.powderGrains, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> primerId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.primerId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> projectileId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.projectileId, value);

  _is.ColumnValue<double, double> oal(double value) =>
      _is.ColumnValue(table.oal, value);

  _is.ColumnValue<double, double> totalCost(double value) =>
      _is.ColumnValue(table.totalCost, value);

  _is.ColumnValue<double, double> unitCost(double value) =>
      _is.ColumnValue(table.unitCost, value);
}

class ReloadSessionTable extends _is.Table<_is.UuidValue> {
  ReloadSessionTable({super.tableRelation})
    : super(tableName: 'reload_sessions') {
    updateTable = ReloadSessionUpdateTable(this);
    userInfoId = _is.ColumnInt('userInfoId', this);
    reloadDate = _is.ColumnDateTime('reloadDate', this);
    pressId = _is.ColumnUuid('pressId', this);
    caliber = _is.ColumnString('caliber', this);
    casingBatch = _is.ColumnString('casingBatch', this);
    reloadsCompleted = _is.ColumnInt('reloadsCompleted', this);
    powderId = _is.ColumnUuid('powderId', this);
    powderGrains = _is.ColumnDouble('powderGrains', this);
    primerId = _is.ColumnUuid('primerId', this);
    projectileId = _is.ColumnUuid('projectileId', this);
    oal = _is.ColumnDouble('oal', this);
    totalCost = _is.ColumnDouble('totalCost', this);
    unitCost = _is.ColumnDouble('unitCost', this);
  }

  late final ReloadSessionUpdateTable updateTable;

  late final _is.ColumnInt userInfoId;

  _i1n3uhu0.UserInfoTable? _userInfo;

  late final _is.ColumnDateTime reloadDate;

  late final _is.ColumnUuid pressId;

  _ixwksfmb.AccessoryTable? _press;

  late final _is.ColumnString caliber;

  late final _is.ColumnString casingBatch;

  late final _is.ColumnInt reloadsCompleted;

  late final _is.ColumnUuid powderId;

  _icdicocn.SupplyStockTable? _powder;

  late final _is.ColumnDouble powderGrains;

  late final _is.ColumnUuid primerId;

  _icdicocn.SupplyStockTable? _primer;

  late final _is.ColumnUuid projectileId;

  _icdicocn.SupplyStockTable? _projectile;

  late final _is.ColumnDouble oal;

  late final _is.ColumnDouble totalCost;

  late final _is.ColumnDouble unitCost;

  _i1n3uhu0.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _is.createRelationTable(
      relationFieldName: 'userInfo',
      field: ReloadSession.t.userInfoId,
      foreignField: _i1n3uhu0.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i1n3uhu0.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _ixwksfmb.AccessoryTable get press {
    if (_press != null) return _press!;
    _press = _is.createRelationTable(
      relationFieldName: 'press',
      field: ReloadSession.t.pressId,
      foreignField: _ixwksfmb.Accessory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ixwksfmb.AccessoryTable(tableRelation: foreignTableRelation),
    );
    return _press!;
  }

  _icdicocn.SupplyStockTable get powder {
    if (_powder != null) return _powder!;
    _powder = _is.createRelationTable(
      relationFieldName: 'powder',
      field: ReloadSession.t.powderId,
      foreignField: _icdicocn.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _icdicocn.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _powder!;
  }

  _icdicocn.SupplyStockTable get primer {
    if (_primer != null) return _primer!;
    _primer = _is.createRelationTable(
      relationFieldName: 'primer',
      field: ReloadSession.t.primerId,
      foreignField: _icdicocn.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _icdicocn.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _primer!;
  }

  _icdicocn.SupplyStockTable get projectile {
    if (_projectile != null) return _projectile!;
    _projectile = _is.createRelationTable(
      relationFieldName: 'projectile',
      field: ReloadSession.t.projectileId,
      foreignField: _icdicocn.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _icdicocn.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _projectile!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userInfoId,
    reloadDate,
    pressId,
    caliber,
    casingBatch,
    reloadsCompleted,
    powderId,
    powderGrains,
    primerId,
    projectileId,
    oal,
    totalCost,
    unitCost,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'press') {
      return press;
    }
    if (relationField == 'powder') {
      return powder;
    }
    if (relationField == 'primer') {
      return primer;
    }
    if (relationField == 'projectile') {
      return projectile;
    }
    return null;
  }
}

class ReloadSessionInclude extends _is.IncludeObject {
  ReloadSessionInclude._({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _ixwksfmb.AccessoryInclude? press,
    _icdicocn.SupplyStockInclude? powder,
    _icdicocn.SupplyStockInclude? primer,
    _icdicocn.SupplyStockInclude? projectile,
  }) {
    _userInfo = userInfo;
    _press = press;
    _powder = powder;
    _primer = primer;
    _projectile = projectile;
  }

  _i1n3uhu0.UserInfoInclude? _userInfo;

  _ixwksfmb.AccessoryInclude? _press;

  _icdicocn.SupplyStockInclude? _powder;

  _icdicocn.SupplyStockInclude? _primer;

  _icdicocn.SupplyStockInclude? _projectile;

  @override
  Map<String, _is.Include?> get includes => {
    'userInfo': _userInfo,
    'press': _press,
    'powder': _powder,
    'primer': _primer,
    'projectile': _projectile,
  };

  @override
  _is.Table<_is.UuidValue> get table => ReloadSession.t;
}

class ReloadSessionIncludeList extends _is.IncludeList {
  ReloadSessionIncludeList._({
    _is.WhereExpressionBuilder<ReloadSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReloadSession.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => ReloadSession.t;
}

class ReloadSessionRepository {
  const ReloadSessionRepository._();

  final attachRow = const ReloadSessionAttachRowRepository._();

  final detachRow = const ReloadSessionDetachRowRepository._();

  /// Returns a list of [ReloadSession]s matching the given query parameters.
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
  Future<List<ReloadSession>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _is.Transaction? transaction,
    ReloadSessionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ReloadSession>(
      where: where?.call(ReloadSession.t),
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ReloadSession] matching the given query parameters.
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
  Future<ReloadSession?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? offset,
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _is.Transaction? transaction,
    ReloadSessionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ReloadSession>(
      where: where?.call(ReloadSession.t),
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ReloadSession] by its [id] or null if no such row exists.
  Future<ReloadSession?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    ReloadSessionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ReloadSession>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ReloadSession]s in the list and returns the inserted rows.
  ///
  /// The returned [ReloadSession]s will have their `id` fields set.
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
  Future<List<ReloadSession>> insert(
    _is.DatabaseSession session,
    List<ReloadSession> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ReloadSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ReloadSession] and returns the inserted row.
  ///
  /// The returned [ReloadSession] will have its `id` field set.
  Future<ReloadSession> insertRow(
    _is.DatabaseSession session,
    ReloadSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ReloadSession>(row, transaction: transaction);
  }

  /// Upserts all [ReloadSession]s in the list and returns the resulting rows.
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
  /// The returned [ReloadSession]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadSession>> upsert(
    _is.DatabaseSession session,
    List<ReloadSession> rows, {
    required _is.ColumnSelections<ReloadSessionTable> conflictColumns,
    _is.ColumnSelections<ReloadSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<ReloadSessionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ReloadSession>(
      rows,
      conflictColumns: conflictColumns(ReloadSession.t),
      updateColumns: updateColumns?.call(ReloadSession.t),
      updateWhere: updateWhere?.call(ReloadSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ReloadSession] and returns the resulting row.
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
  /// The returned [ReloadSession] will have its `id` field set.
  Future<ReloadSession?> upsertRow(
    _is.DatabaseSession session,
    ReloadSession row, {
    required _is.ColumnSelections<ReloadSessionTable> conflictColumns,
    _is.ColumnSelections<ReloadSessionTable>? updateColumns,
    _is.WhereExpressionBuilder<ReloadSessionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ReloadSession>(
      row,
      conflictColumns: conflictColumns(ReloadSession.t),
      updateColumns: updateColumns?.call(ReloadSession.t),
      updateWhere: updateWhere?.call(ReloadSession.t),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadSession>> update(
    _is.DatabaseSession session,
    List<ReloadSession> rows, {
    _is.ColumnSelections<ReloadSessionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ReloadSession>(
      rows,
      columns: columns?.call(ReloadSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ReloadSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ReloadSession> updateRow(
    _is.DatabaseSession session,
    ReloadSession row, {
    _is.ColumnSelections<ReloadSessionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ReloadSession>(
      row,
      columns: columns?.call(ReloadSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReloadSession] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ReloadSession?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ReloadSessionUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ReloadSession>(
      id,
      columnValues: columnValues(ReloadSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadSession>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ReloadSessionUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ReloadSessionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ReloadSession>(
      columnValues: columnValues(ReloadSession.t.updateTable),
      where: where(ReloadSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ReloadSession]s in the list and returns the deleted rows.
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
  Future<List<ReloadSession>> delete(
    _is.DatabaseSession session,
    List<ReloadSession> rows, {
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ReloadSession>(
      rows,
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ReloadSession].
  Future<ReloadSession> deleteRow(
    _is.DatabaseSession session,
    ReloadSession row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ReloadSession>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ReloadSession>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ReloadSessionTable> where,
    _is.OrderByBuilder<ReloadSessionTable>? orderBy,
    _is.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ReloadSession>(
      where: where(ReloadSession.t),
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ReloadSession>(
      where: where?.call(ReloadSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ReloadSession] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ReloadSessionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ReloadSession>(
      where: where(ReloadSession.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ReloadSessionAttachRowRepository {
  const ReloadSessionAttachRowRepository._();

  /// Creates a relation between the given [ReloadSession] and [UserInfo]
  /// by setting the [ReloadSession]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _is.DatabaseSession session,
    ReloadSession reloadSession,
    _i1n3uhu0.UserInfo userInfo, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $reloadSession = reloadSession.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ReloadSession] and [Accessory]
  /// by setting the [ReloadSession]'s foreign key `pressId` to refer to the [Accessory].
  Future<void> press(
    _is.DatabaseSession session,
    ReloadSession reloadSession,
    _ixwksfmb.Accessory press, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }
    if (press.id == null) {
      throw ArgumentError.notNull('press.id');
    }

    var $reloadSession = reloadSession.copyWith(pressId: press.id);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.pressId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ReloadSession] and [SupplyStock]
  /// by setting the [ReloadSession]'s foreign key `powderId` to refer to the [SupplyStock].
  Future<void> powder(
    _is.DatabaseSession session,
    ReloadSession reloadSession,
    _icdicocn.SupplyStock powder, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }
    if (powder.id == null) {
      throw ArgumentError.notNull('powder.id');
    }

    var $reloadSession = reloadSession.copyWith(powderId: powder.id);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.powderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ReloadSession] and [SupplyStock]
  /// by setting the [ReloadSession]'s foreign key `primerId` to refer to the [SupplyStock].
  Future<void> primer(
    _is.DatabaseSession session,
    ReloadSession reloadSession,
    _icdicocn.SupplyStock primer, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }
    if (primer.id == null) {
      throw ArgumentError.notNull('primer.id');
    }

    var $reloadSession = reloadSession.copyWith(primerId: primer.id);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.primerId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [ReloadSession] and [SupplyStock]
  /// by setting the [ReloadSession]'s foreign key `projectileId` to refer to the [SupplyStock].
  Future<void> projectile(
    _is.DatabaseSession session,
    ReloadSession reloadSession,
    _icdicocn.SupplyStock projectile, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }
    if (projectile.id == null) {
      throw ArgumentError.notNull('projectile.id');
    }

    var $reloadSession = reloadSession.copyWith(projectileId: projectile.id);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.projectileId],
      transaction: transaction,
    );
  }
}

class ReloadSessionDetachRowRepository {
  const ReloadSessionDetachRowRepository._();

  /// Detaches the relation between this [ReloadSession] and the [UserInfo] set in `userInfo`
  /// by setting the [ReloadSession]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _is.DatabaseSession session,
    ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadSession = reloadSession.copyWith(userInfoId: null);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ReloadSession] and the [Accessory] set in `press`
  /// by setting the [ReloadSession]'s foreign key `pressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> press(
    _is.DatabaseSession session,
    ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadSession = reloadSession.copyWith(pressId: null);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.pressId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ReloadSession] and the [SupplyStock] set in `powder`
  /// by setting the [ReloadSession]'s foreign key `powderId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> powder(
    _is.DatabaseSession session,
    ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadSession = reloadSession.copyWith(powderId: null);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.powderId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ReloadSession] and the [SupplyStock] set in `primer`
  /// by setting the [ReloadSession]'s foreign key `primerId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> primer(
    _is.DatabaseSession session,
    ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadSession = reloadSession.copyWith(primerId: null);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.primerId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [ReloadSession] and the [SupplyStock] set in `projectile`
  /// by setting the [ReloadSession]'s foreign key `projectileId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> projectile(
    _is.DatabaseSession session,
    ReloadSession reloadSession, {
    _is.Transaction? transaction,
  }) async {
    if (reloadSession.id == null) {
      throw ArgumentError.notNull('reloadSession.id');
    }

    var $reloadSession = reloadSession.copyWith(projectileId: null);
    await session.db.updateRow<ReloadSession>(
      $reloadSession,
      columns: [ReloadSession.t.projectileId],
      transaction: transaction,
    );
  }
}
