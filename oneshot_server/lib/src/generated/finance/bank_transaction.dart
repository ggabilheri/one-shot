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
import 'dart:async' as _ida;

import 'package:oneshot_server/src/generated/protocol.dart' as _iwflrbqm;
import 'package:serverpod/serverpod.dart' as _is;

import '../finance/bank_account.dart' as _iqlw3pat;
import '../finance/financial_entry.dart' as _ihdy8ekq;

abstract class BankTransaction
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  BankTransaction._({
    _is.UuidValue? id,
    required this.bankAccountId,
    this.bankAccount,
    required this.fitId,
    required this.transactionType,
    required this.date,
    required this.amount,
    this.memo,
    this.financialEntryId,
    this.financialEntry,
    required this.isReconciled,
    this.reconciledAt,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory BankTransaction({
    _is.UuidValue? id,
    required _is.UuidValue bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    required String fitId,
    required String transactionType,
    required DateTime date,
    required double amount,
    String? memo,
    _is.UuidValue? financialEntryId,
    _ihdy8ekq.FinancialEntry? financialEntry,
    required bool isReconciled,
    DateTime? reconciledAt,
  }) = _BankTransactionImpl;

  factory BankTransaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankTransaction(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bankAccountId: _is.UuidValueJsonExtension.fromJson(
        jsonSerialization['bankAccountId'],
      ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iqlw3pat.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      fitId: jsonSerialization['fitId'] as String,
      transactionType: jsonSerialization['transactionType'] as String,
      date: _is.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      amount: (jsonSerialization['amount'] as num).toDouble(),
      memo: jsonSerialization['memo'] as String?,
      financialEntryId: jsonSerialization['financialEntryId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['financialEntryId'],
            ),
      financialEntry: jsonSerialization['financialEntry'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_ihdy8ekq.FinancialEntry>(
              jsonSerialization['financialEntry'],
            ),
      isReconciled: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isReconciled'],
      ),
      reconciledAt: jsonSerialization['reconciledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['reconciledAt'],
            ),
    );
  }

  static final t = BankTransactionTable();

  static const db = BankTransactionRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue bankAccountId;

  _iqlw3pat.BankAccount? bankAccount;

  String fitId;

  String transactionType;

  DateTime date;

  double amount;

  String? memo;

  _is.UuidValue? financialEntryId;

  _ihdy8ekq.FinancialEntry? financialEntry;

  bool isReconciled;

  DateTime? reconciledAt;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [BankTransaction]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  BankTransaction copyWith({
    _is.UuidValue? id,
    _is.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount =
        const _UndefinedBankTransaction$bankAccount(),
    String? fitId,
    String? transactionType,
    DateTime? date,
    double? amount,
    String? memo,
    _is.UuidValue? financialEntryId = const _is.$UndefinedUuidValue(),
    _ihdy8ekq.FinancialEntry? financialEntry =
        const _UndefinedBankTransaction$financialEntry(),
    bool? isReconciled,
    DateTime? reconciledAt = const _is.$UndefinedDateTime(),
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankTransaction',
      'id': id.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      'fitId': fitId,
      'transactionType': transactionType,
      'date': date.toJson(),
      'amount': amount,
      if (memo != null) 'memo': memo,
      if (financialEntryId != null)
        'financialEntryId': financialEntryId?.toJson(),
      if (financialEntry != null) 'financialEntry': financialEntry?.toJson(),
      'isReconciled': isReconciled,
      if (reconciledAt != null) 'reconciledAt': reconciledAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'BankTransaction',
      'id': id.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJsonForProtocol(),
      'fitId': fitId,
      'transactionType': transactionType,
      'date': date.toJson(),
      'amount': amount,
      if (memo != null) 'memo': memo,
      if (financialEntryId != null)
        'financialEntryId': financialEntryId?.toJson(),
      if (financialEntry != null)
        'financialEntry': financialEntry?.toJsonForProtocol(),
      'isReconciled': isReconciled,
      if (reconciledAt != null) 'reconciledAt': reconciledAt?.toJson(),
    };
  }

  static BankTransactionInclude include({
    _iqlw3pat.BankAccountInclude? bankAccount,
    _ihdy8ekq.FinancialEntryInclude? financialEntry,
  }) {
    return BankTransactionInclude._(
      bankAccount: bankAccount,
      financialEntry: financialEntry,
    );
  }

  static BankTransactionIncludeList includeList({
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    BankTransactionInclude? include,
  }) {
    return BankTransactionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UndefinedBankTransaction$bankAccount extends _is.UndefinedSentinel
    implements _iqlw3pat.BankAccount {
  const _UndefinedBankTransaction$bankAccount();
}

class _UndefinedBankTransaction$financialEntry extends _is.UndefinedSentinel
    implements _ihdy8ekq.FinancialEntry {
  const _UndefinedBankTransaction$financialEntry();
}

class _BankTransactionImpl extends BankTransaction {
  _BankTransactionImpl({
    _is.UuidValue? id,
    required _is.UuidValue bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    required String fitId,
    required String transactionType,
    required DateTime date,
    required double amount,
    String? memo,
    _is.UuidValue? financialEntryId,
    _ihdy8ekq.FinancialEntry? financialEntry,
    required bool isReconciled,
    DateTime? reconciledAt,
  }) : super._(
         id: id,
         bankAccountId: bankAccountId,
         bankAccount: bankAccount,
         fitId: fitId,
         transactionType: transactionType,
         date: date,
         amount: amount,
         memo: memo,
         financialEntryId: financialEntryId,
         financialEntry: financialEntry,
         isReconciled: isReconciled,
         reconciledAt: reconciledAt,
       );

  /// Returns a shallow copy of this [BankTransaction]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  BankTransaction copyWith({
    _is.UuidValue? id,
    _is.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount =
        const _UndefinedBankTransaction$bankAccount(),
    String? fitId,
    String? transactionType,
    DateTime? date,
    double? amount,
    Object? memo = _Undefined,
    _is.UuidValue? financialEntryId = const _is.$UndefinedUuidValue(),
    _ihdy8ekq.FinancialEntry? financialEntry =
        const _UndefinedBankTransaction$financialEntry(),
    bool? isReconciled,
    DateTime? reconciledAt = const _is.$UndefinedDateTime(),
  }) {
    return BankTransaction(
      id: id ?? this.id,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      bankAccount: bankAccount is _is.UndefinedSentinel
          ? this.bankAccount?.copyWith()
          : bankAccount,
      fitId: fitId ?? this.fitId,
      transactionType: transactionType ?? this.transactionType,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      memo: memo is String? ? memo : this.memo,
      financialEntryId: financialEntryId is _is.UndefinedSentinel
          ? this.financialEntryId
          : financialEntryId,
      financialEntry: financialEntry is _is.UndefinedSentinel
          ? this.financialEntry?.copyWith()
          : financialEntry,
      isReconciled: isReconciled ?? this.isReconciled,
      reconciledAt: reconciledAt is _is.UndefinedSentinel
          ? this.reconciledAt
          : reconciledAt,
    );
  }
}

class BankTransactionUpdateTable extends _is.UpdateTable<BankTransactionTable> {
  BankTransactionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bankAccountId(
    _is.UuidValue value,
  ) => _is.ColumnValue(table.bankAccountId, value);

  _is.ColumnValue<String, String> fitId(String value) =>
      _is.ColumnValue(table.fitId, value);

  _is.ColumnValue<String, String> transactionType(String value) =>
      _is.ColumnValue(table.transactionType, value);

  _is.ColumnValue<DateTime, DateTime> date(DateTime value) =>
      _is.ColumnValue(table.date, value);

  _is.ColumnValue<double, double> amount(double value) =>
      _is.ColumnValue(table.amount, value);

  _is.ColumnValue<String, String> memo(String? value) =>
      _is.ColumnValue(table.memo, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> financialEntryId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.financialEntryId, value);

  _is.ColumnValue<bool, bool> isReconciled(bool value) =>
      _is.ColumnValue(table.isReconciled, value);

  _is.ColumnValue<DateTime, DateTime> reconciledAt(DateTime? value) =>
      _is.ColumnValue(table.reconciledAt, value);
}

class BankTransactionTable extends _is.Table<_is.UuidValue> {
  BankTransactionTable({super.tableRelation})
    : super(tableName: 'bank_transactions') {
    updateTable = BankTransactionUpdateTable(this);
    bankAccountId = _is.ColumnUuid('bankAccountId', this);
    fitId = _is.ColumnString('fitId', this);
    transactionType = _is.ColumnString('transactionType', this);
    date = _is.ColumnDateTime('date', this);
    amount = _is.ColumnDouble('amount', this);
    memo = _is.ColumnString('memo', this);
    financialEntryId = _is.ColumnUuid('financialEntryId', this);
    isReconciled = _is.ColumnBool('isReconciled', this);
    reconciledAt = _is.ColumnDateTime('reconciledAt', this);
  }

  late final BankTransactionUpdateTable updateTable;

  late final _is.ColumnUuid bankAccountId;

  _iqlw3pat.BankAccountTable? _bankAccount;

  late final _is.ColumnString fitId;

  late final _is.ColumnString transactionType;

  late final _is.ColumnDateTime date;

  late final _is.ColumnDouble amount;

  late final _is.ColumnString memo;

  late final _is.ColumnUuid financialEntryId;

  _ihdy8ekq.FinancialEntryTable? _financialEntry;

  late final _is.ColumnBool isReconciled;

  late final _is.ColumnDateTime reconciledAt;

  _iqlw3pat.BankAccountTable get bankAccount {
    if (_bankAccount != null) return _bankAccount!;
    _bankAccount = _is.createRelationTable(
      relationFieldName: 'bankAccount',
      field: BankTransaction.t.bankAccountId,
      foreignField: _iqlw3pat.BankAccount.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iqlw3pat.BankAccountTable(tableRelation: foreignTableRelation),
    );
    return _bankAccount!;
  }

  _ihdy8ekq.FinancialEntryTable get financialEntry {
    if (_financialEntry != null) return _financialEntry!;
    _financialEntry = _is.createRelationTable(
      relationFieldName: 'financialEntry',
      field: BankTransaction.t.financialEntryId,
      foreignField: _ihdy8ekq.FinancialEntry.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _ihdy8ekq.FinancialEntryTable(tableRelation: foreignTableRelation),
    );
    return _financialEntry!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    bankAccountId,
    fitId,
    transactionType,
    date,
    amount,
    memo,
    financialEntryId,
    isReconciled,
    reconciledAt,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'bankAccount') {
      return bankAccount;
    }
    if (relationField == 'financialEntry') {
      return financialEntry;
    }
    return null;
  }
}

