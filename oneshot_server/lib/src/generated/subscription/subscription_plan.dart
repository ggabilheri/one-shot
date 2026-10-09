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
import '../company/company.dart' as _iocy1ifk;
import '../enums/plan_periodicity.enum.dart' as _i183hlh8;
import '../enums/plan_status.enum.dart' as _i2ytazif;
import '../enums/plan_type.enum.dart' as _izm4hmla;

abstract class SubscriptionPlan
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  SubscriptionPlan._({
    _is.UuidValue? id,
    required this.name,
    required this.planType,
    required this.unitValue,
    required this.quantity,
    required this.totalValue,
    required this.periodicity,
    required this.status,
    this.companyId,
    this.company,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory SubscriptionPlan({
    _is.UuidValue? id,
    required String name,
    required _izm4hmla.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i183hlh8.PlanPeriodicity periodicity,
    required _i2ytazif.PlanStatus status,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _SubscriptionPlanImpl;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> jsonSerialization) {
    return SubscriptionPlan(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      planType: _izm4hmla.PlanType.fromJson(
        (jsonSerialization['planType'] as String),
      ),
      unitValue: (jsonSerialization['unitValue'] as num).toDouble(),
      quantity: jsonSerialization['quantity'] as int,
      totalValue: (jsonSerialization['totalValue'] as num).toDouble(),
      periodicity: _i183hlh8.PlanPeriodicity.fromJson(
        (jsonSerialization['periodicity'] as String),
      ),
      status: _i2ytazif.PlanStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
    );
  }

  static final t = SubscriptionPlanTable();

  static const db = SubscriptionPlanRepository._();

  @override
  _is.UuidValue id;

  String name;

  _izm4hmla.PlanType planType;

  double unitValue;

  int quantity;

  double totalValue;

  _i183hlh8.PlanPeriodicity periodicity;

  _i2ytazif.PlanStatus status;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SubscriptionPlan copyWith({
    _is.UuidValue? id,
    String? name,
    _izm4hmla.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i183hlh8.PlanPeriodicity? periodicity,
    _i2ytazif.PlanStatus? status,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SubscriptionPlan',
      'id': id.toJson(),
      'name': name,
      'planType': planType.toJson(),
      'unitValue': unitValue,
      'quantity': quantity,
      'totalValue': totalValue,
      'periodicity': periodicity.toJson(),
      'status': status.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SubscriptionPlan',
      'id': id.toJson(),
      'name': name,
      'planType': planType.toJson(),
      'unitValue': unitValue,
      'quantity': quantity,
      'totalValue': totalValue,
      'periodicity': periodicity.toJson(),
      'status': status.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  static SubscriptionPlanInclude include({_iocy1ifk.CompanyInclude? company}) {
    return SubscriptionPlanInclude._(company: company);
  }

  static SubscriptionPlanIncludeList includeList({
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    SubscriptionPlanInclude? include,
  }) {
    return SubscriptionPlanIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SubscriptionPlanImpl extends SubscriptionPlan {
  _SubscriptionPlanImpl({
    _is.UuidValue? id,
    required String name,
    required _izm4hmla.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i183hlh8.PlanPeriodicity periodicity,
    required _i2ytazif.PlanStatus status,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) : super._(
         id: id,
         name: name,
         planType: planType,
         unitValue: unitValue,
         quantity: quantity,
         totalValue: totalValue,
         periodicity: periodicity,
         status: status,
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SubscriptionPlan copyWith({
    _is.UuidValue? id,
    String? name,
    _izm4hmla.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i183hlh8.PlanPeriodicity? periodicity,
    _i2ytazif.PlanStatus? status,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
  }) {
    return SubscriptionPlan(
      id: id ?? this.id,
      name: name ?? this.name,
      planType: planType ?? this.planType,
      unitValue: unitValue ?? this.unitValue,
      quantity: quantity ?? this.quantity,
      totalValue: totalValue ?? this.totalValue,
      periodicity: periodicity ?? this.periodicity,
      status: status ?? this.status,
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
    );
  }
}

class SubscriptionPlanUpdateTable
    extends _is.UpdateTable<SubscriptionPlanTable> {
  SubscriptionPlanUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<_izm4hmla.PlanType, _izm4hmla.PlanType> planType(
    _izm4hmla.PlanType value,
  ) => _is.ColumnValue(table.planType, value);

  _is.ColumnValue<double, double> unitValue(double value) =>
      _is.ColumnValue(table.unitValue, value);

  _is.ColumnValue<int, int> quantity(int value) =>
      _is.ColumnValue(table.quantity, value);

  _is.ColumnValue<double, double> totalValue(double value) =>
      _is.ColumnValue(table.totalValue, value);

  _is.ColumnValue<_i183hlh8.PlanPeriodicity, _i183hlh8.PlanPeriodicity>
  periodicity(_i183hlh8.PlanPeriodicity value) =>
      _is.ColumnValue(table.periodicity, value);

  _is.ColumnValue<_i2ytazif.PlanStatus, _i2ytazif.PlanStatus> status(
    _i2ytazif.PlanStatus value,
  ) => _is.ColumnValue(table.status, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);
}

class SubscriptionPlanTable extends _is.Table<_is.UuidValue> {
  SubscriptionPlanTable({super.tableRelation})
    : super(tableName: 'subscription_plans') {
    updateTable = SubscriptionPlanUpdateTable(this);
    name = _is.ColumnString('name', this);
    planType = _is.ColumnEnum('planType', this, _is.EnumSerialization.byName);
    unitValue = _is.ColumnDouble('unitValue', this);
    quantity = _is.ColumnInt('quantity', this);
    totalValue = _is.ColumnDouble('totalValue', this);
    periodicity = _is.ColumnEnum(
      'periodicity',
      this,
      _is.EnumSerialization.byName,
    );
    status = _is.ColumnEnum('status', this, _is.EnumSerialization.byName);
    companyId = _is.ColumnUuid('companyId', this);
  }

  late final SubscriptionPlanUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnEnum<_izm4hmla.PlanType> planType;

  late final _is.ColumnDouble unitValue;

  late final _is.ColumnInt quantity;

  late final _is.ColumnDouble totalValue;

  late final _is.ColumnEnum<_i183hlh8.PlanPeriodicity> periodicity;

  late final _is.ColumnEnum<_i2ytazif.PlanStatus> status;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: SubscriptionPlan.t.companyId,
      foreignField: _iocy1ifk.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iocy1ifk.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    name,
    planType,
    unitValue,
    quantity,
    totalValue,
    periodicity,
    status,
    companyId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class SubscriptionPlanInclude extends _is.IncludeObject {
  SubscriptionPlanInclude._({_iocy1ifk.CompanyInclude? company}) {
    _company = company;
  }

  _iocy1ifk.CompanyInclude? _company;

  @override
  Map<String, _is.Include?> get includes => {'company': _company};

  @override
  _is.Table<_is.UuidValue> get table => SubscriptionPlan.t;
}

class SubscriptionPlanIncludeList extends _is.IncludeList {
  SubscriptionPlanIncludeList._({
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SubscriptionPlan.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => SubscriptionPlan.t;
}

class SubscriptionPlanRepository {
  const SubscriptionPlanRepository._();

  final attachRow = const SubscriptionPlanAttachRowRepository._();

  final detachRow = const SubscriptionPlanDetachRowRepository._();

  /// Returns a list of [SubscriptionPlan]s matching the given query parameters.
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
  Future<List<SubscriptionPlan>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _is.Transaction? transaction,
    SubscriptionPlanInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SubscriptionPlan] matching the given query parameters.
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
  Future<SubscriptionPlan?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? offset,
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _is.Transaction? transaction,
    SubscriptionPlanInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SubscriptionPlan] by its [id] or null if no such row exists.
  Future<SubscriptionPlan?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    SubscriptionPlanInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SubscriptionPlan>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SubscriptionPlan]s in the list and returns the inserted rows.
  ///
  /// The returned [SubscriptionPlan]s will have their `id` fields set.
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
  Future<List<SubscriptionPlan>> insert(
    _is.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SubscriptionPlan>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SubscriptionPlan] and returns the inserted row.
  ///
  /// The returned [SubscriptionPlan] will have its `id` field set.
  Future<SubscriptionPlan> insertRow(
    _is.DatabaseSession session,
    SubscriptionPlan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SubscriptionPlan>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SubscriptionPlan]s in the list and returns the resulting rows.
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
  /// The returned [SubscriptionPlan]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionPlan>> upsert(
    _is.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    required _is.ColumnSelections<SubscriptionPlanTable> conflictColumns,
    _is.ColumnSelections<SubscriptionPlanTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SubscriptionPlan>(
      rows,
      conflictColumns: conflictColumns(SubscriptionPlan.t),
      updateColumns: updateColumns?.call(SubscriptionPlan.t),
      updateWhere: updateWhere?.call(SubscriptionPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SubscriptionPlan] and returns the resulting row.
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
  /// The returned [SubscriptionPlan] will have its `id` field set.
  Future<SubscriptionPlan?> upsertRow(
    _is.DatabaseSession session,
    SubscriptionPlan row, {
    required _is.ColumnSelections<SubscriptionPlanTable> conflictColumns,
    _is.ColumnSelections<SubscriptionPlanTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SubscriptionPlan>(
      row,
      conflictColumns: conflictColumns(SubscriptionPlan.t),
      updateColumns: updateColumns?.call(SubscriptionPlan.t),
      updateWhere: updateWhere?.call(SubscriptionPlan.t),
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionPlan]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionPlan>> update(
    _is.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _is.ColumnSelections<SubscriptionPlanTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SubscriptionPlan>(
      rows,
      columns: columns?.call(SubscriptionPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SubscriptionPlan]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SubscriptionPlan> updateRow(
    _is.DatabaseSession session,
    SubscriptionPlan row, {
    _is.ColumnSelections<SubscriptionPlanTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SubscriptionPlan>(
      row,
      columns: columns?.call(SubscriptionPlan.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SubscriptionPlan] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SubscriptionPlan?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<SubscriptionPlanUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SubscriptionPlan>(
      id,
      columnValues: columnValues(SubscriptionPlan.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionPlan]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionPlan>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SubscriptionPlanUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SubscriptionPlanTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SubscriptionPlan>(
      columnValues: columnValues(SubscriptionPlan.t.updateTable),
      where: where(SubscriptionPlan.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SubscriptionPlan]s in the list and returns the deleted rows.
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
  Future<List<SubscriptionPlan>> delete(
    _is.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SubscriptionPlan>(
      rows,
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SubscriptionPlan].
  Future<SubscriptionPlan> deleteRow(
    _is.DatabaseSession session,
    SubscriptionPlan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SubscriptionPlan>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionPlan>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionPlanTable> where,
    _is.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SubscriptionPlan>(
      where: where(SubscriptionPlan.t),
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SubscriptionPlan] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionPlanTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SubscriptionPlan>(
      where: where(SubscriptionPlan.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class SubscriptionPlanAttachRowRepository {
  const SubscriptionPlanAttachRowRepository._();

  /// Creates a relation between the given [SubscriptionPlan] and [Company]
  /// by setting the [SubscriptionPlan]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    SubscriptionPlan subscriptionPlan,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (subscriptionPlan.id == null) {
      throw ArgumentError.notNull('subscriptionPlan.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $subscriptionPlan = subscriptionPlan.copyWith(companyId: company.id);
    await session.db.updateRow<SubscriptionPlan>(
      $subscriptionPlan,
      columns: [SubscriptionPlan.t.companyId],
      transaction: transaction,
    );
  }
}

class SubscriptionPlanDetachRowRepository {
  const SubscriptionPlanDetachRowRepository._();

  /// Detaches the relation between this [SubscriptionPlan] and the [Company] set in `company`
  /// by setting the [SubscriptionPlan]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    SubscriptionPlan subscriptionPlan, {
    _is.Transaction? transaction,
  }) async {
    if (subscriptionPlan.id == null) {
      throw ArgumentError.notNull('subscriptionPlan.id');
    }

    var $subscriptionPlan = subscriptionPlan.copyWith(companyId: null);
    await session.db.updateRow<SubscriptionPlan>(
      $subscriptionPlan,
      columns: [SubscriptionPlan.t.companyId],
      transaction: transaction,
    );
  }
}
