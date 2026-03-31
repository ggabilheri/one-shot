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
import '../common/accessory.dart' as _i3;
import '../common/supply_stock.dart' as _i4;
import 'package:oneshot_server/src/generated/protocol.dart' as _i5;

abstract class ReloadSession
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  ReloadSession._({
    this.id,
    this.userId,
    required this.userInfoId,
    this.userInfo,
    required this.reloadDate,
    this.pressId,
    required this.pressId,
    this.press,
    required this.caliber,
    required this.casingBatch,
    required this.reloadsCompleted,
    this.powderId,
    required this.powderId,
    this.powder,
    required this.powderGrains,
    this.primerId,
    required this.primerId,
    this.primer,
    this.projectileId,
    required this.projectileId,
    this.projectile,
    required this.oal,
    required this.totalCost,
    required this.unitCost,
  });

  factory ReloadSession({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime reloadDate,
    _i1.UuidValue? pressId,
    required _i1.UuidValue pressId,
    _i3.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _i1.UuidValue? powderId,
    required _i1.UuidValue powderId,
    _i4.SupplyStock? powder,
    required double powderGrains,
    _i1.UuidValue? primerId,
    required _i1.UuidValue primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    required _i1.UuidValue projectileId,
    _i4.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) = _ReloadSessionImpl;

  factory ReloadSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReloadSession(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      reloadDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['reloadDate'],
      ),
      pressId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['pressId'],
      ),
      press: jsonSerialization['press'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Accessory>(
              jsonSerialization['press'],
            ),
      caliber: jsonSerialization['caliber'] as String,
      casingBatch: jsonSerialization['casingBatch'] as String,
      reloadsCompleted: jsonSerialization['reloadsCompleted'] as int,
      powderId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['powderId'],
      ),
      powder: jsonSerialization['powder'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
              jsonSerialization['powder'],
            ),
      powderGrains: (jsonSerialization['powderGrains'] as num).toDouble(),
      primerId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['primerId'],
      ),
      primer: jsonSerialization['primer'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
              jsonSerialization['primer'],
            ),
      projectileId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['projectileId'],
      ),
      projectile: jsonSerialization['projectile'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.SupplyStock>(
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
  _i1.UuidValue? id;

  _i1.UuidValue? userId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  DateTime reloadDate;

  _i1.UuidValue? pressId;

  _i1.UuidValue pressId;

  _i3.Accessory? press;

  String caliber;

  String casingBatch;

  int reloadsCompleted;

  _i1.UuidValue? powderId;

  _i1.UuidValue powderId;

  _i4.SupplyStock? powder;

  double powderGrains;

  _i1.UuidValue? primerId;

  _i1.UuidValue primerId;

  _i4.SupplyStock? primer;

  _i1.UuidValue? projectileId;

  _i1.UuidValue projectileId;

  _i4.SupplyStock? projectile;

  double oal;

  double totalCost;

  double unitCost;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ReloadSession]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ReloadSession copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    DateTime? reloadDate,
    _i1.UuidValue? pressId,
    _i1.UuidValue? pressId,
    _i3.Accessory? press,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    _i1.UuidValue? powderId,
    _i1.UuidValue? powderId,
    _i4.SupplyStock? powder,
    double? powderGrains,
    _i1.UuidValue? primerId,
    _i1.UuidValue? primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    _i1.UuidValue? projectileId,
    _i4.SupplyStock? projectile,
    double? oal,
    double? totalCost,
    double? unitCost,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReloadSession',
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      'pressId': pressId.toJson(),
      if (press != null) 'press': press?.toJson(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      'powderId': powderId.toJson(),
      if (powder != null) 'powder': powder?.toJson(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      'primerId': primerId.toJson(),
      if (primer != null) 'primer': primer?.toJson(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      'projectileId': projectileId.toJson(),
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
      if (id != null) 'id': id?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'reloadDate': reloadDate.toJson(),
      if (pressId != null) 'pressId': pressId?.toJson(),
      'pressId': pressId.toJson(),
      if (press != null) 'press': press?.toJsonForProtocol(),
      'caliber': caliber,
      'casingBatch': casingBatch,
      'reloadsCompleted': reloadsCompleted,
      if (powderId != null) 'powderId': powderId?.toJson(),
      'powderId': powderId.toJson(),
      if (powder != null) 'powder': powder?.toJsonForProtocol(),
      'powderGrains': powderGrains,
      if (primerId != null) 'primerId': primerId?.toJson(),
      'primerId': primerId.toJson(),
      if (primer != null) 'primer': primer?.toJsonForProtocol(),
      if (projectileId != null) 'projectileId': projectileId?.toJson(),
      'projectileId': projectileId.toJson(),
      if (projectile != null) 'projectile': projectile?.toJsonForProtocol(),
      'oal': oal,
      'totalCost': totalCost,
      'unitCost': unitCost,
    };
  }

  static ReloadSessionInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.AccessoryInclude? press,
    _i4.SupplyStockInclude? powder,
    _i4.SupplyStockInclude? primer,
    _i4.SupplyStockInclude? projectile,
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
    _i1.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadSessionTable>? orderByList,
    ReloadSessionInclude? include,
  }) {
    return ReloadSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadSession.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ReloadSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReloadSessionImpl extends ReloadSession {
  _ReloadSessionImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required DateTime reloadDate,
    _i1.UuidValue? pressId,
    required _i1.UuidValue pressId,
    _i3.Accessory? press,
    required String caliber,
    required String casingBatch,
    required int reloadsCompleted,
    _i1.UuidValue? powderId,
    required _i1.UuidValue powderId,
    _i4.SupplyStock? powder,
    required double powderGrains,
    _i1.UuidValue? primerId,
    required _i1.UuidValue primerId,
    _i4.SupplyStock? primer,
    _i1.UuidValue? projectileId,
    required _i1.UuidValue projectileId,
    _i4.SupplyStock? projectile,
    required double oal,
    required double totalCost,
    required double unitCost,
  }) : super._(
         id: id,
         userId: userId,
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
  @_i1.useResult
  @override
  ReloadSession copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    DateTime? reloadDate,
    Object? pressId = _Undefined,
    _i1.UuidValue? pressId,
    Object? press = _Undefined,
    String? caliber,
    String? casingBatch,
    int? reloadsCompleted,
    Object? powderId = _Undefined,
    _i1.UuidValue? powderId,
    Object? powder = _Undefined,
    double? powderGrains,
    Object? primerId = _Undefined,
    _i1.UuidValue? primerId,
    Object? primer = _Undefined,
    Object? projectileId = _Undefined,
    _i1.UuidValue? projectileId,
    Object? projectile = _Undefined,
    double? oal,
    double? totalCost,
    double? unitCost,
  }) {
    return ReloadSession(
      id: id is _i1.UuidValue? ? id : this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      reloadDate: reloadDate ?? this.reloadDate,
      pressId: pressId ?? this.pressId,
      press: press is _i3.Accessory? ? press : this.press?.copyWith(),
      caliber: caliber ?? this.caliber,
      casingBatch: casingBatch ?? this.casingBatch,
      reloadsCompleted: reloadsCompleted ?? this.reloadsCompleted,
      powderId: powderId ?? this.powderId,
      powder: powder is _i4.SupplyStock? ? powder : this.powder?.copyWith(),
      powderGrains: powderGrains ?? this.powderGrains,
      primerId: primerId ?? this.primerId,
      primer: primer is _i4.SupplyStock? ? primer : this.primer?.copyWith(),
      projectileId: projectileId ?? this.projectileId,
      projectile: projectile is _i4.SupplyStock?
          ? projectile
          : this.projectile?.copyWith(),
      oal: oal ?? this.oal,
      totalCost: totalCost ?? this.totalCost,
      unitCost: unitCost ?? this.unitCost,
    );
  }
}