class BankTransactionInclude extends _is.IncludeObject {
  BankTransactionInclude._({
    _iqlw3pat.BankAccountInclude? bankAccount,
    _ihdy8ekq.FinancialEntryInclude? financialEntry,
  }) {
    _bankAccount = bankAccount;
    _financialEntry = financialEntry;
  }

  _iqlw3pat.BankAccountInclude? _bankAccount;

  _ihdy8ekq.FinancialEntryInclude? _financialEntry;

  @override
  Map<String, _is.Include?> get includes => {
    'bankAccount': _bankAccount,
    'financialEntry': _financialEntry,
  };

  @override
  _is.Table<_is.UuidValue> get table => BankTransaction.t;
}

class BankTransactionIncludeList extends _is.IncludeList {
  BankTransactionIncludeList._({
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BankTransaction.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => BankTransaction.t;
}

class BankTransactionRepository {
  const BankTransactionRepository._();

  final attachRow = const BankTransactionAttachRowRepository._();

  final detachRow = const BankTransactionDetachRowRepository._();

  /// Returns a list of [BankTransaction]s matching the given query parameters.
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
  Future<List<BankTransaction>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    _is.Transaction? transaction,
    BankTransactionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<BankTransaction>(
      where: where?.call(BankTransaction.t),
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Emits [BankTransaction]s matching the given query parameters every time the
  /// source tables are modified.
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
  /// Use [throttle] to specify the minimum interval between queries. It can
  /// also be set to `null`, in which case the stream will only be throttled
  /// when its subscription is paused.
  ///
  /// Source tables are collected from the queried table, [where], [orderBy],
  /// [orderByList], and the [include] graph. [alsoTriggerOnTables] is added
  /// to that set. Pass [Table] instances such as `BankTransaction.t`.
  ///
  /// Raw [Expression] SQL is not inspected. Tables referenced only in raw
  /// SQL must be passed via [alsoTriggerOnTables].
  ///
  /// The stream always reads committed state and never joins an ambient
  /// [Transaction]. Emissions for a write fire after that write commits.
  ///
  /// Currently only supported on SQLite. Calling this method on PostgreSQL
  /// throws an [UnsupportedError].
  ///
  /// ```dart
  /// var subscription = Persons.db.watch(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// ).listen((persons) {
  ///   // Handle the latest matching rows.
  /// });
  /// ```
  _ida.Stream<List<BankTransaction>> watch(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    BankTransactionInclude? include,
    Duration? throttle = const Duration(milliseconds: 30),
    Iterable<_is.Table>? alsoTriggerOnTables,
  }) {
    return session.db.watch<BankTransaction>(
      where: where?.call(BankTransaction.t),
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      limit: limit,
      offset: offset,
      include: include,
      throttle: throttle,
      alsoTriggerOnTables: alsoTriggerOnTables,
    );
  }

  /// Returns the first matching [BankTransaction] matching the given query parameters.
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
  Future<BankTransaction?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    int? offset,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    _is.Transaction? transaction,
    BankTransactionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<BankTransaction>(
      where: where?.call(BankTransaction.t),
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [BankTransaction] by its [id] or null if no such row exists.
  Future<BankTransaction?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    BankTransactionInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<BankTransaction>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [BankTransaction]s in the list and returns the inserted rows.
  ///
  /// The returned [BankTransaction]s will have their `id` fields set.
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
  Future<List<BankTransaction>> insert(
    _is.DatabaseSession session,
    List<BankTransaction> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<BankTransaction>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [BankTransaction] and returns the inserted row.
  ///
  /// The returned [BankTransaction] will have its `id` field set.
  Future<BankTransaction> insertRow(
    _is.DatabaseSession session,
    BankTransaction row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<BankTransaction>(row, transaction: transaction);
  }

  /// Upserts all [BankTransaction]s in the list and returns the resulting rows.
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
  /// The returned [BankTransaction]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankTransaction>> upsert(
    _is.DatabaseSession session,
    List<BankTransaction> rows, {
    required _is.ColumnSelections<BankTransactionTable> conflictColumns,
    _is.ColumnSelections<BankTransactionTable>? updateColumns,
    _is.WhereExpressionBuilder<BankTransactionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<BankTransaction>(
      rows,
      conflictColumns: conflictColumns(BankTransaction.t),
      updateColumns: updateColumns?.call(BankTransaction.t),
      updateWhere: updateWhere?.call(BankTransaction.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [BankTransaction] and returns the resulting row.
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
  /// The returned [BankTransaction] will have its `id` field set.
  Future<BankTransaction?> upsertRow(
    _is.DatabaseSession session,
    BankTransaction row, {
    required _is.ColumnSelections<BankTransactionTable> conflictColumns,
    _is.ColumnSelections<BankTransactionTable>? updateColumns,
    _is.WhereExpressionBuilder<BankTransactionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<BankTransaction>(
      row,
      conflictColumns: conflictColumns(BankTransaction.t),
      updateColumns: updateColumns?.call(BankTransaction.t),
      updateWhere: updateWhere?.call(BankTransaction.t),
      transaction: transaction,
    );
  }

  /// Updates all [BankTransaction]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankTransaction>> update(
    _is.DatabaseSession session,
    List<BankTransaction> rows, {
    _is.ColumnSelections<BankTransactionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<BankTransaction>(
      rows,
      columns: columns?.call(BankTransaction.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [BankTransaction]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<BankTransaction> updateRow(
    _is.DatabaseSession session,
    BankTransaction row, {
    _is.ColumnSelections<BankTransactionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<BankTransaction>(
      row,
      columns: columns?.call(BankTransaction.t),
      transaction: transaction,
    );
  }

  /// Updates a single [BankTransaction] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<BankTransaction?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<BankTransactionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<BankTransaction>(
      id,
      columnValues: columnValues(BankTransaction.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [BankTransaction]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankTransaction>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<BankTransactionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<BankTransactionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<BankTransaction>(
      columnValues: columnValues(BankTransaction.t.updateTable),
      where: where(BankTransaction.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [BankTransaction]s in the list and returns the deleted rows.
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
  Future<List<BankTransaction>> delete(
    _is.DatabaseSession session,
    List<BankTransaction> rows, {
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<BankTransaction>(
      rows,
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [BankTransaction].
  Future<BankTransaction> deleteRow(
    _is.DatabaseSession session,
    BankTransaction row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BankTransaction>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankTransaction>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<BankTransactionTable> where,
    _is.OrderByBuilder<BankTransactionTable>? orderBy,
    _is.OrderByListBuilder<BankTransactionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<BankTransaction>(
      where: where(BankTransaction.t),
      orderBy: orderBy?.call(BankTransaction.t),
      orderByList: orderByList?.call(BankTransaction.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankTransactionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<BankTransaction>(
      where: where?.call(BankTransaction.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [BankTransaction] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<BankTransactionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<BankTransaction>(
      where: where(BankTransaction.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class BankTransactionAttachRowRepository {
  const BankTransactionAttachRowRepository._();

  /// Creates a relation between the given [BankTransaction] and [BankAccount]
  /// by setting the [BankTransaction]'s foreign key `bankAccountId` to refer to the [BankAccount].
  Future<void> bankAccount(
    _is.DatabaseSession session,
    BankTransaction bankTransaction,
    _iqlw3pat.BankAccount bankAccount, {
    _is.Transaction? transaction,
  }) async {
    if (bankTransaction.id == null) {
      throw ArgumentError.notNull('bankTransaction.id');
    }
    if (bankAccount.id == null) {
      throw ArgumentError.notNull('bankAccount.id');
    }

    var $bankTransaction = bankTransaction.copyWith(
      bankAccountId: bankAccount.id,
    );
    await session.db.updateRow<BankTransaction>(
      $bankTransaction,
      columns: [BankTransaction.t.bankAccountId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [BankTransaction] and [FinancialEntry]
  /// by setting the [BankTransaction]'s foreign key `financialEntryId` to refer to the [FinancialEntry].
  Future<void> financialEntry(
    _is.DatabaseSession session,
    BankTransaction bankTransaction,
    _ihdy8ekq.FinancialEntry financialEntry, {
    _is.Transaction? transaction,
  }) async {
    if (bankTransaction.id == null) {
      throw ArgumentError.notNull('bankTransaction.id');
    }
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }

    var $bankTransaction = bankTransaction.copyWith(
      financialEntryId: financialEntry.id,
    );
    await session.db.updateRow<BankTransaction>(
      $bankTransaction,
      columns: [BankTransaction.t.financialEntryId],
      transaction: transaction,
    );
  }
}

class BankTransactionDetachRowRepository {
  const BankTransactionDetachRowRepository._();

  /// Detaches the relation between this [BankTransaction] and the [FinancialEntry] set in `financialEntry`
  /// by setting the [BankTransaction]'s foreign key `financialEntryId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> financialEntry(
    _is.DatabaseSession session,
    BankTransaction bankTransaction, {
    _is.Transaction? transaction,
  }) async {
    if (bankTransaction.id == null) {
      throw ArgumentError.notNull('bankTransaction.id');
    }

    var $bankTransaction = bankTransaction.copyWith(financialEntryId: null);
    await session.db.updateRow<BankTransaction>(
      $bankTransaction,
      columns: [BankTransaction.t.financialEntryId],
      transaction: transaction,
    );
  }
}
