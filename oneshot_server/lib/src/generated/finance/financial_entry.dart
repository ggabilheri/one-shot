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
import '../enums/financial_entry_type.dart' as _i2;
import '../enums/financial_entry_status.dart' as _i3;
import '../enums/platform_app.enum.dart' as _i4;
import '../finance/bank_account.dart' as _i5;
import '../finance/invoice.dart' as _i6;
import 'package:oneshot_server/src/generated/protocol.dart' as _i7;

abstract class FinancialEntry
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  FinancialEntry._({
    _i1.UuidValue? id,
    required this.type,
    required this.description,
    required this.amount,
    required this.dueDate,
    this.paymentDate,
    required this.status,
    required this.originModule,
    required this.bankAccountId,
    this.bankAccount,
    required this.invoiceId,
    this.invoice,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory FinancialEntry({
    _i1.UuidValue? id,
    required _i2.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _i3.FinancialEntryStatus status,
    required _i4.PlatformApp originModule,
    required _i1.UuidValue bankAccountId,
    _i5.BankAccount? bankAccount,
    required _i1.UuidValue invoiceId,
    _i6.Invoice? invoice,
  }) = _FinancialEntryImpl;

  factory FinancialEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return FinancialEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      type: _i2.FinancialEntryType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      description: jsonSerialization['description'] as String,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      dueDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      paymentDate: jsonSerialization['paymentDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['paymentDate'],
            ),
      status: _i3.FinancialEntryStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      originModule: _i4.PlatformApp.fromJson(
        (jsonSerialization['originModule'] as String),
      ),
      bankAccountId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['bankAccountId'],
      ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _i7.Protocol().deserialize<_i5.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      invoiceId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
      ),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  static final t = FinancialEntryTable();

  static const db = FinancialEntryRepository._();

  @override
  _i1.UuidValue id;

  _i2.FinancialEntryType type;

  String description;

  double amount;

  DateTime dueDate;

  DateTime? paymentDate;

  _i3.FinancialEntryStatus status;

  _i4.PlatformApp originModule;

  _i1.UuidValue bankAccountId;

  _i5.BankAccount? bankAccount;

  _i1.UuidValue invoiceId;

  _i6.Invoice? invoice;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  FinancialEntry copyWith({
    _i1.UuidValue? id,
    _i2.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    DateTime? paymentDate,
    _i3.FinancialEntryStatus? status,
    _i4.PlatformApp? originModule,
    _i1.UuidValue? bankAccountId,
    _i5.BankAccount? bankAccount,
    _i1.UuidValue? invoiceId,
    _i6.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'FinancialEntry',
      'id': id.toJson(),
      'type': type.toJson(),
      'description': description,
      'amount': amount,
      'dueDate': dueDate.toJson(),
      if (paymentDate != null) 'paymentDate': paymentDate?.toJson(),
      'status': status.toJson(),
      'originModule': originModule.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      'invoiceId': invoiceId.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'FinancialEntry',
      'id': id.toJson(),
      'type': type.toJson(),
      'description': description,
      'amount': amount,
      'dueDate': dueDate.toJson(),
      if (paymentDate != null) 'paymentDate': paymentDate?.toJson(),
      'status': status.toJson(),
      'originModule': originModule.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJsonForProtocol(),
      'invoiceId': invoiceId.toJson(),
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
    };
  }

  static FinancialEntryInclude include({
    _i5.BankAccountInclude? bankAccount,
    _i6.InvoiceInclude? invoice,
  }) {
    return FinancialEntryInclude._(
      bankAccount: bankAccount,
      invoice: invoice,
    );
  }

  static FinancialEntryIncludeList includeList({
    _i1.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FinancialEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FinancialEntryTable>? orderByList,
    FinancialEntryInclude? include,
  }) {
    return FinancialEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FinancialEntry.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FinancialEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FinancialEntryImpl extends FinancialEntry {
  _FinancialEntryImpl({
    _i1.UuidValue? id,
    required _i2.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _i3.FinancialEntryStatus status,
    required _i4.PlatformApp originModule,
    required _i1.UuidValue bankAccountId,
    _i5.BankAccount? bankAccount,
    required _i1.UuidValue invoiceId,
    _i6.Invoice? invoice,
  }) : super._(
         id: id,
         type: type,
         description: description,
         amount: amount,
         dueDate: dueDate,
         paymentDate: paymentDate,
         status: status,
         originModule: originModule,
         bankAccountId: bankAccountId,
         bankAccount: bankAccount,
         invoiceId: invoiceId,
         invoice: invoice,
       );

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  FinancialEntry copyWith({
    _i1.UuidValue? id,
    _i2.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    Object? paymentDate = _Undefined,
    _i3.FinancialEntryStatus? status,
    _i4.PlatformApp? originModule,
    _i1.UuidValue? bankAccountId,
    Object? bankAccount = _Undefined,
    _i1.UuidValue? invoiceId,
    Object? invoice = _Undefined,
  }) {
    return FinancialEntry(
      id: id ?? this.id,
      type: type ?? this.type,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      dueDate: dueDate ?? this.dueDate,
      paymentDate: paymentDate is DateTime? ? paymentDate : this.paymentDate,
      status: status ?? this.status,
      originModule: originModule ?? this.originModule,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      bankAccount: bankAccount is _i5.BankAccount?
          ? bankAccount
          : this.bankAccount?.copyWith(),
      invoiceId: invoiceId ?? this.invoiceId,
      invoice: invoice is _i6.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}

class FinancialEntryUpdateTable extends _i1.UpdateTable<FinancialEntryTable> {
  FinancialEntryUpdateTable(super.table);

  _i1.ColumnValue<_i2.FinancialEntryType, _i2.FinancialEntryType> type(
    _i2.FinancialEntryType value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<double, double> amount(double value) => _i1.ColumnValue(
    table.amount,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dueDate(DateTime value) =>
      _i1.ColumnValue(
        table.dueDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> paymentDate(DateTime? value) =>
      _i1.ColumnValue(
        table.paymentDate,
        value,
      );

  _i1.ColumnValue<_i3.FinancialEntryStatus, _i3.FinancialEntryStatus> status(
    _i3.FinancialEntryStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<_i4.PlatformApp, _i4.PlatformApp> originModule(
    _i4.PlatformApp value,
  ) => _i1.ColumnValue(
    table.originModule,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> bankAccountId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.bankAccountId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> invoiceId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.invoiceId,
    value,
  );
}

class FinancialEntryTable extends _i1.Table<_i1.UuidValue> {
  FinancialEntryTable({super.tableRelation})
    : super(tableName: 'financial_entries') {
    updateTable = FinancialEntryUpdateTable(this);
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    amount = _i1.ColumnDouble(
      'amount',
      this,
    );
    dueDate = _i1.ColumnDateTime(
      'dueDate',
      this,
    );
    paymentDate = _i1.ColumnDateTime(
      'paymentDate',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    originModule = _i1.ColumnEnum(
      'originModule',
      this,
      _i1.EnumSerialization.byName,
    );
    bankAccountId = _i1.ColumnUuid(
      'bankAccountId',
      this,
    );
    invoiceId = _i1.ColumnUuid(
      'invoiceId',
      this,
    );
  }

  late final FinancialEntryUpdateTable updateTable;

  late final _i1.ColumnEnum<_i2.FinancialEntryType> type;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble amount;

  late final _i1.ColumnDateTime dueDate;

  late final _i1.ColumnDateTime paymentDate;

  late final _i1.ColumnEnum<_i3.FinancialEntryStatus> status;

  late final _i1.ColumnEnum<_i4.PlatformApp> originModule;

  late final _i1.ColumnUuid bankAccountId;

  _i5.BankAccountTable? _bankAccount;

  late final _i1.ColumnUuid invoiceId;

  _i6.InvoiceTable? _invoice;

  _i5.BankAccountTable get bankAccount {
    if (_bankAccount != null) return _bankAccount!;
    _bankAccount = _i1.createRelationTable(
      relationFieldName: 'bankAccount',
      field: FinancialEntry.t.bankAccountId,
      foreignField: _i5.BankAccount.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.BankAccountTable(tableRelation: foreignTableRelation),
    );
    return _bankAccount!;
  }

  _i6.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _i1.createRelationTable(
      relationFieldName: 'invoice',
      field: FinancialEntry.t.invoiceId,
      foreignField: _i6.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    type,
    description,
    amount,
    dueDate,
    paymentDate,
    status,
    originModule,
    bankAccountId,
    invoiceId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'bankAccount') {
      return bankAccount;
    }
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class FinancialEntryInclude extends _i1.IncludeObject {
  FinancialEntryInclude._({
    _i5.BankAccountInclude? bankAccount,
    _i6.InvoiceInclude? invoice,
  }) {
    _bankAccount = bankAccount;
    _invoice = invoice;
  }

  _i5.BankAccountInclude? _bankAccount;

  _i6.InvoiceInclude? _invoice;

  @override
  Map<String, _i1.Include?> get includes => {
    'bankAccount': _bankAccount,
    'invoice': _invoice,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => FinancialEntry.t;
}

class FinancialEntryIncludeList extends _i1.IncludeList {
  FinancialEntryIncludeList._({
    _i1.WhereExpressionBuilder<FinancialEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FinancialEntry.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => FinancialEntry.t;
}

class FinancialEntryRepository {
  const FinancialEntryRepository._();

  final attachRow = const FinancialEntryAttachRowRepository._();

  /// Returns a list of [FinancialEntry]s matching the given query parameters.
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
  Future<List<FinancialEntry>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FinancialEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _i1.Transaction? transaction,
    FinancialEntryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [FinancialEntry] matching the given query parameters.
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
  Future<FinancialEntry?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? offset,
    _i1.OrderByBuilder<FinancialEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _i1.Transaction? transaction,
    FinancialEntryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [FinancialEntry] by its [id] or null if no such row exists.
  Future<FinancialEntry?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    FinancialEntryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<FinancialEntry>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [FinancialEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [FinancialEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<FinancialEntry>> insert(
    _i1.DatabaseSession session,
    List<FinancialEntry> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<FinancialEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [FinancialEntry] and returns the inserted row.
  ///
  /// The returned [FinancialEntry] will have its `id` field set.
  Future<FinancialEntry> insertRow(
    _i1.DatabaseSession session,
    FinancialEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<FinancialEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [FinancialEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<FinancialEntry>> update(
    _i1.DatabaseSession session,
    List<FinancialEntry> rows, {
    _i1.ColumnSelections<FinancialEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<FinancialEntry>(
      rows,
      columns: columns?.call(FinancialEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FinancialEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<FinancialEntry> updateRow(
    _i1.DatabaseSession session,
    FinancialEntry row, {
    _i1.ColumnSelections<FinancialEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<FinancialEntry>(
      row,
      columns: columns?.call(FinancialEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FinancialEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<FinancialEntry?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<FinancialEntryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<FinancialEntry>(
      id,
      columnValues: columnValues(FinancialEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [FinancialEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<FinancialEntry>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<FinancialEntryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<FinancialEntryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FinancialEntryTable>? orderBy,
    _i1.OrderByListBuilder<FinancialEntryTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<FinancialEntry>(
      columnValues: columnValues(FinancialEntry.t.updateTable),
      where: where(FinancialEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [FinancialEntry]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<FinancialEntry>> delete(
    _i1.DatabaseSession session,
    List<FinancialEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FinancialEntry>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [FinancialEntry].
  Future<FinancialEntry> deleteRow(
    _i1.DatabaseSession session,
    FinancialEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<FinancialEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<FinancialEntry>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FinancialEntryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<FinancialEntry>(
      where: where(FinancialEntry.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [FinancialEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FinancialEntryTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<FinancialEntry>(
      where: where(FinancialEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class FinancialEntryAttachRowRepository {
  const FinancialEntryAttachRowRepository._();

  /// Creates a relation between the given [FinancialEntry] and [BankAccount]
  /// by setting the [FinancialEntry]'s foreign key `bankAccountId` to refer to the [BankAccount].
  Future<void> bankAccount(
    _i1.DatabaseSession session,
    FinancialEntry financialEntry,
    _i5.BankAccount bankAccount, {
    _i1.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }
    if (bankAccount.id == null) {
      throw ArgumentError.notNull('bankAccount.id');
    }

    var $financialEntry = financialEntry.copyWith(
      bankAccountId: bankAccount.id,
    );
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.bankAccountId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [FinancialEntry] and [Invoice]
  /// by setting the [FinancialEntry]'s foreign key `invoiceId` to refer to the [Invoice].
  Future<void> invoice(
    _i1.DatabaseSession session,
    FinancialEntry financialEntry,
    _i6.Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $financialEntry = financialEntry.copyWith(invoiceId: invoice.id);
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.invoiceId],
      transaction: transaction,
    );
  }
}