class ReloadSessionUpdateTable extends _i1.UpdateTable<ReloadSessionTable> {
  ReloadSessionUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<int, int> userInfoId(int value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> reloadDate(DateTime value) =>
      _i1.ColumnValue(
        table.reloadDate,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> pressId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.pressId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> pressId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.pressId,
        value,
      );

  _i1.ColumnValue<String, String> caliber(String value) => _i1.ColumnValue(
    table.caliber,
    value,
  );

  _i1.ColumnValue<String, String> casingBatch(String value) => _i1.ColumnValue(
    table.casingBatch,
    value,
  );

  _i1.ColumnValue<int, int> reloadsCompleted(int value) => _i1.ColumnValue(
    table.reloadsCompleted,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> powderId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.powderId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> powderId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.powderId,
        value,
      );

  _i1.ColumnValue<double, double> powderGrains(double value) => _i1.ColumnValue(
    table.powderGrains,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> primerId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.primerId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> primerId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.primerId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> projectileId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.projectileId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> projectileId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.projectileId,
    value,
  );

  _i1.ColumnValue<double, double> oal(double value) => _i1.ColumnValue(
    table.oal,
    value,
  );

  _i1.ColumnValue<double, double> totalCost(double value) => _i1.ColumnValue(
    table.totalCost,
    value,
  );

  _i1.ColumnValue<double, double> unitCost(double value) => _i1.ColumnValue(
    table.unitCost,
    value,
  );
}

class ReloadSessionTable extends _i1.Table<_i1.UuidValue?> {
  ReloadSessionTable({super.tableRelation})
    : super(tableName: 'reload_sessions') {
    updateTable = ReloadSessionUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    reloadDate = _i1.ColumnDateTime(
      'reloadDate',
      this,
    );
    pressId = _i1.ColumnUuid(
      'pressId',
      this,
    );
    pressId = _i1.ColumnUuid(
      'pressId',
      this,
    );
    caliber = _i1.ColumnString(
      'caliber',
      this,
    );
    casingBatch = _i1.ColumnString(
      'casingBatch',
      this,
    );
    reloadsCompleted = _i1.ColumnInt(
      'reloadsCompleted',
      this,
    );
    powderId = _i1.ColumnUuid(
      'powderId',
      this,
    );
    powderId = _i1.ColumnUuid(
      'powderId',
      this,
    );
    powderGrains = _i1.ColumnDouble(
      'powderGrains',
      this,
    );
    primerId = _i1.ColumnUuid(
      'primerId',
      this,
    );
    primerId = _i1.ColumnUuid(
      'primerId',
      this,
    );
    projectileId = _i1.ColumnUuid(
      'projectileId',
      this,
    );
    projectileId = _i1.ColumnUuid(
      'projectileId',
      this,
    );
    oal = _i1.ColumnDouble(
      'oal',
      this,
    );
    totalCost = _i1.ColumnDouble(
      'totalCost',
      this,
    );
    unitCost = _i1.ColumnDouble(
      'unitCost',
      this,
    );
  }

