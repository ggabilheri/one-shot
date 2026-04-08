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
import '../company/company_type.dart' as _i2;
import '../common/address.dart' as _i3;
import '../common/user_profile.dart' as _i4;
import 'package:oneshot_server/src/generated/protocol.dart' as _i5;

abstract class Company
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Company._({
    _i1.UuidValue? id,
    required this.name,
    required this.cnpj,
    required this.type,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    this.phoneNumber,
    this.email,
    bool? active,
    double? incomeValue,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Company({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    required _i2.CompanyType type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      type: _i2.CompanyType.fromJson((jsonSerialization['type'] as String)),
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.Address>(
              jsonSerialization['address'],
            ),
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
      asaasAccountId: jsonSerialization['asaasAccountId'] as String?,
      asaasWalletId: jsonSerialization['asaasWalletId'] as String?,
      asaasApiKey: jsonSerialization['asaasApiKey'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  static final t = CompanyTable();

  static const db = CompanyRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String cnpj;

  _i2.CompanyType type;

  _i1.UuidValue? addressId;

  _i3.Address? address;

  _i1.UuidValue? ownerId;

  _i4.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  double incomeValue;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Company copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i2.CompanyType? type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Company',
      'id': id.toJson(),
      'name': name,
      'cnpj': cnpj,
      'type': type.toJson(),
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
      'incomeValue': incomeValue,
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Company',
      'id': id.toJson(),
      'name': name,
      'cnpj': cnpj,
      'type': type.toJson(),
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
      'incomeValue': incomeValue,
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  static CompanyInclude include({
    _i3.AddressInclude? address,
    _i4.UserProfileInclude? owner,
  }) {
    return CompanyInclude._(
      address: address,
      owner: owner,
    );
  }

  static CompanyIncludeList includeList({
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    CompanyInclude? include,
  }) {
    return CompanyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Company.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Company.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompanyImpl extends Company {
  _CompanyImpl({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    required _i2.CompanyType type,
    _i1.UuidValue? addressId,
    _i3.Address? address,
    _i1.UuidValue? ownerId,
    _i4.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) : super._(
         id: id,
         name: name,
         cnpj: cnpj,
         type: type,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         phoneNumber: phoneNumber,
         email: email,
         active: active,
         incomeValue: incomeValue,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Company copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i2.CompanyType? type,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
    double? incomeValue,
    Object? asaasAccountId = _Undefined,
    Object? asaasWalletId = _Undefined,
    Object? asaasApiKey = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return Company(
      id: id ?? this.id,
      name: name ?? this.name,
      cnpj: cnpj ?? this.cnpj,
      type: type ?? this.type,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i4.UserProfile? ? owner : this.owner?.copyWith(),
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
      incomeValue: incomeValue ?? this.incomeValue,
      asaasAccountId: asaasAccountId is String?
          ? asaasAccountId
          : this.asaasAccountId,
      asaasWalletId: asaasWalletId is String?
          ? asaasWalletId
          : this.asaasWalletId,
      asaasApiKey: asaasApiKey is String? ? asaasApiKey : this.asaasApiKey,
      asaasOnboardingFailureReason: asaasOnboardingFailureReason is String?
          ? asaasOnboardingFailureReason
          : this.asaasOnboardingFailureReason,
    );
  }
}

class CompanyUpdateTable extends _i1.UpdateTable<CompanyTable> {
  CompanyUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> cnpj(String value) => _i1.ColumnValue(
    table.cnpj,
    value,
  );

  _i1.ColumnValue<_i2.CompanyType, _i2.CompanyType> type(
    _i2.CompanyType value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> addressId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.addressId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ownerId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.ownerId,
        value,
      );

  _i1.ColumnValue<String, String> phoneNumber(String? value) => _i1.ColumnValue(
    table.phoneNumber,
    value,
  );

  _i1.ColumnValue<String, String> email(String? value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<bool, bool> active(bool value) => _i1.ColumnValue(
    table.active,
    value,
  );

  _i1.ColumnValue<double, double> incomeValue(double value) => _i1.ColumnValue(
    table.incomeValue,
    value,
  );

  _i1.ColumnValue<String, String> asaasAccountId(String? value) =>
      _i1.ColumnValue(
        table.asaasAccountId,
        value,
      );

  _i1.ColumnValue<String, String> asaasWalletId(String? value) =>
      _i1.ColumnValue(
        table.asaasWalletId,
        value,
      );

  _i1.ColumnValue<String, String> asaasApiKey(String? value) => _i1.ColumnValue(
    table.asaasApiKey,
    value,
  );

  _i1.ColumnValue<String, String> asaasOnboardingFailureReason(String? value) =>
      _i1.ColumnValue(
        table.asaasOnboardingFailureReason,
        value,
      );
}

class CompanyTable extends _i1.Table<_i1.UuidValue> {
  CompanyTable({super.tableRelation}) : super(tableName: 'companies') {
    updateTable = CompanyUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    cnpj = _i1.ColumnString(
      'cnpj',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    addressId = _i1.ColumnUuid(
      'addressId',
      this,
    );
    ownerId = _i1.ColumnUuid(
      'ownerId',
      this,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    active = _i1.ColumnBool(
      'active',
      this,
      hasDefault: true,
    );
    incomeValue = _i1.ColumnDouble(
      'incomeValue',
      this,
      hasDefault: true,
    );
    asaasAccountId = _i1.ColumnString(
      'asaasAccountId',
      this,
    );
    asaasWalletId = _i1.ColumnString(
      'asaasWalletId',
      this,
    );
    asaasApiKey = _i1.ColumnString(
      'asaasApiKey',
      this,
    );
    asaasOnboardingFailureReason = _i1.ColumnString(
      'asaasOnboardingFailureReason',
      this,
    );
  }

  late final CompanyUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString cnpj;

  late final _i1.ColumnEnum<_i2.CompanyType> type;

  late final _i1.ColumnUuid addressId;

  _i3.AddressTable? _address;

  late final _i1.ColumnUuid ownerId;

  _i4.UserProfileTable? _owner;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString email;

  late final _i1.ColumnBool active;

  late final _i1.ColumnDouble incomeValue;

  late final _i1.ColumnString asaasAccountId;

  late final _i1.ColumnString asaasWalletId;

  late final _i1.ColumnString asaasApiKey;

  late final _i1.ColumnString asaasOnboardingFailureReason;

  _i3.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Company.t.addressId,
      foreignField: _i3.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _i4.UserProfileTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Company.t.ownerId,
      foreignField: _i4.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    cnpj,
    type,
    addressId,
    ownerId,
    phoneNumber,
    email,
    active,
    incomeValue,
    asaasAccountId,
    asaasWalletId,
    asaasApiKey,
    asaasOnboardingFailureReason,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'address') {
      return address;
    }
    if (relationField == 'owner') {
      return owner;
    }
    return null;
  }
}

class CompanyInclude extends _i1.IncludeObject {
  CompanyInclude._({
    _i3.AddressInclude? address,
    _i4.UserProfileInclude? owner,
  }) {
    _address = address;
    _owner = owner;
  }

  _i3.AddressInclude? _address;

  _i4.UserProfileInclude? _owner;

  @override
  Map<String, _i1.Include?> get includes => {
    'address': _address,
    'owner': _owner,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Company.t;
}

class CompanyIncludeList extends _i1.IncludeList {
  CompanyIncludeList._({
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Company.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Company.t;
}

class CompanyRepository {
  const CompanyRepository._();

  final attachRow = const CompanyAttachRowRepository._();

  final detachRow = const CompanyDetachRowRepository._();

  /// Returns a list of [Company]s matching the given query parameters.
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
  Future<List<Company>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    _i1.Transaction? transaction,
    CompanyInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Company] matching the given query parameters.
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
  Future<Company?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    _i1.Transaction? transaction,
    CompanyInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Company] by its [id] or null if no such row exists.
  Future<Company?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    CompanyInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Company>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Company]s in the list and returns the inserted rows.
  ///
  /// The returned [Company]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Company>> insert(
    _i1.DatabaseSession session,
    List<Company> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Company>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Company] and returns the inserted row.
  ///
  /// The returned [Company] will have its `id` field set.
  Future<Company> insertRow(
    _i1.DatabaseSession session,
    Company row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Company>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Company]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Company>> update(
    _i1.DatabaseSession session,
    List<Company> rows, {
    _i1.ColumnSelections<CompanyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Company>(
      rows,
      columns: columns?.call(Company.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Company]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Company> updateRow(
    _i1.DatabaseSession session,
    Company row, {
    _i1.ColumnSelections<CompanyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Company>(
      row,
      columns: columns?.call(Company.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Company] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Company?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<CompanyUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Company>(
      id,
      columnValues: columnValues(Company.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Company]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Company>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<CompanyUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CompanyTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Company>(
      columnValues: columnValues(Company.t.updateTable),
      where: where(Company.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Company]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Company>> delete(
    _i1.DatabaseSession session,
    List<Company> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Company>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Company].
  Future<Company> deleteRow(
    _i1.DatabaseSession session,
    Company row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Company>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Company>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<CompanyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Company>(
      where: where(Company.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Company>(
      where: where?.call(Company.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Company] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<CompanyTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Company>(
      where: where(Company.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class CompanyAttachRowRepository {
  const CompanyAttachRowRepository._();

  /// Creates a relation between the given [Company] and [Address]
  /// by setting the [Company]'s foreign key `addressId` to refer to the [Address].
  Future<void> address(
    _i1.DatabaseSession session,
    Company company,
    _i3.Address address, {
    _i1.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $company = company.copyWith(addressId: address.id);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.addressId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Company] and [UserProfile]
  /// by setting the [Company]'s foreign key `ownerId` to refer to the [UserProfile].
  Future<void> owner(
    _i1.DatabaseSession session,
    Company company,
    _i4.UserProfile owner, {
    _i1.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $company = company.copyWith(ownerId: owner.id);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.ownerId],
      transaction: transaction,
    );
  }
}

class CompanyDetachRowRepository {
  const CompanyDetachRowRepository._();

  /// Detaches the relation between this [Company] and the [Address] set in `address`
  /// by setting the [Company]'s foreign key `addressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> address(
    _i1.DatabaseSession session,
    Company company, {
    _i1.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $company = company.copyWith(addressId: null);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.addressId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Company] and the [UserProfile] set in `owner`
  /// by setting the [Company]'s foreign key `ownerId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> owner(
    _i1.DatabaseSession session,
    Company company, {
    _i1.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $company = company.copyWith(ownerId: null);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.ownerId],
      transaction: transaction,
    );
  }
}
