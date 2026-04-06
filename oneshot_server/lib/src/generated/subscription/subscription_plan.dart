/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../enums/plan_type.enum.dart' as _i2;
import '../enums/plan_periodicity.enum.dart' as _i3;
import '../enums/plan_status.enum.dart' as _i4;

abstract class SubscriptionPlan
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  SubscriptionPlan._({
    _i1.UuidValue? id,
    required this.name,
    required this.planType,
    required this.unitValue,
    required this.quantity,
    required this.totalValue,
    required this.periodicity,
    required this.status,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory SubscriptionPlan({
    _i1.UuidValue? id,
    required String name,
    required _i2.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i3.PlanPeriodicity periodicity,
    required _i4.PlanStatus status,
  }) = _SubscriptionPlanImpl;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> jsonSerialization) {
    return SubscriptionPlan(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      planType: _i2.PlanType.fromJson(
        (jsonSerialization['planType'] as String),
      ),
      unitValue: (jsonSerialization['unitValue'] as num).toDouble(),
      quantity: jsonSerialization['quantity'] as int,
      totalValue: (jsonSerialization['totalValue'] as num).toDouble(),
      periodicity: _i3.PlanPeriodicity.fromJson(
        (jsonSerialization['periodicity'] as String),
      ),
      status: _i4.PlanStatus.fromJson((jsonSerialization['status'] as String)),
    );
  }

  static final t = SubscriptionPlanTable();

  static const db = SubscriptionPlanRepository._();

  @override
  _i1.UuidValue id;

  String name;

  _i2.PlanType planType;

  double unitValue;

  int quantity;

  double totalValue;

  _i3.PlanPeriodicity periodicity;

  _i4.PlanStatus status;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SubscriptionPlan copyWith({
    _i1.UuidValue? id,
    String? name,
    _i2.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i3.PlanPeriodicity? periodicity,
    _i4.PlanStatus? status,
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
    };
  }

  static SubscriptionPlanInclude include() {
    return SubscriptionPlanInclude._();
  }

  static SubscriptionPlanIncludeList includeList({
    _i1.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    SubscriptionPlanInclude? include,
  }) {
    return SubscriptionPlanIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SubscriptionPlan.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _SubscriptionPlanImpl extends SubscriptionPlan {
  _SubscriptionPlanImpl({
    _i1.UuidValue? id,
    required String name,
    required _i2.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i3.PlanPeriodicity periodicity,
    required _i4.PlanStatus status,
  }) : super._(
         id: id,
         name: name,
         planType: planType,
         unitValue: unitValue,
         quantity: quantity,
         totalValue: totalValue,
         periodicity: periodicity,
         status: status,
       );

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SubscriptionPlan copyWith({
    _i1.UuidValue? id,
    String? name,
    _i2.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i3.PlanPeriodicity? periodicity,
    _i4.PlanStatus? status,
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
    );
  }
}

class SubscriptionPlanUpdateTable
    extends _i1.UpdateTable<SubscriptionPlanTable> {
  SubscriptionPlanUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<_i2.PlanType, _i2.PlanType> planType(_i2.PlanType value) =>
      _i1.ColumnValue(
        table.planType,
        value,
      );

  _i1.ColumnValue<double, double> unitValue(double value) => _i1.ColumnValue(
    table.unitValue,
    value,
  );

  _i1.ColumnValue<int, int> quantity(int value) => _i1.ColumnValue(
    table.quantity,
    value,
  );

  _i1.ColumnValue<double, double> totalValue(double value) => _i1.ColumnValue(
    table.totalValue,
    value,
  );

  _i1.ColumnValue<_i3.PlanPeriodicity, _i3.PlanPeriodicity> periodicity(
    _i3.PlanPeriodicity value,
  ) => _i1.ColumnValue(
    table.periodicity,
    value,
  );

  _i1.ColumnValue<_i4.PlanStatus, _i4.PlanStatus> status(
    _i4.PlanStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );
}

class SubscriptionPlanTable extends _i1.Table<_i1.UuidValue> {
  SubscriptionPlanTable({super.tableRelation})
    : super(tableName: 'subscription_plans') {
    updateTable = SubscriptionPlanUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    planType = _i1.ColumnEnum(
      'planType',
      this,
      _i1.EnumSerialization.byName,
    );
    unitValue = _i1.ColumnDouble(
      'unitValue',
      this,
    );
    quantity = _i1.ColumnInt(
      'quantity',
      this,
    );
    totalValue = _i1.ColumnDouble(
      'totalValue',
      this,
    );
    periodicity = _i1.ColumnEnum(
      'periodicity',
      this,
      _i1.EnumSerialization.byName,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final SubscriptionPlanUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnEnum<_i2.PlanType> planType;

  late final _i1.ColumnDouble unitValue;

  late final _i1.ColumnInt quantity;

  late final _i1.ColumnDouble totalValue;

  late final _i1.ColumnEnum<_i3.PlanPeriodicity> periodicity;

  late final _i1.ColumnEnum<_i4.PlanStatus> status;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    planType,
    unitValue,
    quantity,
    totalValue,
    periodicity,
    status,
  ];
}

class SubscriptionPlanInclude extends _i1.IncludeObject {
  SubscriptionPlanInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<_i1.UuidValue> get table => SubscriptionPlan.t;
}

class SubscriptionPlanIncludeList extends _i1.IncludeList {
  SubscriptionPlanIncludeList._({
    _i1.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SubscriptionPlan.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => SubscriptionPlan.t;
}

class SubscriptionPlanRepository {
  const SubscriptionPlanRepository._();

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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? offset,
    _i1.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SubscriptionPlan] by its [id] or null if no such row exists.
  Future<SubscriptionPlan?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SubscriptionPlan>(
      id,
      transaction: transaction,
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
  Future<List<SubscriptionPlan>> insert(
    _i1.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<SubscriptionPlan>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [SubscriptionPlan] and returns the inserted row.
  ///
  /// The returned [SubscriptionPlan] will have its `id` field set.
  Future<SubscriptionPlan> insertRow(
    _i1.DatabaseSession session,
    SubscriptionPlan row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SubscriptionPlan>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionPlan]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SubscriptionPlan>> update(
    _i1.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _i1.ColumnSelections<SubscriptionPlanTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SubscriptionPlan>(
      rows,
      columns: columns?.call(SubscriptionPlan.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SubscriptionPlan]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SubscriptionPlan> updateRow(
    _i1.DatabaseSession session,
    SubscriptionPlan row, {
    _i1.ColumnSelections<SubscriptionPlanTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<SubscriptionPlanUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SubscriptionPlan>(
      id,
      columnValues: columnValues(SubscriptionPlan.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionPlan]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SubscriptionPlan>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<SubscriptionPlanUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<SubscriptionPlanTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SubscriptionPlanTable>? orderBy,
    _i1.OrderByListBuilder<SubscriptionPlanTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SubscriptionPlan>(
      columnValues: columnValues(SubscriptionPlan.t.updateTable),
      where: where(SubscriptionPlan.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionPlan.t),
      orderByList: orderByList?.call(SubscriptionPlan.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SubscriptionPlan]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SubscriptionPlan>> delete(
    _i1.DatabaseSession session,
    List<SubscriptionPlan> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SubscriptionPlan>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SubscriptionPlan].
  Future<SubscriptionPlan> deleteRow(
    _i1.DatabaseSession session,
    SubscriptionPlan row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SubscriptionPlan>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SubscriptionPlan>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SubscriptionPlanTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SubscriptionPlan>(
      where: where(SubscriptionPlan.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SubscriptionPlanTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SubscriptionPlan>(
      where: where?.call(SubscriptionPlan.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SubscriptionPlan] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SubscriptionPlanTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SubscriptionPlan>(
      where: where(SubscriptionPlan.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