  late final ReloadSessionUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnDateTime reloadDate;

  late final _i1.ColumnUuid pressId;

  late final _i1.ColumnUuid pressId;

  _i3.AccessoryTable? _press;

  late final _i1.ColumnString caliber;

  late final _i1.ColumnString casingBatch;

  late final _i1.ColumnInt reloadsCompleted;

  late final _i1.ColumnUuid powderId;

  late final _i1.ColumnUuid powderId;

  _i4.SupplyStockTable? _powder;

  late final _i1.ColumnDouble powderGrains;

  late final _i1.ColumnUuid primerId;

  late final _i1.ColumnUuid primerId;

  _i4.SupplyStockTable? _primer;

  late final _i1.ColumnUuid projectileId;

  late final _i1.ColumnUuid projectileId;

  _i4.SupplyStockTable? _projectile;

  late final _i1.ColumnDouble oal;

  late final _i1.ColumnDouble totalCost;

  late final _i1.ColumnDouble unitCost;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: ReloadSession.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.AccessoryTable get press {
    if (_press != null) return _press!;
    _press = _i1.createRelationTable(
      relationFieldName: 'press',
      field: ReloadSession.t.pressId,
      foreignField: _i3.Accessory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AccessoryTable(tableRelation: foreignTableRelation),
    );
    return _press!;
  }

