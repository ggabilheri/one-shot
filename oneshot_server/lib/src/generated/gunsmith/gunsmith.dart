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
import '../common/address.dart' as _i2;
import '../common/user_profile.dart' as _i3;
import 'package:oneshot_server/src/generated/protocol.dart' as _i4;

abstract class Gunsmith
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Gunsmith._({
    _i1.UuidValue? id,
    required this.name,
    required this.taxId,
    this.addressId,
    this.address,
    this.ownerId,
    this.owner,
    bool? active,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       active = active ?? true;

  factory Gunsmith({
    _i1.UuidValue? id,
    required String name,
    required String taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    bool? active,
  }) = _GunsmithImpl;

  factory Gunsmith.fromJson(Map<String, dynamic> jsonSerialization) {
    return Gunsmith(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      taxId: jsonSerialization['taxId'] as String,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.Address>(
              jsonSerialization['address'],
            ),
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.UserProfile>(
              jsonSerialization['owner'],
            ),
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  static final t = GunsmithTable();

  static const db = GunsmithRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String taxId;

  _i1.UuidValue? addressId;

  _i2.Address? address;

  _i1.UuidValue? ownerId;

  _i3.UserProfile? owner;

  bool active;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Gunsmith copyWith({
    _i1.UuidValue? id,
    String? name,
    String? taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    bool? active,
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
    };
  }

  static GunsmithInclude include({
    _i2.AddressInclude? address,
    _i3.UserProfileInclude? owner,
  }) {
    return GunsmithInclude._(
      address: address,
      owner: owner,
    );
  }

  static GunsmithIncludeList includeList({
    _i1.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithTable>? orderByList,
    GunsmithInclude? include,
  }) {
    return GunsmithIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gunsmith.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Gunsmith.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GunsmithImpl extends Gunsmith {
  _GunsmithImpl({
    _i1.UuidValue? id,
    required String name,
    required String taxId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    bool? active,
  }) : super._(
         id: id,
         name: name,
         taxId: taxId,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         active: active,
       );

  /// Returns a shallow copy of this [Gunsmith]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Gunsmith copyWith({
    _i1.UuidValue? id,
    String? name,
    String? taxId,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
    bool? active,
  }) {
    return Gunsmith(
      id: id ?? this.id,
      name: name ?? this.name,
      taxId: taxId ?? this.taxId,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i3.UserProfile? ? owner : this.owner?.copyWith(),
      active: active ?? this.active,
    );
  }
}

class GunsmithUpdateTable extends _i1.UpdateTable<GunsmithTable> {
  GunsmithUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> taxId(String value) => _i1.ColumnValue(
    table.taxId,
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

  _i1.ColumnValue<bool, bool> active(bool value) => _i1.ColumnValue(
    table.active,
    value,
  );
}

class GunsmithTable extends _i1.Table<_i1.UuidValue> {
  GunsmithTable({super.tableRelation}) : super(tableName: 'gunsmiths') {
    updateTable = GunsmithUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    taxId = _i1.ColumnString(
      'taxId',
      this,
    );
    addressId = _i1.ColumnUuid(
      'addressId',
      this,
    );
    ownerId = _i1.ColumnUuid(
      'ownerId',
      this,
    );
    active = _i1.ColumnBool(
      'active',
      this,
      hasDefault: true,
    );
  }

  late final GunsmithUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString taxId;

  late final _i1.ColumnUuid addressId;

  _i2.AddressTable? _address;

  late final _i1.ColumnUuid ownerId;

  _i3.UserProfileTable? _owner;

  late final _i1.ColumnBool active;

  _i2.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Gunsmith.t.addressId,
      foreignField: _i2.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _i3.UserProfileTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Gunsmith.t.ownerId,
      foreignField: _i3.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    taxId,
    addressId,
    ownerId,
    active,
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

class GunsmithInclude extends _i1.IncludeObject {
  GunsmithInclude._({
    _i2.AddressInclude? address,
    _i3.UserProfileInclude? owner,
  }) {
    _address = address;
    _owner = owner;
  }

  _i2.AddressInclude? _address;

  _i3.UserProfileInclude? _owner;

  @override
  Map<String, _i1.Include?> get includes => {
    'address': _address,
    'owner': _owner,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Gunsmith.t;
}

class GunsmithIncludeList extends _i1.IncludeList {
  GunsmithIncludeList._({
    _i1.WhereExpressionBuilder<GunsmithTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Gunsmith.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Gunsmith.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithTable>? orderByList,
    _i1.Transaction? transaction,
    GunsmithInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Gunsmith>(
      where: where?.call(Gunsmith.t),
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithTable>? where,
    int? offset,
    _i1.OrderByBuilder<GunsmithTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GunsmithTable>? orderByList,
    _i1.Transaction? transaction,
    GunsmithInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Gunsmith>(
      where: where?.call(Gunsmith.t),
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Gunsmith] by its [id] or null if no such row exists.
  Future<Gunsmith?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    GunsmithInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Gunsmith>> insert(
    _i1.DatabaseSession session,
    List<Gunsmith> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Gunsmith>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Gunsmith] and returns the inserted row.
  ///
  /// The returned [Gunsmith] will have its `id` field set.
  Future<Gunsmith> insertRow(
    _i1.DatabaseSession session,
    Gunsmith row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Gunsmith>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Gunsmith]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Gunsmith>> update(
    _i1.DatabaseSession session,
    List<Gunsmith> rows, {
    _i1.ColumnSelections<GunsmithTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Gunsmith>(
      rows,
      columns: columns?.call(Gunsmith.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Gunsmith]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Gunsmith> updateRow(
    _i1.DatabaseSession session,
    Gunsmith row, {
    _i1.ColumnSelections<GunsmithTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<GunsmithUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Gunsmith>(
      id,
      columnValues: columnValues(Gunsmith.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Gunsmith]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Gunsmith>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<GunsmithUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<GunsmithTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GunsmithTable>? orderBy,
    _i1.OrderByListBuilder<GunsmithTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Gunsmith>(
      columnValues: columnValues(Gunsmith.t.updateTable),
      where: where(Gunsmith.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gunsmith.t),
      orderByList: orderByList?.call(Gunsmith.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Gunsmith]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Gunsmith>> delete(
    _i1.DatabaseSession session,
    List<Gunsmith> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Gunsmith>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Gunsmith].
  Future<Gunsmith> deleteRow(
    _i1.DatabaseSession session,
    Gunsmith row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Gunsmith>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Gunsmith>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GunsmithTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Gunsmith>(
      where: where(Gunsmith.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GunsmithTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Gunsmith>(
      where: where?.call(Gunsmith.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Gunsmith] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GunsmithTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Gunsmith gunsmith,
    _i2.Address address, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Gunsmith gunsmith,
    _i3.UserProfile owner, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Gunsmith gunsmith, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Gunsmith gunsmith, {
    _i1.Transaction? transaction,
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
