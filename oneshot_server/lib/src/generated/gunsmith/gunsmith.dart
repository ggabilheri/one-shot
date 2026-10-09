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

abstract class Gunsmith
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Gunsmith._({
    _is.UuidValue? id,
    required this.name,
    required this.taxId,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    bool? active,
    double? incomeValue,
    this.asaasAccountId,
    this.asaasWalletId,
    this.asaasApiKey,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _is.Uuid().v4obj(),
       active = active ?? true,
       incomeValue = incomeValue ?? 1000.0;

  factory Gunsmith({
    _is.UuidValue? id,
    required String name,
    required String taxId,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) = _GunsmithImpl;

  factory Gunsmith.fromJson(Map<String, dynamic> jsonSerialization) {
    return Gunsmith(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      taxId: jsonSerialization['taxId'] as String,
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
      active: jsonSerialization['active'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['active']),
      incomeValue: (jsonSerialization['incomeValue'] as num?)?.toDouble(),
      asaasAccountId: jsonSerialization['asaasAccountId'] as String?,
      asaasWalletId: jsonSerialization['asaasWalletId'] as String?,
      asaasApiKey: jsonSerialization['asaasApiKey'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  static final t = GunsmithTable();

  static const db = GunsmithRepository._();

  @override
  _is.UuidValue id;

  String name;

  String taxId;

  _is.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  _is.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  bool active;

  double incomeValue;

  String? asaasAccountId;

  String? asaasWalletId;

  String? asaasApiKey;

  String? asaasOnboardingFailureReason;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Gunsmith copyWith({
    _is.UuidValue? id,
    String? name,
    String? taxId,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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
      '__className__': 'Gunsmith',
      'id': id.toJson(),
      'name': name,
      'taxId': taxId,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
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
      '__className__': 'Gunsmith',
      'id': id.toJson(),
      'name': name,
      'taxId': taxId,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      'active': active,
      'incomeValue': incomeValue,
      if (asaasAccountId != null) 'asaasAccountId': asaasAccountId,
      if (asaasWalletId != null) 'asaasWalletId': asaasWalletId,
      if (asaasApiKey != null) 'asaasApiKey': asaasApiKey,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  static GunsmithInclude include({
    _iy1vkl2d.AddressInclude? address,
    _izifjpv2.UserProfileInclude? owner,
  }) {
    return GunsmithInclude._(address: address, owner: owner);
  }

  static GunsmithIncludeList includeList({
    _is.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    GunsmithInclude? include,
  }) {
    return GunsmithIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithImpl extends Gunsmith {
  _GunsmithImpl({
    _is.UuidValue? id,
    required String name,
    required String taxId,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
    bool? active,
    double? incomeValue,
    String? asaasAccountId,
    String? asaasWalletId,
    String? asaasApiKey,
    String? asaasOnboardingFailureReason,
  }) : super._(
         id: id,
         name: name,
         taxId: taxId,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         active: active,
         incomeValue: incomeValue,
         asaasAccountId: asaasAccountId,
         asaasWalletId: asaasWalletId,
         asaasApiKey: asaasApiKey,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Gunsmith copyWith({
    _is.UuidValue? id,
    String? name,
    String? taxId,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    bool? active,
    double? incomeValue,
    Object? asaasAccountId = _Undefined,
    Object? asaasWalletId = _Undefined,
    Object? asaasApiKey = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return Gunsmith(
      id: id ?? this.id,
      name: name ?? this.name,
      taxId: taxId ?? this.taxId,
      addressId: addressId is _is.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
      ownerId: ownerId is _is.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _izifjpv2.UserProfile? ? owner : this.owner?.copyWith(),
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

class GunsmithUpdateTable extends _is.UpdateTable<GunsmithTable> {
  GunsmithUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> taxId(String value) =>
      _is.ColumnValue(table.taxId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> addressId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.addressId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> ownerId(_is.UuidValue? value) =>
      _is.ColumnValue(table.ownerId, value);

  _is.ColumnValue<bool, bool> active(bool value) =>
      _is.ColumnValue(table.active, value);

  _is.ColumnValue<double, double> incomeValue(double value) =>
      _is.ColumnValue(table.incomeValue, value);

  _is.ColumnValue<String, String> asaasAccountId(String? value) =>
      _is.ColumnValue(table.asaasAccountId, value);

  _is.ColumnValue<String, String> asaasWalletId(String? value) =>
      _is.ColumnValue(table.asaasWalletId, value);

  _is.ColumnValue<String, String> asaasApiKey(String? value) =>
      _is.ColumnValue(table.asaasApiKey, value);

  _is.ColumnValue<String, String> asaasOnboardingFailureReason(String? value) =>
      _is.ColumnValue(table.asaasOnboardingFailureReason, value);
}

class GunsmithTable extends _is.Table<_is.UuidValue> {
  GunsmithTable({super.tableRelation}) : super(tableName: 'gunsmiths') {
    updateTable = GunsmithUpdateTable(this);
    name = _is.ColumnString('name', this);
    taxId = _is.ColumnString('taxId', this);
    addressId = _is.ColumnUuid('addressId', this);
    ownerId = _is.ColumnUuid('ownerId', this);
    active = _is.ColumnBool('active', this, hasDefault: true);
    incomeValue = _is.ColumnDouble('incomeValue', this, hasDefault: true);
    asaasAccountId = _is.ColumnString('asaasAccountId', this);
    asaasWalletId = _is.ColumnString('asaasWalletId', this);
    asaasApiKey = _is.ColumnString('asaasApiKey', this);
    asaasOnboardingFailureReason = _is.ColumnString(
      'asaasOnboardingFailureReason',
      this,
    );
  }

  late final GunsmithUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString taxId;

  late final _is.ColumnUuid addressId;

  _iy1vkl2d.AddressTable? _address;

  late final _is.ColumnUuid ownerId;

  _izifjpv2.UserProfileTable? _owner;

  late final _is.ColumnBool active;

  late final _is.ColumnDouble incomeValue;

  late final _is.ColumnString asaasAccountId;

  late final _is.ColumnString asaasWalletId;

  late final _is.ColumnString asaasApiKey;

  late final _is.ColumnString asaasOnboardingFailureReason;

  _iy1vkl2d.AddressTable get address {
    if (_address != null) return _address!;
    _address = _is.createRelationTable(
      relationFieldName: 'address',
      field: Gunsmith.t.addressId,
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
      field: Gunsmith.t.ownerId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    name,
    taxId,
    addressId,
    ownerId,
    active,
    incomeValue,
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
    return null;
  }
}

class GunsmithInclude extends _is.IncludeObject {
  GunsmithInclude._({
    _iy1vkl2d.AddressInclude? address,
    _izifjpv2.UserProfileInclude? owner,
  }) {
    _address = address;
    _owner = owner;
  }

  _iy1vkl2d.AddressInclude? _address;

  _izifjpv2.UserProfileInclude? _owner;

  @override
  Map<String, _is.Include?> get includes => {
    'address': _address,
    'owner': _owner,
  };

  @override
  _is.Table<_is.UuidValue> get table => Gunsmith.t;
}

class GunsmithIncludeList extends _is.IncludeList {
  GunsmithIncludeList._({
    _is.WhereExpressionBuilder<GunsmithTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Gunsmith.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Gunsmith.t;
}

class GunsmithRepository {
  const GunsmithRepository._();

  final attachRow = const GunsmithAttachRowRepository._();

  final detachRow = const GunsmithDetachRowRepository._();

  /// Returns a list of [Gunsmith]s matching the given query parameters.
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
  Future<List<Gunsmith>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    _is.Transaction? transaction,
    GunsmithInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Gunsmith>(
      where: where?.call(Gunsmith.t),
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Gunsmith] matching the given query parameters.
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
  Future<Gunsmith?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithTable>? where,
    int? offset,
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    _is.Transaction? transaction,
    GunsmithInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Gunsmith>(
      where: where?.call(Gunsmith.t),
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Gunsmith] by its [id] or null if no such row exists.
  Future<Gunsmith?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    GunsmithInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Gunsmith>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Gunsmith]s in the list and returns the inserted rows.
  ///
  /// The returned [Gunsmith]s will have their `id` fields set.
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
  Future<List<Gunsmith>> insert(
    _is.DatabaseSession session,
    List<Gunsmith> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Gunsmith>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Gunsmith] and returns the inserted row.
  ///
  /// The returned [Gunsmith] will have its `id` field set.
  Future<Gunsmith> insertRow(
    _is.DatabaseSession session,
    Gunsmith row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Gunsmith>(row, transaction: transaction);
  }

  /// Upserts all [Gunsmith]s in the list and returns the resulting rows.
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
  /// The returned [Gunsmith]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Gunsmith>> upsert(
    _is.DatabaseSession session,
    List<Gunsmith> rows, {
    required _is.ColumnSelections<GunsmithTable> conflictColumns,
    _is.ColumnSelections<GunsmithTable>? updateColumns,
    _is.WhereExpressionBuilder<GunsmithTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Gunsmith>(
      rows,
      conflictColumns: conflictColumns(Gunsmith.t),
      updateColumns: updateColumns?.call(Gunsmith.t),
      updateWhere: updateWhere?.call(Gunsmith.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Gunsmith] and returns the resulting row.
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
  /// The returned [Gunsmith] will have its `id` field set.
  Future<Gunsmith?> upsertRow(
    _is.DatabaseSession session,
    Gunsmith row, {
    required _is.ColumnSelections<GunsmithTable> conflictColumns,
    _is.ColumnSelections<GunsmithTable>? updateColumns,
    _is.WhereExpressionBuilder<GunsmithTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Gunsmith>(
      row,
      conflictColumns: conflictColumns(Gunsmith.t),
      updateColumns: updateColumns?.call(Gunsmith.t),
      updateWhere: updateWhere?.call(Gunsmith.t),
      transaction: transaction,
    );
  }

  /// Updates all [Gunsmith]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Gunsmith>> update(
    _is.DatabaseSession session,
    List<Gunsmith> rows, {
    _is.ColumnSelections<GunsmithTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Gunsmith>(
      rows,
      columns: columns?.call(Gunsmith.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Gunsmith]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Gunsmith> updateRow(
    _is.DatabaseSession session,
    Gunsmith row, {
    _is.ColumnSelections<GunsmithTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Gunsmith>(
      row,
      columns: columns?.call(Gunsmith.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Gunsmith] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Gunsmith?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<GunsmithUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Gunsmith>(
      id,
      columnValues: columnValues(Gunsmith.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Gunsmith]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Gunsmith>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<GunsmithUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<GunsmithTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Gunsmith>(
      columnValues: columnValues(Gunsmith.t.updateTable),
      where: where(Gunsmith.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Gunsmith]s in the list and returns the deleted rows.
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
  Future<List<Gunsmith>> delete(
    _is.DatabaseSession session,
    List<Gunsmith> rows, {
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Gunsmith>(
      rows,
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Gunsmith].
  Future<Gunsmith> deleteRow(
    _is.DatabaseSession session,
    Gunsmith row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Gunsmith>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Gunsmith>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<GunsmithTable> where,
    _is.OrderByBuilder<GunsmithTable>? orderBy,
    _is.OrderByListBuilder<GunsmithTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Gunsmith>(
      where: where(Gunsmith.t),
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Gunsmith>(
      where: where?.call(Gunsmith.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Gunsmith] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<GunsmithTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Gunsmith>(
      where: where(Gunsmith.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class GunsmithAttachRowRepository {
  const GunsmithAttachRowRepository._();

  /// Creates a relation between the given [Gunsmith] and [Address]
  /// by setting the [Gunsmith]'s foreign key `addressId` to refer to the [Address].
  Future<void> address(
    _is.DatabaseSession session,
    Gunsmith gunsmith,
    _iy1vkl2d.Address address, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmith.id == null) {
      throw ArgumentError.notNull('gunsmith.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $gunsmith = gunsmith.copyWith(addressId: address.id);
    await session.db.updateRow<Gunsmith>(
      $gunsmith,
      columns: [Gunsmith.t.addressId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Gunsmith] and [UserProfile]
  /// by setting the [Gunsmith]'s foreign key `ownerId` to refer to the [UserProfile].
  Future<void> owner(
    _is.DatabaseSession session,
    Gunsmith gunsmith,
    _izifjpv2.UserProfile owner, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmith.id == null) {
      throw ArgumentError.notNull('gunsmith.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $gunsmith = gunsmith.copyWith(ownerId: owner.id);
    await session.db.updateRow<Gunsmith>(
      $gunsmith,
      columns: [Gunsmith.t.ownerId],
      transaction: transaction,
    );
  }
}

class GunsmithDetachRowRepository {
  const GunsmithDetachRowRepository._();

  /// Detaches the relation between this [Gunsmith] and the [Address] set in `address`
  /// by setting the [Gunsmith]'s foreign key `addressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> address(
    _is.DatabaseSession session,
    Gunsmith gunsmith, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmith.id == null) {
      throw ArgumentError.notNull('gunsmith.id');
    }

    var $gunsmith = gunsmith.copyWith(addressId: null);
    await session.db.updateRow<Gunsmith>(
      $gunsmith,
      columns: [Gunsmith.t.addressId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Gunsmith] and the [UserProfile] set in `owner`
  /// by setting the [Gunsmith]'s foreign key `ownerId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> owner(
    _is.DatabaseSession session,
    Gunsmith gunsmith, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmith.id == null) {
      throw ArgumentError.notNull('gunsmith.id');
    }

    var $gunsmith = gunsmith.copyWith(ownerId: null);
    await session.db.updateRow<Gunsmith>(
      $gunsmith,
      columns: [Gunsmith.t.ownerId],
      transaction: transaction,
    );
  }
}