  _i4.SupplyStockTable get powder {
    if (_powder != null) return _powder!;
    _powder = _i1.createRelationTable(
      relationFieldName: 'powder',
      field: ReloadSession.t.powderId,
      foreignField: _i4.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _powder!;
  }

  _i4.SupplyStockTable get primer {
    if (_primer != null) return _primer!;
    _primer = _i1.createRelationTable(
      relationFieldName: 'primer',
      field: ReloadSession.t.primerId,
      foreignField: _i4.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _primer!;
  }

  _i4.SupplyStockTable get projectile {
    if (_projectile != null) return _projectile!;
    _projectile = _i1.createRelationTable(
      relationFieldName: 'projectile',
      field: ReloadSession.t.projectileId,
      foreignField: _i4.SupplyStock.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.SupplyStockTable(tableRelation: foreignTableRelation),
    );
    return _projectile!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    userInfoId,
    reloadDate,
    pressId,
    pressId,
    caliber,
    casingBatch,
    reloadsCompleted,
    powderId,
    powderId,
    powderGrains,
    primerId,
    primerId,
    projectileId,
    projectileId,
    oal,
    totalCost,
    unitCost,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
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

class ReloadSessionInclude extends _i1.IncludeObject {
  ReloadSessionInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.AccessoryInclude? press,
    _i4.SupplyStockInclude? powder,
    _i4.SupplyStockInclude? primer,
    _i4.SupplyStockInclude? projectile,
  }) {
    _userInfo = userInfo;
    _press = press;
    _powder = powder;
    _primer = primer;
    _projectile = projectile;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.AccessoryInclude? _press;

  _i4.SupplyStockInclude? _powder;

  _i4.SupplyStockInclude? _primer;

  _i4.SupplyStockInclude? _projectile;

  @override
  Map<String, _i1.Include?> get includes => {
    'userInfo': _userInfo,
    'press': _press,
    'powder': _powder,
    'primer': _primer,
    'projectile': _projectile,
  };

  @override
  _i1.Table<_i1.UuidValue?> get table => ReloadSession.t;
}

class ReloadSessionIncludeList extends _i1.IncludeList {
  ReloadSessionIncludeList._({
    _i1.WhereExpressionBuilder<ReloadSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReloadSession.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => ReloadSession.t;
}

class ReloadSessionRepository {
  const ReloadSessionRepository._();

  final attachRow = const ReloadSessionAttachRowRepository._();

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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _i1.Transaction? transaction,
    ReloadSessionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ReloadSession>(
      where: where?.call(ReloadSession.t),
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReloadSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReloadSessionTable>? orderByList,
    _i1.Transaction? transaction,
    ReloadSessionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ReloadSession>(
      where: where?.call(ReloadSession.t),
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ReloadSession] by its [id] or null if no such row exists.
  Future<ReloadSession?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ReloadSessionInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<ReloadSession>> insert(
    _i1.DatabaseSession session,
    List<ReloadSession> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ReloadSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ReloadSession] and returns the inserted row.
  ///
  /// The returned [ReloadSession] will have its `id` field set.
  Future<ReloadSession> insertRow(
    _i1.DatabaseSession session,
    ReloadSession row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ReloadSession>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ReloadSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ReloadSession>> update(
    _i1.DatabaseSession session,
    List<ReloadSession> rows, {
    _i1.ColumnSelections<ReloadSessionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ReloadSession>(
      rows,
      columns: columns?.call(ReloadSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReloadSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ReloadSession> updateRow(
    _i1.DatabaseSession session,
    ReloadSession row, {
    _i1.ColumnSelections<ReloadSessionTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ReloadSessionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ReloadSession>(
      id,
      columnValues: columnValues(ReloadSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ReloadSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ReloadSession>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ReloadSessionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ReloadSessionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReloadSessionTable>? orderBy,
    _i1.OrderByListBuilder<ReloadSessionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ReloadSession>(
      columnValues: columnValues(ReloadSession.t.updateTable),
      where: where(ReloadSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReloadSession.t),
      orderByList: orderByList?.call(ReloadSession.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ReloadSession]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ReloadSession>> delete(
    _i1.DatabaseSession session,
    List<ReloadSession> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ReloadSession>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ReloadSession].
  Future<ReloadSession> deleteRow(
    _i1.DatabaseSession session,
    ReloadSession row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ReloadSession>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ReloadSession>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ReloadSessionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ReloadSession>(
      where: where(ReloadSession.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ReloadSessionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ReloadSession>(
      where: where?.call(ReloadSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ReloadSession] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ReloadSessionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    ReloadSession reloadSession,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadSession reloadSession,
    _i3.Accessory press, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadSession reloadSession,
    _i4.SupplyStock powder, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadSession reloadSession,
    _i4.SupplyStock primer, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    ReloadSession reloadSession,
    _i4.SupplyStock projectile, {
    _i1.Transaction? transaction,
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
