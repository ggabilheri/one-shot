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
import '../enums/financial_entry_status.dart' as _ig5968cj;
import '../enums/financial_entry_type.dart' as _i3i99b7x;
import '../enums/platform_app.enum.dart' as _ie17db6d;
import '../finance/bank_account.dart' as _iqlw3pat;
import '../finance/invoice.dart' as _i3d856q3;

abstract class FinancialEntry
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  FinancialEntry._({
    _is.UuidValue? id,
    required this.type,
    required this.description,
    required this.amount,
    required this.dueDate,
    this.paymentDate,
    required this.status,
    required this.originModule,
    this.bankAccountId,
    this.bankAccount,
    this.invoiceId,
    this.invoice,
    this.companyId,
    this.company,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory FinancialEntry({
    _is.UuidValue? id,
    required _i3i99b7x.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _ig5968cj.FinancialEntryStatus status,
    required _ie17db6d.PlatformApp originModule,
    _is.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _FinancialEntryImpl;

  factory FinancialEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return FinancialEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      type: _i3i99b7x.FinancialEntryType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      description: jsonSerialization['description'] as String,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      dueDate: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      paymentDate: jsonSerialization['paymentDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['paymentDate'],
            ),
      status: _ig5968cj.FinancialEntryStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      originModule: _ie17db6d.PlatformApp.fromJson(
        (jsonSerialization['originModule'] as String),
      ),
      bankAccountId: jsonSerialization['bankAccountId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['bankAccountId'],
            ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iqlw3pat.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i3d856q3.Invoice>(
              jsonSerialization['invoice'],
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

  static final t = FinancialEntryTable();

  static const db = FinancialEntryRepository._();

  @override
  _is.UuidValue id;

  _i3i99b7x.FinancialEntryType type;

  String description;

  double amount;

  DateTime dueDate;

  DateTime? paymentDate;

  _ig5968cj.FinancialEntryStatus status;

  _ie17db6d.PlatformApp originModule;

  _is.UuidValue? bankAccountId;

  _iqlw3pat.BankAccount? bankAccount;

  _is.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  FinancialEntry copyWith({
    _is.UuidValue? id,
    _i3i99b7x.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    DateTime? paymentDate,
    _ig5968cj.FinancialEntryStatus? status,
    _ie17db6d.PlatformApp? originModule,
    _is.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
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
      if (bankAccountId != null) 'bankAccountId': bankAccountId?.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
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
      if (bankAccountId != null) 'bankAccountId': bankAccountId?.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJsonForProtocol(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  static FinancialEntryInclude include({
    _iqlw3pat.BankAccountInclude? bankAccount,
    _i3d856q3.InvoiceInclude? invoice,
    _iocy1ifk.CompanyInclude? company,
  }) {
    return FinancialEntryInclude._(
      bankAccount: bankAccount,
      invoice: invoice,
      company: company,
    );
  }

  static FinancialEntryIncludeList includeList({
    _is.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    FinancialEntryInclude? include,
  }) {
    return FinancialEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FinancialEntryImpl extends FinancialEntry {
  _FinancialEntryImpl({
    _is.UuidValue? id,
    required _i3i99b7x.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _ig5968cj.FinancialEntryStatus status,
    required _ie17db6d.PlatformApp originModule,
    _is.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
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
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  FinancialEntry copyWith({
    _is.UuidValue? id,
    _i3i99b7x.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    Object? paymentDate = _Undefined,
    _ig5968cj.FinancialEntryStatus? status,
    _ie17db6d.PlatformApp? originModule,
    Object? bankAccountId = _Undefined,
    Object? bankAccount = _Undefined,
    Object? invoiceId = _Undefined,
    Object? invoice = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
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
      bankAccountId: bankAccountId is _is.UuidValue?
          ? bankAccountId
          : this.bankAccountId,
      bankAccount: bankAccount is _iqlw3pat.BankAccount?
          ? bankAccount
          : this.bankAccount?.copyWith(),
      invoiceId: invoiceId is _is.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
    );
  }
}

class FinancialEntryUpdateTable extends _is.UpdateTable<FinancialEntryTable> {
  FinancialEntryUpdateTable(super.table);

  _is.ColumnValue<_i3i99b7x.FinancialEntryType, _i3i99b7x.FinancialEntryType>
  type(_i3i99b7x.FinancialEntryType value) =>
      _is.ColumnValue(table.type, value);

  _is.ColumnValue<String, String> description(String value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<double, double> amount(double value) =>
      _is.ColumnValue(table.amount, value);

  _is.ColumnValue<DateTime, DateTime> dueDate(DateTime value) =>
      _is.ColumnValue(table.dueDate, value);

  _is.ColumnValue<DateTime, DateTime> paymentDate(DateTime? value) =>
      _is.ColumnValue(table.paymentDate, value);

  _is.ColumnValue<
    _ig5968cj.FinancialEntryStatus,
    _ig5968cj.FinancialEntryStatus
  >
  status(_ig5968cj.FinancialEntryStatus value) =>
      _is.ColumnValue(table.status, value);

  _is.ColumnValue<_ie17db6d.PlatformApp, _ie17db6d.PlatformApp> originModule(
    _ie17db6d.PlatformApp value,
  ) => _is.ColumnValue(table.originModule, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> bankAccountId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.bankAccountId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.invoiceId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);
}

class FinancialEntryTable extends _is.Table<_is.UuidValue> {
  FinancialEntryTable({super.tableRelation})
    : super(tableName: 'financial_entries') {
    updateTable = FinancialEntryUpdateTable(this);
    type = _is.ColumnEnum('type', this, _is.EnumSerialization.byName);
    description = _is.ColumnString('description', this);
    amount = _is.ColumnDouble('amount', this);
    dueDate = _is.ColumnDateTime('dueDate', this);
    paymentDate = _is.ColumnDateTime('paymentDate', this);
    status = _is.ColumnEnum('status', this, _is.EnumSerialization.byName);
    originModule = _is.ColumnEnum(
      'originModule',
      this,
      _is.EnumSerialization.byName,
    );
    bankAccountId = _is.ColumnUuid('bankAccountId', this);
    invoiceId = _is.ColumnUuid('invoiceId', this);
    companyId = _is.ColumnUuid('companyId', this);
  }

  late final FinancialEntryUpdateTable updateTable;

  late final _is.ColumnEnum<_i3i99b7x.FinancialEntryType> type;

  late final _is.ColumnString description;

  late final _is.ColumnDouble amount;

  late final _is.ColumnDateTime dueDate;

  late final _is.ColumnDateTime paymentDate;

  late final _is.ColumnEnum<_ig5968cj.FinancialEntryStatus> status;

  late final _is.ColumnEnum<_ie17db6d.PlatformApp> originModule;

  late final _is.ColumnUuid bankAccountId;

  _iqlw3pat.BankAccountTable? _bankAccount;

  late final _is.ColumnUuid invoiceId;

  _i3d856q3.InvoiceTable? _invoice;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  _iqlw3pat.BankAccountTable get bankAccount {
    if (_bankAccount != null) return _bankAccount!;
    _bankAccount = _is.createRelationTable(
      relationFieldName: 'bankAccount',
      field: FinancialEntry.t.bankAccountId,
      foreignField: _iqlw3pat.BankAccount.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iqlw3pat.BankAccountTable(tableRelation: foreignTableRelation),
    );
    return _bankAccount!;
  }

  _i3d856q3.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _is.createRelationTable(
      relationFieldName: 'invoice',
      field: FinancialEntry.t.invoiceId,
      foreignField: _i3d856q3.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3d856q3.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: FinancialEntry.t.companyId,
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
    type,
    description,
    amount,
    dueDate,
    paymentDate,
    status,
    originModule,
    bankAccountId,
    invoiceId,
    companyId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'bankAccount') {
      return bankAccount;
    }
    if (relationField == 'invoice') {
      return invoice;
    }
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class FinancialEntryInclude extends _is.IncludeObject {
  FinancialEntryInclude._({
    _iqlw3pat.BankAccountInclude? bankAccount,
    _i3d856q3.InvoiceInclude? invoice,
    _iocy1ifk.CompanyInclude? company,
  }) {
    _bankAccount = bankAccount;
    _invoice = invoice;
    _company = company;
  }

  _iqlw3pat.BankAccountInclude? _bankAccount;

  _i3d856q3.InvoiceInclude? _invoice;

  _iocy1ifk.CompanyInclude? _company;

  @override
  Map<String, _is.Include?> get includes => {
    'bankAccount': _bankAccount,
    'invoice': _invoice,
    'company': _company,
  };

  @override
  _is.Table<_is.UuidValue> get table => FinancialEntry.t;
}

class FinancialEntryIncludeList extends _is.IncludeList {
  FinancialEntryIncludeList._({
    _is.WhereExpressionBuilder<FinancialEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FinancialEntry.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => FinancialEntry.t;
}

class FinancialEntryRepository {
  const FinancialEntryRepository._();

  final attachRow = const FinancialEntryAttachRowRepository._();

  final detachRow = const FinancialEntryDetachRowRepository._();

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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _is.Transaction? transaction,
    FinancialEntryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? offset,
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _is.Transaction? transaction,
    FinancialEntryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [FinancialEntry] by its [id] or null if no such row exists.
  Future<FinancialEntry?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    FinancialEntryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FinancialEntry>> insert(
    _is.DatabaseSession session,
    List<FinancialEntry> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<FinancialEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [FinancialEntry] and returns the inserted row.
  ///
  /// The returned [FinancialEntry] will have its `id` field set.
  Future<FinancialEntry> insertRow(
    _is.DatabaseSession session,
    FinancialEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<FinancialEntry>(row, transaction: transaction);
  }

  /// Upserts all [FinancialEntry]s in the list and returns the resulting rows.
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
  /// The returned [FinancialEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FinancialEntry>> upsert(
    _is.DatabaseSession session,
    List<FinancialEntry> rows, {
    required _is.ColumnSelections<FinancialEntryTable> conflictColumns,
    _is.ColumnSelections<FinancialEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<FinancialEntryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<FinancialEntry>(
      rows,
      conflictColumns: conflictColumns(FinancialEntry.t),
      updateColumns: updateColumns?.call(FinancialEntry.t),
      updateWhere: updateWhere?.call(FinancialEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [FinancialEntry] and returns the resulting row.
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
  /// The returned [FinancialEntry] will have its `id` field set.
  Future<FinancialEntry?> upsertRow(
    _is.DatabaseSession session,
    FinancialEntry row, {
    required _is.ColumnSelections<FinancialEntryTable> conflictColumns,
    _is.ColumnSelections<FinancialEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<FinancialEntryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<FinancialEntry>(
      row,
      conflictColumns: conflictColumns(FinancialEntry.t),
      updateColumns: updateColumns?.call(FinancialEntry.t),
      updateWhere: updateWhere?.call(FinancialEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [FinancialEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FinancialEntry>> update(
    _is.DatabaseSession session,
    List<FinancialEntry> rows, {
    _is.ColumnSelections<FinancialEntryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<FinancialEntry>(
      rows,
      columns: columns?.call(FinancialEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [FinancialEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<FinancialEntry> updateRow(
    _is.DatabaseSession session,
    FinancialEntry row, {
    _is.ColumnSelections<FinancialEntryTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<FinancialEntryUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<FinancialEntry>(
      id,
      columnValues: columnValues(FinancialEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [FinancialEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FinancialEntry>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<FinancialEntryUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<FinancialEntryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<FinancialEntry>(
      columnValues: columnValues(FinancialEntry.t.updateTable),
      where: where(FinancialEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [FinancialEntry]s in the list and returns the deleted rows.
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
  Future<List<FinancialEntry>> delete(
    _is.DatabaseSession session,
    List<FinancialEntry> rows, {
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<FinancialEntry>(
      rows,
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [FinancialEntry].
  Future<FinancialEntry> deleteRow(
    _is.DatabaseSession session,
    FinancialEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<FinancialEntry>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<FinancialEntry>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FinancialEntryTable> where,
    _is.OrderByBuilder<FinancialEntryTable>? orderBy,
    _is.OrderByListBuilder<FinancialEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<FinancialEntry>(
      where: where(FinancialEntry.t),
      orderBy: orderBy?.call(FinancialEntry.t),
      orderByList: orderByList?.call(FinancialEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FinancialEntryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<FinancialEntry>(
      where: where?.call(FinancialEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [FinancialEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FinancialEntryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    FinancialEntry financialEntry,
    _iqlw3pat.BankAccount bankAccount, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    FinancialEntry financialEntry,
    _i3d856q3.Invoice invoice, {
    _is.Transaction? transaction,
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

  /// Creates a relation between the given [FinancialEntry] and [Company]
  /// by setting the [FinancialEntry]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    FinancialEntry financialEntry,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $financialEntry = financialEntry.copyWith(companyId: company.id);
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.companyId],
      transaction: transaction,
    );
  }
}

class FinancialEntryDetachRowRepository {
  const FinancialEntryDetachRowRepository._();

  /// Detaches the relation between this [FinancialEntry] and the [BankAccount] set in `bankAccount`
  /// by setting the [FinancialEntry]'s foreign key `bankAccountId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> bankAccount(
    _is.DatabaseSession session,
    FinancialEntry financialEntry, {
    _is.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }

    var $financialEntry = financialEntry.copyWith(bankAccountId: null);
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.bankAccountId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [FinancialEntry] and the [Invoice] set in `invoice`
  /// by setting the [FinancialEntry]'s foreign key `invoiceId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> invoice(
    _is.DatabaseSession session,
    FinancialEntry financialEntry, {
    _is.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }

    var $financialEntry = financialEntry.copyWith(invoiceId: null);
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.invoiceId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [FinancialEntry] and the [Company] set in `company`
  /// by setting the [FinancialEntry]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    FinancialEntry financialEntry, {
    _is.Transaction? transaction,
  }) async {
    if (financialEntry.id == null) {
      throw ArgumentError.notNull('financialEntry.id');
    }

    var $financialEntry = financialEntry.copyWith(companyId: null);
    await session.db.updateRow<FinancialEntry>(
      $financialEntry,
      columns: [FinancialEntry.t.companyId],
      transaction: transaction,
    );
  }
}
