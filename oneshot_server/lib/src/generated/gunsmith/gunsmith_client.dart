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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import '../common/address.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class GunsmithClient
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  GunsmithClient._({
    this.id,
    this.gunsmithUserId,
    required this.gunsmithUserInfoId,
    this.gunsmithUserInfo,
    required this.name,
    required this.cpf,
    this.rg,
    required this.phone,
    this.addressId,
    required this.addressId,
    this.address,
  });

  factory GunsmithClient({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    required int gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i3.Address? address,
  }) = _GunsmithClientImpl;

  factory GunsmithClient.fromJson(Map<String, dynamic> jsonSerialization) {
    return GunsmithClient(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      gunsmithUserId: jsonSerialization['gunsmithUserId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithUserId'],
            ),
      gunsmithUserInfoId: jsonSerialization['gunsmithUserInfoId'] as int,
      gunsmithUserInfo: jsonSerialization['gunsmithUserInfo'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['gunsmithUserInfo'],
            ),
      name: jsonSerialization['name'] as String,
      cpf: jsonSerialization['cpf'] as String,
      rg: jsonSerialization['rg'] as String?,
      phone: jsonSerialization['phone'] as String,
      addressId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['addressId'],
      ),
      address: jsonSerialization['address'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.Address>(
              jsonSerialization['address'],
            ),
    );
  }

  static final t = GunsmithClientTable();

  static const db = GunsmithClientRepository._();

  @override
  _i1.UuidValue? id;

  _i1.UuidValue? gunsmithUserId;

  int gunsmithUserInfoId;

  _i2.UserInfo? gunsmithUserInfo;

  String name;

  String cpf;

  String? rg;

  String phone;

  _i1.UuidValue? addressId;

  _i1.UuidValue addressId;

  _i3.Address? address;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [GunsmithClient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GunsmithClient copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    int? gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    String? name,
    String? cpf,
    String? rg,
    String? phone,
    _i1.UuidValue? addressId,
    _i1.UuidValue? addressId,
    _i3.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GunsmithClient',
      if (id != null) 'id': id?.toJson(),
      if (gunsmithUserId != null) 'gunsmithUserId': gunsmithUserId?.toJson(),
      'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJson(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      'addressId': addressId.toJson(),
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'GunsmithClient',
      if (id != null) 'id': id?.toJson(),
      if (gunsmithUserId != null) 'gunsmithUserId': gunsmithUserId?.toJson(),
      'gunsmithUserInfoId': gunsmithUserInfoId,
      if (gunsmithUserInfo != null)
        'gunsmithUserInfo': gunsmithUserInfo?.toJsonForProtocol(),
      'name': name,
      'cpf': cpf,
      if (rg != null) 'rg': rg,
      'phone': phone,
      if (addressId != null) 'addressId': addressId?.toJson(),
      'addressId': addressId.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
    };
  }

  static GunsmithClientInclude include({
    _i2.UserInfoInclude? gunsmithUserInfo,
    _i3.AddressInclude? address,
  }) {
    return GunsmithClientInclude._(
      gunsmithUserInfo: gunsmithUserInfo,
      address: address,
    );
  }

  static GunsmithClientIncludeList includeList({
    _i1.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithClientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithClientTable>? orderByList,
    GunsmithClientInclude? include,
  }) {
    return GunsmithClientIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GunsmithClient.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GunsmithClient.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithClientImpl extends GunsmithClient {
  _GunsmithClientImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? gunsmithUserId,
    required int gunsmithUserInfoId,
    _i2.UserInfo? gunsmithUserInfo,
    required String name,
    required String cpf,
    String? rg,
    required String phone,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i3.Address? address,
  }) : super._(
         id: id,
         gunsmithUserId: gunsmithUserId,
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
  @_i1.useResult
  @override
  GunsmithClient copyWith({
    Object? id = _Undefined,
    Object? gunsmithUserId = _Undefined,
    int? gunsmithUserInfoId,
    Object? gunsmithUserInfo = _Undefined,
    String? name,
    String? cpf,
    Object? rg = _Undefined,
    String? phone,
    Object? addressId = _Undefined,
    _i1.UuidValue? addressId,
    Object? address = _Undefined,
  }) {
    return GunsmithClient(
      id: id is _i1.UuidValue? ? id : this.id,
      gunsmithUserId: gunsmithUserId is _i1.UuidValue?
          ? gunsmithUserId
          : this.gunsmithUserId,
      gunsmithUserInfoId: gunsmithUserInfoId ?? this.gunsmithUserInfoId,
      gunsmithUserInfo: gunsmithUserInfo is _i2.UserInfo?
          ? gunsmithUserInfo
          : this.gunsmithUserInfo?.copyWith(),
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      rg: rg is String? ? rg : this.rg,
      phone: phone ?? this.phone,
      addressId: addressId ?? this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
    );
  }
}

class GunsmithClientUpdateTable extends _i1.UpdateTable<GunsmithClientTable> {
  GunsmithClientUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> gunsmithUserId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.gunsmithUserId,
    value,
  );

  _i1.ColumnValue<int, int> gunsmithUserInfoId(int value) => _i1.ColumnValue(
    table.gunsmithUserInfoId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> cpf(String value) => _i1.ColumnValue(
    table.cpf,
    value,
  );

  _i1.ColumnValue<String, String> rg(String? value) => _i1.ColumnValue(
    table.rg,
    value,
  );

  _i1.ColumnValue<String, String> phone(String value) => _i1.ColumnValue(
    table.phone,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> addressId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.addressId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> addressId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.addressId,
    value,
  );
}

