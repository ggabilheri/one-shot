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
import '../enums/pix_key_type.dart' as _imwhqumt;

abstract class BankAccount
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  BankAccount._({
    _is.UuidValue? id,
    required this.name,
    this.bankName,
    this.agency,
    this.agencyDigit,
    this.accountNumber,
    this.accountDigit,
    required this.balance,
    required this.status,
    required this.originModule,
    this.companyId,
    this.company,
    this.pixKey,
    this.pixKeyType,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory BankAccount({
    _is.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  }) = _BankAccountImpl;

  factory BankAccount.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankAccount(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      bankName: jsonSerialization['bankName'] as String?,
      agency: jsonSerialization['agency'] as String?,
      agencyDigit: jsonSerialization['agencyDigit'] as String?,
      accountNumber: jsonSerialization['accountNumber'] as String?,
      accountDigit: jsonSerialization['accountDigit'] as String?,
      balance: (jsonSerialization['balance'] as num).toDouble(),
      status: jsonSerialization['status'] as String,
      originModule: jsonSerialization['originModule'] as String,
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
      pixKey: jsonSerialization['pixKey'] as String?,
      pixKeyType: jsonSerialization['pixKeyType'] == null
          ? null
          : _imwhqumt.PixKeyType.fromJson(
              (jsonSerialization['pixKeyType'] as String),
            ),
    );
  }

  static final t = BankAccountTable();

  static const db = BankAccountRepository._();

  @override
  _is.UuidValue id;

  String name;

  String? bankName;

  String? agency;

  String? agencyDigit;

  String? accountNumber;

  String? accountDigit;

  double balance;

  String status;

  String originModule;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  String? pixKey;

  _imwhqumt.PixKeyType? pixKeyType;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  BankAccount copyWith({
    _is.UuidValue? id,
    String? name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    double? balance,
    String? status,
    String? originModule,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankAccount',
      'id': id.toJson(),
      'name': name,
      if (bankName != null) 'bankName': bankName,
      if (agency != null) 'agency': agency,
      if (agencyDigit != null) 'agencyDigit': agencyDigit,
      if (accountNumber != null) 'accountNumber': accountNumber,
      if (accountDigit != null) 'accountDigit': accountDigit,
      'balance': balance,
      'status': status,
      'originModule': originModule,
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (pixKey != null) 'pixKey': pixKey,
      if (pixKeyType != null) 'pixKeyType': pixKeyType?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'BankAccount',
      'id': id.toJson(),
      'name': name,
      if (bankName != null) 'bankName': bankName,
      if (agency != null) 'agency': agency,
      if (agencyDigit != null) 'agencyDigit': agencyDigit,
      if (accountNumber != null) 'accountNumber': accountNumber,
      if (accountDigit != null) 'accountDigit': accountDigit,
      'balance': balance,
      'status': status,
      'originModule': originModule,
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (pixKey != null) 'pixKey': pixKey,
      if (pixKeyType != null) 'pixKeyType': pixKeyType?.toJson(),
    };
  }

  static BankAccountInclude include({_iocy1ifk.CompanyInclude? company}) {
    return BankAccountInclude._(company: company);
  }

  static BankAccountIncludeList includeList({
    _is.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    BankAccountInclude? include,
  }) {
    return BankAccountIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BankAccountImpl extends BankAccount {
  _BankAccountImpl({
    _is.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  }) : super._(
         id: id,
         name: name,
         bankName: bankName,
         agency: agency,
         agencyDigit: agencyDigit,
         accountNumber: accountNumber,
         accountDigit: accountDigit,
         balance: balance,
         status: status,
         originModule: originModule,
         companyId: companyId,
         company: company,
         pixKey: pixKey,
         pixKeyType: pixKeyType,
       );

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  BankAccount copyWith({
    _is.UuidValue? id,
    String? name,
    Object? bankName = _Undefined,
    Object? agency = _Undefined,
    Object? agencyDigit = _Undefined,
    Object? accountNumber = _Undefined,
    Object? accountDigit = _Undefined,
    double? balance,
    String? status,
    String? originModule,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
    Object? pixKey = _Undefined,
    Object? pixKeyType = _Undefined,
  }) {
    return BankAccount(
      id: id ?? this.id,
      name: name ?? this.name,
      bankName: bankName is String? ? bankName : this.bankName,
      agency: agency is String? ? agency : this.agency,
      agencyDigit: agencyDigit is String? ? agencyDigit : this.agencyDigit,
      accountNumber: accountNumber is String?
          ? accountNumber
          : this.accountNumber,
      accountDigit: accountDigit is String? ? accountDigit : this.accountDigit,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      originModule: originModule ?? this.originModule,
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      pixKey: pixKey is String? ? pixKey : this.pixKey,
      pixKeyType: pixKeyType is _imwhqumt.PixKeyType?
          ? pixKeyType
          : this.pixKeyType,
    );
  }
}

class BankAccountUpdateTable extends _is.UpdateTable<BankAccountTable> {
  BankAccountUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> bankName(String? value) =>
      _is.ColumnValue(table.bankName, value);

  _is.ColumnValue<String, String> agency(String? value) =>
      _is.ColumnValue(table.agency, value);

  _is.ColumnValue<String, String> agencyDigit(String? value) =>
      _is.ColumnValue(table.agencyDigit, value);

  _is.ColumnValue<String, String> accountNumber(String? value) =>
      _is.ColumnValue(table.accountNumber, value);

  _is.ColumnValue<String, String> accountDigit(String? value) =>
      _is.ColumnValue(table.accountDigit, value);

  _is.ColumnValue<double, double> balance(double value) =>
      _is.ColumnValue(table.balance, value);

  _is.ColumnValue<String, String> status(String value) =>
      _is.ColumnValue(table.status, value);

  _is.ColumnValue<String, String> originModule(String value) =>
      _is.ColumnValue(table.originModule, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);

  _is.ColumnValue<String, String> pixKey(String? value) =>
      _is.ColumnValue(table.pixKey, value);

  _is.ColumnValue<_imwhqumt.PixKeyType, _imwhqumt.PixKeyType> pixKeyType(
    _imwhqumt.PixKeyType? value,
  ) => _is.ColumnValue(table.pixKeyType, value);
}

class BankAccountTable extends _is.Table<_is.UuidValue> {
  BankAccountTable({super.tableRelation}) : super(tableName: 'bank_accounts') {
    updateTable = BankAccountUpdateTable(this);
    name = _is.ColumnString('name', this);
    bankName = _is.ColumnString('bankName', this);
    agency = _is.ColumnString('agency', this);
    agencyDigit = _is.ColumnString('agencyDigit', this);
    accountNumber = _is.ColumnString('accountNumber', this);
    accountDigit = _is.ColumnString('accountDigit', this);
    balance = _is.ColumnDouble('balance', this);
    status = _is.ColumnString('status', this);
    originModule = _is.ColumnString('originModule', this);
    companyId = _is.ColumnUuid('companyId', this);
    pixKey = _is.ColumnString('pixKey', this);
    pixKeyType = _is.ColumnEnum(
      'pixKeyType',
      this,
      _is.EnumSerialization.byName,
    );
  }

  late final BankAccountUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString bankName;

  late final _is.ColumnString agency;

  late final _is.ColumnString agencyDigit;

  late final _is.ColumnString accountNumber;

  late final _is.ColumnString accountDigit;

  late final _is.ColumnDouble balance;

  late final _is.ColumnString status;

  late final _is.ColumnString originModule;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  late final _is.ColumnString pixKey;

  late final _is.ColumnEnum<_imwhqumt.PixKeyType> pixKeyType;

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: BankAccount.t.companyId,
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
    bankName,
    agency,
    agencyDigit,
    accountNumber,
    accountDigit,
    balance,
    status,
    originModule,
    companyId,
    pixKey,
    pixKeyType,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class BankAccountInclude extends _is.IncludeObject {
  BankAccountInclude._({_iocy1ifk.CompanyInclude? company}) {
    _company = company;
  }

  _iocy1ifk.CompanyInclude? _company;

  @override
  Map<String, _is.Include?> get includes => {'company': _company};

  @override
  _is.Table<_is.UuidValue> get table => BankAccount.t;
}

class BankAccountIncludeList extends _is.IncludeList {
  BankAccountIncludeList._({
    _is.WhereExpressionBuilder<BankAccountTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BankAccount.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => BankAccount.t;
}

class BankAccountRepository {
  const BankAccountRepository._();

  final attachRow = const BankAccountAttachRowRepository._();

  final detachRow = const BankAccountDetachRowRepository._();

  /// Returns a list of [BankAccount]s matching the given query parameters.
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
  Future<List<BankAccount>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    _is.Transaction? transaction,
    BankAccountInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [BankAccount] matching the given query parameters.
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
  Future<BankAccount?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankAccountTable>? where,
    int? offset,
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    _is.Transaction? transaction,
    BankAccountInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [BankAccount] by its [id] or null if no such row exists.
  Future<BankAccount?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    BankAccountInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<BankAccount>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [BankAccount]s in the list and returns the inserted rows.
  ///
  /// The returned [BankAccount]s will have their `id` fields set.
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
  Future<List<BankAccount>> insert(
    _is.DatabaseSession session,
    List<BankAccount> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<BankAccount>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [BankAccount] and returns the inserted row.
  ///
  /// The returned [BankAccount] will have its `id` field set.
  Future<BankAccount> insertRow(
    _is.DatabaseSession session,
    BankAccount row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<BankAccount>(row, transaction: transaction);
  }

  /// Upserts all [BankAccount]s in the list and returns the resulting rows.
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
  /// The returned [BankAccount]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankAccount>> upsert(
    _is.DatabaseSession session,
    List<BankAccount> rows, {
    required _is.ColumnSelections<BankAccountTable> conflictColumns,
    _is.ColumnSelections<BankAccountTable>? updateColumns,
    _is.WhereExpressionBuilder<BankAccountTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<BankAccount>(
      rows,
      conflictColumns: conflictColumns(BankAccount.t),
      updateColumns: updateColumns?.call(BankAccount.t),
      updateWhere: updateWhere?.call(BankAccount.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [BankAccount] and returns the resulting row.
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
  /// The returned [BankAccount] will have its `id` field set.
  Future<BankAccount?> upsertRow(
    _is.DatabaseSession session,
    BankAccount row, {
    required _is.ColumnSelections<BankAccountTable> conflictColumns,
    _is.ColumnSelections<BankAccountTable>? updateColumns,
    _is.WhereExpressionBuilder<BankAccountTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<BankAccount>(
      row,
      conflictColumns: conflictColumns(BankAccount.t),
      updateColumns: updateColumns?.call(BankAccount.t),
      updateWhere: updateWhere?.call(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankAccount>> update(
    _is.DatabaseSession session,
    List<BankAccount> rows, {
    _is.ColumnSelections<BankAccountTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<BankAccount>(
      rows,
      columns: columns?.call(BankAccount.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [BankAccount]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<BankAccount> updateRow(
    _is.DatabaseSession session,
    BankAccount row, {
    _is.ColumnSelections<BankAccountTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<BankAccount>(
      row,
      columns: columns?.call(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [BankAccount] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<BankAccount?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<BankAccount>(
      id,
      columnValues: columnValues(BankAccount.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankAccount>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<BankAccountTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<BankAccount>(
      columnValues: columnValues(BankAccount.t.updateTable),
      where: where(BankAccount.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [BankAccount]s in the list and returns the deleted rows.
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
  Future<List<BankAccount>> delete(
    _is.DatabaseSession session,
    List<BankAccount> rows, {
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<BankAccount>(
      rows,
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [BankAccount].
  Future<BankAccount> deleteRow(
    _is.DatabaseSession session,
    BankAccount row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BankAccount>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<BankAccount>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<BankAccountTable> where,
    _is.OrderByBuilder<BankAccountTable>? orderBy,
    _is.OrderByListBuilder<BankAccountTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<BankAccount>(
      where: where(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<BankAccount>(
      where: where?.call(BankAccount.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [BankAccount] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<BankAccountTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<BankAccount>(
      where: where(BankAccount.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class BankAccountAttachRowRepository {
  const BankAccountAttachRowRepository._();

  /// Creates a relation between the given [BankAccount] and [Company]
  /// by setting the [BankAccount]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    BankAccount bankAccount,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (bankAccount.id == null) {
      throw ArgumentError.notNull('bankAccount.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $bankAccount = bankAccount.copyWith(companyId: company.id);
    await session.db.updateRow<BankAccount>(
      $bankAccount,
      columns: [BankAccount.t.companyId],
      transaction: transaction,
    );
  }
}

class BankAccountDetachRowRepository {
  const BankAccountDetachRowRepository._();

  /// Detaches the relation between this [BankAccount] and the [Company] set in `company`
  /// by setting the [BankAccount]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    BankAccount bankAccount, {
    _is.Transaction? transaction,
  }) async {
    if (bankAccount.id == null) {
      throw ArgumentError.notNull('bankAccount.id');
    }

    var $bankAccount = bankAccount.copyWith(companyId: null);
    await session.db.updateRow<BankAccount>(
      $bankAccount,
      columns: [BankAccount.t.companyId],
      transaction: transaction,
    );
  }
}
