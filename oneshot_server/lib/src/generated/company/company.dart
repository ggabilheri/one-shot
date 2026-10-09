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
import '../common/address.dart' as _iy1vkl2d;
import '../common/user_profile.dart' as _izifjpv2;
import '../company/company.dart' as _iocy1ifk;
import '../company/company_type.dart' as _iqrrhgif;

abstract class Company
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Company._({
    _is.UuidValue? id,
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
    this.parentCompanyId,
    this.parentCompany,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _is.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Company({
    _is.UuidValue? id,
    required String name,
    required String cnpj,
    required _iqrrhgif.CompanyType type,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _is.UuidValue? parentCompanyId,
    _iocy1ifk.Company? parentCompany,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      type: _iqrrhgif.CompanyType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iy1vkl2d.Address>(
              jsonSerialization['address'],
            ),
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
      parentCompanyId: jsonSerialization['parentCompanyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['parentCompanyId'],
            ),
      parentCompany: jsonSerialization['parentCompany'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['parentCompany'],
            ),
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
  _is.UuidValue id;

  String name;

  String cnpj;

  _iqrrhgif.CompanyType type;

  _is.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  _is.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  double incomeValue;

  _is.UuidValue? parentCompanyId;

  _iocy1ifk.Company? parentCompany;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Company copyWith({
    _is.UuidValue? id,
    String? name,
    String? cnpj,
    _iqrrhgif.CompanyType? type,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _is.UuidValue? parentCompanyId,
    _iocy1ifk.Company? parentCompany,
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
      if (parentCompanyId != null) 'parentCompanyId': parentCompanyId?.toJson(),
      if (parentCompany != null) 'parentCompany': parentCompany?.toJson(),
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
      if (parentCompanyId != null) 'parentCompanyId': parentCompanyId?.toJson(),
      if (parentCompany != null)
        'parentCompany': parentCompany?.toJsonForProtocol(),
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  static CompanyInclude include({
    _iy1vkl2d.AddressInclude? address,
    _izifjpv2.UserProfileInclude? owner,
    _iocy1ifk.CompanyInclude? parentCompany,
  }) {
    return CompanyInclude._(
      address: address,
      owner: owner,
      parentCompany: parentCompany,
    );
  }

  static CompanyIncludeList includeList({
    _is.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    CompanyInclude? include,
  }) {
    return CompanyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompanyImpl extends Company {
  _CompanyImpl({
    _is.UuidValue? id,
    required String name,
    required String cnpj,
    required _iqrrhgif.CompanyType type,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
    double? incomeValue,
    _is.UuidValue? parentCompanyId,
    _iocy1ifk.Company? parentCompany,
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
         parentCompanyId: parentCompanyId,
         parentCompany: parentCompany,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Company]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Company copyWith({
    _is.UuidValue? id,
    String? name,
    String? cnpj,
    _iqrrhgif.CompanyType? type,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
    double? incomeValue,
    Object? parentCompanyId = _Undefined,
    Object? parentCompany = _Undefined,
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
      addressId: addressId is _is.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
      ownerId: ownerId is _is.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _izifjpv2.UserProfile? ? owner : this.owner?.copyWith(),
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
      incomeValue: incomeValue ?? this.incomeValue,
      parentCompanyId: parentCompanyId is _is.UuidValue?
          ? parentCompanyId
          : this.parentCompanyId,
      parentCompany: parentCompany is _iocy1ifk.Company?
          ? parentCompany
          : this.parentCompany?.copyWith(),
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

class CompanyUpdateTable extends _is.UpdateTable<CompanyTable> {
  CompanyUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> cnpj(String value) =>
      _is.ColumnValue(table.cnpj, value);

  _is.ColumnValue<_iqrrhgif.CompanyType, _iqrrhgif.CompanyType> type(
    _iqrrhgif.CompanyType value,
  ) => _is.ColumnValue(table.type, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> addressId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.addressId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> ownerId(_is.UuidValue? value) =>
      _is.ColumnValue(table.ownerId, value);

  _is.ColumnValue<String, String> phoneNumber(String? value) =>
      _is.ColumnValue(table.phoneNumber, value);

  _is.ColumnValue<String, String> email(String? value) =>
      _is.ColumnValue(table.email, value);

  _is.ColumnValue<bool, bool> active(bool value) =>
      _is.ColumnValue(table.active, value);

  _is.ColumnValue<double, double> incomeValue(double value) =>
      _is.ColumnValue(table.incomeValue, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> parentCompanyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.parentCompanyId, value);

  _is.ColumnValue<String, String> asaasAccountId(String? value) =>
      _is.ColumnValue(table.asaasAccountId, value);

  _is.ColumnValue<String, String> asaasWalletId(String? value) =>
      _is.ColumnValue(table.asaasWalletId, value);

  _is.ColumnValue<String, String> asaasApiKey(String? value) =>
      _is.ColumnValue(table.asaasApiKey, value);

  _is.ColumnValue<String, String> asaasOnboardingFailureReason(String? value) =>
      _is.ColumnValue(table.asaasOnboardingFailureReason, value);
}

class CompanyTable extends _is.Table<_is.UuidValue> {
  CompanyTable({super.tableRelation}) : super(tableName: 'companies') {
    updateTable = CompanyUpdateTable(this);
    name = _is.ColumnString('name', this);
    cnpj = _is.ColumnString('cnpj', this);
    type = _is.ColumnEnum('type', this, _is.EnumSerialization.byName);
    addressId = _is.ColumnUuid('addressId', this);
    ownerId = _is.ColumnUuid('ownerId', this);
    phoneNumber = _is.ColumnString('phoneNumber', this);
    email = _is.ColumnString('email', this);
    active = _is.ColumnBool('active', this, hasDefault: true);
    incomeValue = _is.ColumnDouble('incomeValue', this, hasDefault: true);
    parentCompanyId = _is.ColumnUuid('parentCompanyId', this);
    asaasAccountId = _is.ColumnString('asaasAccountId', this);
    asaasWalletId = _is.ColumnString('asaasWalletId', this);
    asaasApiKey = _is.ColumnString('asaasApiKey', this);
    asaasOnboardingFailureReason = _is.ColumnString(
      'asaasOnboardingFailureReason',
      this,
    );
  }

  late final CompanyUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString cnpj;

  late final _is.ColumnEnum<_iqrrhgif.CompanyType> type;

  late final _is.ColumnUuid addressId;

  _iy1vkl2d.AddressTable? _address;

  late final _is.ColumnUuid ownerId;

  _izifjpv2.UserProfileTable? _owner;

  late final _is.ColumnString phoneNumber;

  late final _is.ColumnString email;

  late final _is.ColumnBool active;

  late final _is.ColumnDouble incomeValue;

  late final _is.ColumnUuid parentCompanyId;

  _iocy1ifk.CompanyTable? _parentCompany;

  late final _is.ColumnString asaasAccountId;

  late final _is.ColumnString asaasWalletId;

  late final _is.ColumnString asaasApiKey;

  late final _is.ColumnString asaasOnboardingFailureReason;

  _iy1vkl2d.AddressTable get address {
    if (_address != null) return _address!;
    _address = _is.createRelationTable(
      relationFieldName: 'address',
      field: Company.t.addressId,
      foreignField: _iy1vkl2d.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iy1vkl2d.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _izifjpv2.UserProfileTable get owner {
    if (_owner != null) return _owner!;
    _owner = _is.createRelationTable(
      relationFieldName: 'owner',
      field: Company.t.ownerId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _iocy1ifk.CompanyTable get parentCompany {
    if (_parentCompany != null) return _parentCompany!;
    _parentCompany = _is.createRelationTable(
      relationFieldName: 'parentCompany',
      field: Company.t.parentCompanyId,
      foreignField: _iocy1ifk.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iocy1ifk.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _parentCompany!;
  }

  @override
  List<_is.Column> get columns => [
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
    parentCompanyId,
    asaasAccountId,
    asaasWalletId,
    asaasApiKey,
    asaasOnboardingFailureReason,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'address') {
      return address;
    }
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'parentCompany') {
      return parentCompany;
    }
    return null;
  }
}

class CompanyInclude extends _is.IncludeObject {
  CompanyInclude._({
    _iy1vkl2d.AddressInclude? address,
    _izifjpv2.UserProfileInclude? owner,
    _iocy1ifk.CompanyInclude? parentCompany,
  }) {
    _address = address;
    _owner = owner;
    _parentCompany = parentCompany;
  }

  _iy1vkl2d.AddressInclude? _address;

  _izifjpv2.UserProfileInclude? _owner;

  _iocy1ifk.CompanyInclude? _parentCompany;

  @override
  Map<String, _is.Include?> get includes => {
    'address': _address,
    'owner': _owner,
    'parentCompany': _parentCompany,
  };

  @override
  _is.Table<_is.UuidValue> get table => Company.t;
}

class CompanyIncludeList extends _is.IncludeList {
  CompanyIncludeList._({
    _is.WhereExpressionBuilder<CompanyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Company.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Company.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    _is.Transaction? transaction,
    CompanyInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CompanyTable>? where,
    int? offset,
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    _is.Transaction? transaction,
    CompanyInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Company] by its [id] or null if no such row exists.
  Future<Company?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    CompanyInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Company>> insert(
    _is.DatabaseSession session,
    List<Company> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Company>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Company] and returns the inserted row.
  ///
  /// The returned [Company] will have its `id` field set.
  Future<Company> insertRow(
    _is.DatabaseSession session,
    Company row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Company>(row, transaction: transaction);
  }

  /// Upserts all [Company]s in the list and returns the resulting rows.
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
  /// The returned [Company]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Company>> upsert(
    _is.DatabaseSession session,
    List<Company> rows, {
    required _is.ColumnSelections<CompanyTable> conflictColumns,
    _is.ColumnSelections<CompanyTable>? updateColumns,
    _is.WhereExpressionBuilder<CompanyTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Company>(
      rows,
      conflictColumns: conflictColumns(Company.t),
      updateColumns: updateColumns?.call(Company.t),
      updateWhere: updateWhere?.call(Company.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Company] and returns the resulting row.
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
  /// The returned [Company] will have its `id` field set.
  Future<Company?> upsertRow(
    _is.DatabaseSession session,
    Company row, {
    required _is.ColumnSelections<CompanyTable> conflictColumns,
    _is.ColumnSelections<CompanyTable>? updateColumns,
    _is.WhereExpressionBuilder<CompanyTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Company>(
      row,
      conflictColumns: conflictColumns(Company.t),
      updateColumns: updateColumns?.call(Company.t),
      updateWhere: updateWhere?.call(Company.t),
      transaction: transaction,
    );
  }

  /// Updates all [Company]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Company>> update(
    _is.DatabaseSession session,
    List<Company> rows, {
    _is.ColumnSelections<CompanyTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Company>(
      rows,
      columns: columns?.call(Company.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Company]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Company> updateRow(
    _is.DatabaseSession session,
    Company row, {
    _is.ColumnSelections<CompanyTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<CompanyUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Company>(
      id,
      columnValues: columnValues(Company.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Company]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Company>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<CompanyUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<CompanyTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Company>(
      columnValues: columnValues(Company.t.updateTable),
      where: where(Company.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Company]s in the list and returns the deleted rows.
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
  Future<List<Company>> delete(
    _is.DatabaseSession session,
    List<Company> rows, {
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Company>(
      rows,
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Company].
  Future<Company> deleteRow(
    _is.DatabaseSession session,
    Company row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Company>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Company>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CompanyTable> where,
    _is.OrderByBuilder<CompanyTable>? orderBy,
    _is.OrderByListBuilder<CompanyTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Company>(
      where: where(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Company>(
      where: where?.call(Company.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Company] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<CompanyTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    Company company,
    _iy1vkl2d.Address address, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Company company,
    _izifjpv2.UserProfile owner, {
    _is.Transaction? transaction,
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

  /// Creates a relation between the given [Company] and [Company]
  /// by setting the [Company]'s foreign key `parentCompanyId` to refer to the [Company].
  Future<void> parentCompany(
    _is.DatabaseSession session,
    Company company,
    _iocy1ifk.Company parentCompany, {
    _is.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }
    if (parentCompany.id == null) {
      throw ArgumentError.notNull('parentCompany.id');
    }

    var $company = company.copyWith(parentCompanyId: parentCompany.id);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.parentCompanyId],
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
    _is.DatabaseSession session,
    Company company, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Company company, {
    _is.Transaction? transaction,
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

  /// Detaches the relation between this [Company] and the [Company] set in `parentCompany`
  /// by setting the [Company]'s foreign key `parentCompanyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> parentCompany(
    _is.DatabaseSession session,
    Company company, {
    _is.Transaction? transaction,
  }) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $company = company.copyWith(parentCompanyId: null);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.parentCompanyId],
      transaction: transaction,
    );
  }
}