class GunsmithClientTable extends _i1.Table<_i1.UuidValue?> {
  GunsmithClientTable({super.tableRelation})
    : super(tableName: 'gunsmith_clients') {
    updateTable = GunsmithClientUpdateTable(this);
    gunsmithUserId = _i1.ColumnUuid(
      'gunsmithUserId',
      this,
    );
    gunsmithUserInfoId = _i1.ColumnInt(
      'gunsmithUserInfoId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    cpf = _i1.ColumnString(
      'cpf',
      this,
    );
    rg = _i1.ColumnString(
      'rg',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    addressId = _i1.ColumnUuid(
      'addressId',
      this,
    );
    addressId = _i1.ColumnUuid(
      'addressId',
      this,
    );
  }

  late final GunsmithClientUpdateTable updateTable;

  late final _i1.ColumnUuid gunsmithUserId;

  late final _i1.ColumnInt gunsmithUserInfoId;

  _i2.UserInfoTable? _gunsmithUserInfo;

  late final _i1.ColumnString name;

  late final _i1.ColumnString cpf;

  late final _i1.ColumnString rg;

  late final _i1.ColumnString phone;

  late final _i1.ColumnUuid addressId;

  late final _i1.ColumnUuid addressId;

  _i3.AddressTable? _address;

  _i2.UserInfoTable get gunsmithUserInfo {
    if (_gunsmithUserInfo != null) return _gunsmithUserInfo!;
    _gunsmithUserInfo = _i1.createRelationTable(
      relationFieldName: 'gunsmithUserInfo',
      field: GunsmithClient.t.gunsmithUserInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _gunsmithUserInfo!;
  }

  _i3.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: GunsmithClient.t.addressId,
      foreignField: _i3.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    gunsmithUserId,
    gunsmithUserInfoId,
    name,
    cpf,
    rg,
    phone,
    addressId,
    addressId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'gunsmithUserInfo') {
      return gunsmithUserInfo;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

class GunsmithClientInclude extends _i1.IncludeObject {
  GunsmithClientInclude._({
    _i2.UserInfoInclude? gunsmithUserInfo,
    _i3.AddressInclude? address,
  }) {
    _gunsmithUserInfo = gunsmithUserInfo;
    _address = address;
  }

  _i2.UserInfoInclude? _gunsmithUserInfo;

  _i3.AddressInclude? _address;

  @override
  Map<String, _i1.Include?> get includes => {
    'gunsmithUserInfo': _gunsmithUserInfo,
    'address': _address,
  };

  @override
  _i1.Table<_i1.UuidValue?> get table => GunsmithClient.t;
}

class GunsmithClientIncludeList extends _i1.IncludeList {
  GunsmithClientIncludeList._({
    _i1.WhereExpressionBuilder<GunsmithClientTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GunsmithClient.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => GunsmithClient.t;
}

class GunsmithClientRepository {
  const GunsmithClientRepository._();

  final attachRow = const GunsmithClientAttachRowRepository._();

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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithClientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _i1.Transaction? transaction,
    GunsmithClientInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? offset,
    _i1.OrderByBuilder<GunsmithClientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithClientTable>? orderByList,
    _i1.Transaction? transaction,
    GunsmithClientInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [GunsmithClient] by its [id] or null if no such row exists.
  Future<GunsmithClient?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    GunsmithClientInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<GunsmithClient>> insert(
    _i1.DatabaseSession session,
    List<GunsmithClient> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<GunsmithClient>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [GunsmithClient] and returns the inserted row.
  ///
  /// The returned [GunsmithClient] will have its `id` field set.
  Future<GunsmithClient> insertRow(
    _i1.DatabaseSession session,
    GunsmithClient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<GunsmithClient>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [GunsmithClient]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<GunsmithClient>> update(
    _i1.DatabaseSession session,
    List<GunsmithClient> rows, {
    _i1.ColumnSelections<GunsmithClientTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<GunsmithClient>(
      rows,
      columns: columns?.call(GunsmithClient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [GunsmithClient]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<GunsmithClient> updateRow(
    _i1.DatabaseSession session,
    GunsmithClient row, {
    _i1.ColumnSelections<GunsmithClientTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<GunsmithClientUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<GunsmithClient>(
      id,
      columnValues: columnValues(GunsmithClient.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [GunsmithClient]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<GunsmithClient>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<GunsmithClientUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<GunsmithClientTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithClientTable>? orderBy,
    _i1.OrderByListBuilder<GunsmithClientTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<GunsmithClient>(
      columnValues: columnValues(GunsmithClient.t.updateTable),
      where: where(GunsmithClient.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GunsmithClient.t),
      orderByList: orderByList?.call(GunsmithClient.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [GunsmithClient]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<GunsmithClient>> delete(
    _i1.DatabaseSession session,
    List<GunsmithClient> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GunsmithClient>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [GunsmithClient].
  Future<GunsmithClient> deleteRow(
    _i1.DatabaseSession session,
    GunsmithClient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<GunsmithClient>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<GunsmithClient>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GunsmithClientTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<GunsmithClient>(
      where: where(GunsmithClient.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithClientTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GunsmithClient>(
      where: where?.call(GunsmithClient.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [GunsmithClient] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GunsmithClientTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    GunsmithClient gunsmithClient,
    _i2.UserInfo gunsmithUserInfo, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    GunsmithClient gunsmithClient,
    _i3.Address address, {
    _i1.Transaction? transaction,
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
