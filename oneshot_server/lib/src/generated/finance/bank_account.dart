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
import '../company/company.dart' as _i2;
import '../enums/pix_key_type.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class BankAccount
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  BankAccount._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory BankAccount({
    _i1.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _i1.UuidValue? companyId,
    _i2.Company? company,
    String? pixKey,
    _i3.PixKeyType? pixKeyType,
  }) = _BankAccountImpl;

  factory BankAccount.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankAccount(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
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
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.Company>(
              jsonSerialization['company'],
            ),
      pixKey: jsonSerialization['pixKey'] as String?,
      pixKeyType: jsonSerialization['pixKeyType'] == null
          ? null
          : _i3.PixKeyType.fromJson(
              (jsonSerialization['pixKeyType'] as String),
            ),
    );
  }

  static final t = BankAccountTable();

  static const db = BankAccountRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String? bankName;

  String? agency;

  String? agencyDigit;

  String? accountNumber;

  String? accountDigit;

  double balance;

  String status;

  String originModule;

  _i1.UuidValue? companyId;

  _i2.Company? company;

  String? pixKey;

  _i3.PixKeyType? pixKeyType;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  BankAccount copyWith({
    _i1.UuidValue? id,
    String? name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    double? balance,
    String? status,
    String? originModule,
    _i1.UuidValue? companyId,
    _i2.Company? company,
    String? pixKey,
    _i3.PixKeyType? pixKeyType,
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

  static BankAccountInclude include({_i2.CompanyInclude? company}) {
    return BankAccountInclude._(company: company);
  }

  static BankAccountIncludeList includeList({
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    BankAccountInclude? include,
  }) {
    return BankAccountIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BankAccount.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BankAccountImpl extends BankAccount {
  _BankAccountImpl({
    _i1.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _i1.UuidValue? companyId,
    _i2.Company? company,
    String? pixKey,
    _i3.PixKeyType? pixKeyType,
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
  @_i1.useResult
  @override
  BankAccount copyWith({
    _i1.UuidValue? id,
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
      companyId: companyId is _i1.UuidValue? ? companyId : this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
      pixKey: pixKey is String? ? pixKey : this.pixKey,
      pixKeyType: pixKeyType is _i3.PixKeyType? ? pixKeyType : this.pixKeyType,
    );
  }
}

class BankAccountUpdateTable extends _i1.UpdateTable<BankAccountTable> {
  BankAccountUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> bankName(String? value) => _i1.ColumnValue(
    table.bankName,
    value,
  );

  _i1.ColumnValue<String, String> agency(String? value) => _i1.ColumnValue(
    table.agency,
    value,
  );

  _i1.ColumnValue<String, String> agencyDigit(String? value) => _i1.ColumnValue(
    table.agencyDigit,
    value,
  );

  _i1.ColumnValue<String, String> accountNumber(String? value) =>
      _i1.ColumnValue(
        table.accountNumber,
        value,
      );

  _i1.ColumnValue<String, String> accountDigit(String? value) =>
      _i1.ColumnValue(
        table.accountDigit,
        value,
      );

  _i1.ColumnValue<double, double> balance(double value) => _i1.ColumnValue(
    table.balance,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> originModule(String value) => _i1.ColumnValue(
    table.originModule,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> companyId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.companyId,
    value,
  );

  _i1.ColumnValue<String, String> pixKey(String? value) => _i1.ColumnValue(
    table.pixKey,
    value,
  );

  _i1.ColumnValue<_i3.PixKeyType, _i3.PixKeyType> pixKeyType(
    _i3.PixKeyType? value,
  ) => _i1.ColumnValue(
    table.pixKeyType,
    value,
  );
}

class BankAccountTable extends _i1.Table<_i1.UuidValue> {
  BankAccountTable({super.tableRelation}) : super(tableName: 'bank_accounts') {
    updateTable = BankAccountUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    bankName = _i1.ColumnString(
      'bankName',
      this,
    );
    agency = _i1.ColumnString(
      'agency',
      this,
    );
    agencyDigit = _i1.ColumnString(
      'agencyDigit',
      this,
    );
    accountNumber = _i1.ColumnString(
      'accountNumber',
      this,
    );
    accountDigit = _i1.ColumnString(
      'accountDigit',
      this,
    );
    balance = _i1.ColumnDouble(
      'balance',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    originModule = _i1.ColumnString(
      'originModule',
      this,
    );
    companyId = _i1.ColumnUuid(
      'companyId',
      this,
    );
    pixKey = _i1.ColumnString(
      'pixKey',
      this,
    );
    pixKeyType = _i1.ColumnEnum(
      'pixKeyType',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final BankAccountUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString bankName;

  late final _i1.ColumnString agency;

  late final _i1.ColumnString agencyDigit;

  late final _i1.ColumnString accountNumber;

  late final _i1.ColumnString accountDigit;

  late final _i1.ColumnDouble balance;

  late final _i1.ColumnString status;

  late final _i1.ColumnString originModule;

  late final _i1.ColumnUuid companyId;

  _i2.CompanyTable? _company;

  late final _i1.ColumnString pixKey;

  late final _i1.ColumnEnum<_i3.PixKeyType> pixKeyType;

  _i2.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _i1.createRelationTable(
      relationFieldName: 'company',
      field: BankAccount.t.companyId,
      foreignField: _i2.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class BankAccountInclude extends _i1.IncludeObject {
  BankAccountInclude._({_i2.CompanyInclude? company}) {
    _company = company;
  }

  _i2.CompanyInclude? _company;

  @override
  Map<String, _i1.Include?> get includes => {'company': _company};

  @override
  _i1.Table<_i1.UuidValue> get table => BankAccount.t;
}

class BankAccountIncludeList extends _i1.IncludeList {
  BankAccountIncludeList._({
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BankAccount.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => BankAccount.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    _i1.Transaction? transaction,
    BankAccountInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    _i1.Transaction? transaction,
    BankAccountInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [BankAccount] by its [id] or null if no such row exists.
  Future<BankAccount?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    BankAccountInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<BankAccount>> insert(
    _i1.DatabaseSession session,
    List<BankAccount> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<BankAccount>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [BankAccount] and returns the inserted row.
  ///
  /// The returned [BankAccount] will have its `id` field set.
  Future<BankAccount> insertRow(
    _i1.DatabaseSession session,
    BankAccount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<BankAccount>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<BankAccount>> update(
    _i1.DatabaseSession session,
    List<BankAccount> rows, {
    _i1.ColumnSelections<BankAccountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<BankAccount>(
      rows,
      columns: columns?.call(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [BankAccount]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<BankAccount> updateRow(
    _i1.DatabaseSession session,
    BankAccount row, {
    _i1.ColumnSelections<BankAccountTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<BankAccount>(
      id,
      columnValues: columnValues(BankAccount.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<BankAccount>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<BankAccountTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<BankAccount>(
      columnValues: columnValues(BankAccount.t.updateTable),
      where: where(BankAccount.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [BankAccount]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<BankAccount>> delete(
    _i1.DatabaseSession session,
    List<BankAccount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BankAccount>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [BankAccount].
  Future<BankAccount> deleteRow(
    _i1.DatabaseSession session,
    BankAccount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BankAccount>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<BankAccount>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<BankAccountTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<BankAccount>(
      where: where(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BankAccount>(
      where: where?.call(BankAccount.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [BankAccount] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<BankAccountTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    BankAccount bankAccount,
    _i2.Company company, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    BankAccount bankAccount, {
    _i1.Transaction? transaction,
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
