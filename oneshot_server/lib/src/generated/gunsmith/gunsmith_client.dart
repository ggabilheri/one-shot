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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i1n3uhu0;
import '../common/address.dart' as _iy1vkl2d;

abstract class GunsmithClient
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  GunsmithClient._({
    _is.UuidValue? id,
    this.gunsmithUserInfoId,
    this.gunsmithUserInfo,
    required this.name,
    required this.cpf,
    this.rg,
    required this.phone,
    this.addressId,
    this.address,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory GunsmithClient({
    _is.UuidValue? id,
    int? gunsmithUserInfoId,
    _i1n3uhu0.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  }) = _GunsmithClientImpl;

  factory GunsmithClient.fromJson(Map<String, dynamic> jsonSerialization) {
    return GunsmithClient(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gunsmithUserInfoId: jsonSerialization['gunsmithUserInfoId'] as int?,
      gunsmithUserInfo: jsonSerialization['gunsmithUserInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['gunsmithUserInfo'],
            ),
      name: jsonSerialization['name'] as String,
      cpf: jsonSerialization['cpf'] as String,
      rg: jsonSerialization['rg'] as String?,
      phone: jsonSerialization['phone'] as String,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iy1vkl2d.Address>(
              jsonSerialization['address'],
            ),
    );
  }

  static final t = GunsmithClientTable();

  static const db = GunsmithClientRepository._();

  @override
  _is.UuidValue id;

  int? gunsmithUserInfoId;

  _i1n3uhu0.UserInfo? gunsmithUserInfo;

  String name;

  String cpf;

  String? rg;

  String phone;

  _is.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  GunsmithClient copyWith({
    _is.UuidValue? id,
    int? gunsmithUserInfoId,
    _i1n3uhu0.UserInfo? gunsmithUserInfo,
    String? name,
    String? cpf,
    String? rg,
    String? phone,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GunsmithClient',
      'id': id.toJson(),
      if (gunsmithUserInfoId != null) 'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'GunsmithClient',
      'id': id.toJson(),
      if (gunsmithUserInfoId != null) 'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
    };
  }

  static GunsmithClientInclude include({
    _i1n3uhu0.UserInfoInclude? gunsmithUserInfo,
    _iy1vkl2d.AddressInclude? address,
  }) {
    return GunsmithClientInclude._(
      gunsmithUserInfo: gunsmithUserInfo,
      address: address,
    );
  }

  static GunsmithClientIncludeList includeList({
    _is.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    GunsmithClientInclude? include,
  }) {
    return GunsmithClientIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithClientImpl extends GunsmithClient {
  _GunsmithClientImpl({
    _is.UuidValue? id,
    int? gunsmithUserInfoId,
    _i1n3uhu0.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
  }) : super._(
         id: id,
         gunsmithUserInfoId: gunsmithUserInfoId,
         gunsmithUserInfo: gunsmithUserInfo,
         name: name,
         cpf: cpf,
         rg: rg,
         phone: phone,
         addressId: addressId,
         address: address,
       );

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  GunsmithClient copyWith({
    _is.UuidValue? id,
    Object? gunsmithUserInfoId = _Undefined,
    Object? gunsmithUserInfo = _Undefined,
    String? name,
    String? cpf,
    Object? rg = _Undefined,
    String? phone,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
  }) {
    return GunsmithClient(
      id: id ?? this.id,
      gunsmithUserInfoId: gunsmithUserInfoId is int?
          ? gunsmithUserInfoId
          : this.gunsmithUserInfoId,
      gunsmithUserInfo: gunsmithUserInfo is _i1n3uhu0.UserInfo?
          ? gunsmithUserInfo
          : this.gunsmithUserInfo?.copyWith(),
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      rg: rg is String? ? rg : this.rg,
      phone: phone ?? this.phone,
      addressId: addressId is _is.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
    );
  }
}

class GunsmithClientUpdateTable extends _is.UpdateTable<GunsmithClientTable> {
  GunsmithClientUpdateTable(super.table);

  _is.ColumnValue<int, int> gunsmithUserInfoId(int? value) =>
      _is.ColumnValue(table.gunsmithUserInfoId, value);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> cpf(String value) =>
      _is.ColumnValue(table.cpf, value);

  _is.ColumnValue<String, String> rg(String? value) =>
      _is.ColumnValue(table.rg, value);

  _is.ColumnValue<String, String> phone(String value) =>
      _is.ColumnValue(table.phone, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> addressId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.addressId, value);
}

class GunsmithClientTable extends _is.Table<_is.UuidValue> {
  GunsmithClientTable({super.tableRelation})
    : super(tableName: 'gunsmith_clients') {
    updateTable = GunsmithClientUpdateTable(this);
    gunsmithUserInfoId = _is.ColumnInt('gunsmithUserInfoId', this);
    name = _is.ColumnString('name', this);
    cpf = _is.ColumnString('cpf', this);
    rg = _is.ColumnString('rg', this);
    phone = _is.ColumnString('phone', this);
    addressId = _is.ColumnUuid('addressId', this);
  }

  late final GunsmithClientUpdateTable updateTable;

  late final _is.ColumnInt gunsmithUserInfoId;

  _i1n3uhu0.UserInfoTable? _gunsmithUserInfo;

  late final _is.ColumnString name;

  late final _is.ColumnString cpf;

  late final _is.ColumnString rg;

  late final _is.ColumnString phone;

  late final _is.ColumnUuid addressId;

  _iy1vkl2d.AddressTable? _address;

  _i1n3uhu0.UserInfoTable get gunsmithUserInfo {
    if (_gunsmithUserInfo != null) return _gunsmithUserInfo!;
    _gunsmithUserInfo = _is.createRelationTable(
      relationFieldName: 'gunsmithUserInfo',
      field: GunsmithClient.t.gunsmithUserInfoId,
      foreignField: _i1n3uhu0.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i1n3uhu0.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _gunsmithUserInfo!;
  }

  _iy1vkl2d.AddressTable get address {
    if (_address != null) return _address!;
    _address = _is.createRelationTable(
      relationFieldName: 'address',
      field: GunsmithClient.t.addressId,
      foreignField: _iy1vkl2d.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iy1vkl2d.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    gunsmithUserInfoId,
    name,
    cpf,
    rg,
    phone,
    addressId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'gunsmithUserInfo') {
      return gunsmithUserInfo;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

class GunsmithClientInclude extends _is.IncludeObject {
  GunsmithClientInclude._({
    _i1n3uhu0.UserInfoInclude? gunsmithUserInfo,
    _iy1vkl2d.AddressInclude? address,
  }) {
    _gunsmithUserInfo = gunsmithUserInfo;
    _address = address;
  }

  _i1n3uhu0.UserInfoInclude? _gunsmithUserInfo;

  _iy1vkl2d.AddressInclude? _address;

  @override
  Map<String, _is.Include?> get includes => {
    'gunsmithUserInfo': _gunsmithUserInfo,
    'address': _address,
  };

  @override
  _is.Table<_is.UuidValue> get table => GunsmithClient.t;
}

class GunsmithClientIncludeList extends _is.IncludeList {
  GunsmithClientIncludeList._({
    _is.WhereExpressionBuilder<GunsmithClientTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GunsmithClient.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => GunsmithClient.t;
}

class GunsmithClientRepository {
  const GunsmithClientRepository._();

  final attachRow = const GunsmithClientAttachRowRepository._();

  final detachRow = const GunsmithClientDetachRowRepository._();

  /// Returns a list of [GunsmithClient]s matching the given query parameters.
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
  Future<List<GunsmithClient>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _is.Transaction? transaction,
    GunsmithClientInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [GunsmithClient] matching the given query parameters.
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
  Future<GunsmithClient?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? offset,
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _is.Transaction? transaction,
    GunsmithClientInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [GunsmithClient] by its [id] or null if no such row exists.
  Future<GunsmithClient?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    GunsmithClientInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<GunsmithClient>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [GunsmithClient]s in the list and returns the inserted rows.
  ///
  /// The returned [GunsmithClient]s will have their `id` fields set.
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
  Future<List<GunsmithClient>> insert(
    _is.DatabaseSession session,
    List<GunsmithClient> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<GunsmithClient>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [GunsmithClient] and returns the inserted row.
  ///
  /// The returned [GunsmithClient] will have its `id` field set.
  Future<GunsmithClient> insertRow(
    _is.DatabaseSession session,
    GunsmithClient row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<GunsmithClient>(row, transaction: transaction);
  }

  /// Upserts all [GunsmithClient]s in the list and returns the resulting rows.
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
  /// The returned [GunsmithClient]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<GunsmithClient>> upsert(
    _is.DatabaseSession session,
    List<GunsmithClient> rows, {
    required _is.ColumnSelections<GunsmithClientTable> conflictColumns,
    _is.ColumnSelections<GunsmithClientTable>? updateColumns,
    _is.WhereExpressionBuilder<GunsmithClientTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<GunsmithClient>(
      rows,
      conflictColumns: conflictColumns(GunsmithClient.t),
      updateColumns: updateColumns?.call(GunsmithClient.t),
      updateWhere: updateWhere?.call(GunsmithClient.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [GunsmithClient] and returns the resulting row.
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
  /// The returned [GunsmithClient] will have its `id` field set.
  Future<GunsmithClient?> upsertRow(
    _is.DatabaseSession session,
    GunsmithClient row, {
    required _is.ColumnSelections<GunsmithClientTable> conflictColumns,
    _is.ColumnSelections<GunsmithClientTable>? updateColumns,
    _is.WhereExpressionBuilder<GunsmithClientTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<GunsmithClient>(
      row,
      conflictColumns: conflictColumns(GunsmithClient.t),
      updateColumns: updateColumns?.call(GunsmithClient.t),
      updateWhere: updateWhere?.call(GunsmithClient.t),
      transaction: transaction,
    );
  }

  /// Updates all [GunsmithClient]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<GunsmithClient>> update(
    _is.DatabaseSession session,
    List<GunsmithClient> rows, {
    _is.ColumnSelections<GunsmithClientTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<GunsmithClient>(
      rows,
      columns: columns?.call(GunsmithClient.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [GunsmithClient]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<GunsmithClient> updateRow(
    _is.DatabaseSession session,
    GunsmithClient row, {
    _is.ColumnSelections<GunsmithClientTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<GunsmithClient>(
      row,
      columns: columns?.call(GunsmithClient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [GunsmithClient] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<GunsmithClient?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<GunsmithClientUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<GunsmithClient>(
      id,
      columnValues: columnValues(GunsmithClient.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [GunsmithClient]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<GunsmithClient>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<GunsmithClientUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<GunsmithClientTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<GunsmithClient>(
      columnValues: columnValues(GunsmithClient.t.updateTable),
      where: where(GunsmithClient.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [GunsmithClient]s in the list and returns the deleted rows.
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
  Future<List<GunsmithClient>> delete(
    _is.DatabaseSession session,
    List<GunsmithClient> rows, {
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<GunsmithClient>(
      rows,
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [GunsmithClient].
  Future<GunsmithClient> deleteRow(
    _is.DatabaseSession session,
    GunsmithClient row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<GunsmithClient>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<GunsmithClient>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<GunsmithClientTable> where,
    _is.OrderByBuilder<GunsmithClientTable>? orderBy,
    _is.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<GunsmithClient>(
      where: where(GunsmithClient.t),
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [GunsmithClient] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<GunsmithClientTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<GunsmithClient>(
      where: where(GunsmithClient.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class GunsmithClientAttachRowRepository {
  const GunsmithClientAttachRowRepository._();

  /// Creates a relation between the given [GunsmithClient] and [UserInfo]
  /// by setting the [GunsmithClient]'s foreign key `gunsmithUserInfoId` to refer to the [UserInfo].
  Future<void> gunsmithUserInfo(
    _is.DatabaseSession session,
    GunsmithClient gunsmithClient,
    _i1n3uhu0.UserInfo gunsmithUserInfo, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmithClient.id == null) {
      throw ArgumentError.notNull('gunsmithClient.id');
    }
    if (gunsmithUserInfo.id == null) {
      throw ArgumentError.notNull('gunsmithUserInfo.id');
    }

    var $gunsmithClient = gunsmithClient.copyWith(
      gunsmithUserInfoId: gunsmithUserInfo.id,
    );
    await session.db.updateRow<GunsmithClient>(
      $gunsmithClient,
      columns: [GunsmithClient.t.gunsmithUserInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [GunsmithClient] and [Address]
  /// by setting the [GunsmithClient]'s foreign key `addressId` to refer to the [Address].
  Future<void> address(
    _is.DatabaseSession session,
    GunsmithClient gunsmithClient,
    _iy1vkl2d.Address address, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmithClient.id == null) {
      throw ArgumentError.notNull('gunsmithClient.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $gunsmithClient = gunsmithClient.copyWith(addressId: address.id);
    await session.db.updateRow<GunsmithClient>(
      $gunsmithClient,
      columns: [GunsmithClient.t.addressId],
      transaction: transaction,
    );
  }
}

class GunsmithClientDetachRowRepository {
  const GunsmithClientDetachRowRepository._();

  /// Detaches the relation between this [GunsmithClient] and the [UserInfo] set in `gunsmithUserInfo`
  /// by setting the [GunsmithClient]'s foreign key `gunsmithUserInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> gunsmithUserInfo(
    _is.DatabaseSession session,
    GunsmithClient gunsmithClient, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmithClient.id == null) {
      throw ArgumentError.notNull('gunsmithClient.id');
    }

    var $gunsmithClient = gunsmithClient.copyWith(gunsmithUserInfoId: null);
    await session.db.updateRow<GunsmithClient>(
      $gunsmithClient,
      columns: [GunsmithClient.t.gunsmithUserInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [GunsmithClient] and the [Address] set in `address`
  /// by setting the [GunsmithClient]'s foreign key `addressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> address(
    _is.DatabaseSession session,
    GunsmithClient gunsmithClient, {
    _is.Transaction? transaction,
  }) async {
    if (gunsmithClient.id == null) {
      throw ArgumentError.notNull('gunsmithClient.id');
    }

    var $gunsmithClient = gunsmithClient.copyWith(addressId: null);
    await session.db.updateRow<GunsmithClient>(
      $gunsmithClient,
      columns: [GunsmithClient.t.addressId],
      transaction: transaction,
    );
  }
}
