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

abstract class Club
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  Club._({
    this.id,
    required this.name,
    required this.cnpj,
    this.addressId,
    required this.addressId,
    this.address,
    this.ownerId,
    required this.ownerId,
    this.owner,
    this.phoneNumber,
    this.email,
    bool? active,
  }) : active = active ?? true;

  factory Club({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    required _i1.UuidValue ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  }) = _ClubImpl;

  factory Club.fromJson(Map<String, dynamic> jsonSerialization) {
    return Club(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      cnpj: jsonSerialization['cnpj'] as String,
      addressId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['addressId'],
      ),
      address: jsonSerialization['address'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.Address>(
              jsonSerialization['address'],
            ),
      ownerId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['ownerId'],
      ),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.UserProfile>(
              jsonSerialization['owner'],
            ),
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      email: jsonSerialization['email'] as String?,
      active: jsonSerialization['active'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['active']),
    );
  }

  static final t = ClubTable();

  static const db = ClubRepository._();

  @override
  _i1.UuidValue? id;

  String name;

  String cnpj;

  _i1.UuidValue? addressId;

  _i1.UuidValue addressId;

  _i2.Address? address;

  _i1.UuidValue? ownerId;

  _i1.UuidValue ownerId;

  _i3.UserProfile? owner;

  String? phoneNumber;

  String? email;

  bool active;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [Club]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Club copyWith({
    _i1.UuidValue? id,
    String? name,
    String? cnpj,
    _i1.UuidValue? addressId,
    _i1.UuidValue? addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    _i1.UuidValue? ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Club',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'cnpj': cnpj,
      if (addressId != null) 'addressId': addressId?.toJson(),
      'addressId': addressId.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      'ownerId': ownerId.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Club',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'cnpj': cnpj,
      if (addressId != null) 'addressId': addressId?.toJson(),
      'addressId': addressId.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      'ownerId': ownerId.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      'active': active,
    };
  }

  static ClubInclude include({
    _i2.AddressInclude? address,
    _i3.UserProfileInclude? owner,
  }) {
    return ClubInclude._(
      address: address,
      owner: owner,
    );
  }

  static ClubIncludeList includeList({
    _i1.WhereExpressionBuilder<ClubTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ClubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClubTable>? orderByList,
    ClubInclude? include,
  }) {
    return ClubIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Club.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Club.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ClubImpl extends Club {
  _ClubImpl({
    _i1.UuidValue? id,
    required String name,
    required String cnpj,
    _i1.UuidValue? addressId,
    required _i1.UuidValue addressId,
    _i2.Address? address,
    _i1.UuidValue? ownerId,
    required _i1.UuidValue ownerId,
    _i3.UserProfile? owner,
    String? phoneNumber,
    String? email,
    bool? active,
  }) : super._(
         id: id,
         name: name,
         cnpj: cnpj,
         addressId: addressId,
         address: address,
         ownerId: ownerId,
         owner: owner,
         phoneNumber: phoneNumber,
         email: email,
         active: active,
       );

  /// Returns a shallow copy of this [Club]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Club copyWith({
    Object? id = _Undefined,
    String? name,
    String? cnpj,
    Object? addressId = _Undefined,
    _i1.UuidValue? addressId,
    Object? address = _Undefined,
    Object? ownerId = _Undefined,
    _i1.UuidValue? ownerId,
    Object? owner = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    bool? active,
  }) {
    return Club(
      id: id is _i1.UuidValue? ? id : this.id,
      name: name ?? this.name,
      cnpj: cnpj ?? this.cnpj,
      addressId: addressId ?? this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i3.UserProfile? ? owner : this.owner?.copyWith(),
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      active: active ?? this.active,
    );
  }
}

class ClubUpdateTable extends _i1.UpdateTable<ClubTable> {
  ClubUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> cnpj(String value) => _i1.ColumnValue(
    table.cnpj,
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

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ownerId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.ownerId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ownerId(_i1.UuidValue value) =>
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
}

class ClubTable extends _i1.Table<_i1.UuidValue?> {
  ClubTable({super.tableRelation}) : super(tableName: 'clubs') {
    updateTable = ClubUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    cnpj = _i1.ColumnString(
      'cnpj',
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
    ownerId = _i1.ColumnUuid(
      'ownerId',
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
  }

  late final ClubUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString cnpj;

  late final _i1.ColumnUuid addressId;

  late final _i1.ColumnUuid addressId;

  _i2.AddressTable? _address;

  late final _i1.ColumnUuid ownerId;

  late final _i1.ColumnUuid ownerId;

  _i3.UserProfileTable? _owner;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString email;

  late final _i1.ColumnBool active;

  _i2.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Club.t.addressId,
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
      field: Club.t.ownerId,
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
    cnpj,
    addressId,
    addressId,
    ownerId,
    ownerId,
    phoneNumber,
    email,
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

class ClubInclude extends _i1.IncludeObject {
  ClubInclude._({
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
  _i1.Table<_i1.UuidValue?> get table => Club.t;
}

class ClubIncludeList extends _i1.IncludeList {
  ClubIncludeList._({
    _i1.WhereExpressionBuilder<ClubTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Club.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => Club.t;
}

class ClubRepository {
  const ClubRepository._();

  final attachRow = const ClubAttachRowRepository._();

  /// Returns a list of [Club]s matching the given query parameters.
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
  Future<List<Club>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ClubTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ClubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClubTable>? orderByList,
    _i1.Transaction? transaction,
    ClubInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Club>(
      where: where?.call(Club.t),
      orderBy: orderBy?.call(Club.t),
      orderByList: orderByList?.call(Club.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Club] matching the given query parameters.
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
  Future<Club?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ClubTable>? where,
    int? offset,
    _i1.OrderByBuilder<ClubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClubTable>? orderByList,
    _i1.Transaction? transaction,
    ClubInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Club>(
      where: where?.call(Club.t),
      orderBy: orderBy?.call(Club.t),
      orderByList: orderByList?.call(Club.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Club] by its [id] or null if no such row exists.
  Future<Club?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ClubInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Club>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Club]s in the list and returns the inserted rows.
  ///
  /// The returned [Club]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Club>> insert(
    _i1.DatabaseSession session,
    List<Club> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Club>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Club] and returns the inserted row.
  ///
  /// The returned [Club] will have its `id` field set.
  Future<Club> insertRow(
    _i1.DatabaseSession session,
    Club row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Club>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Club]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Club>> update(
    _i1.DatabaseSession session,
    List<Club> rows, {
    _i1.ColumnSelections<ClubTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Club>(
      rows,
      columns: columns?.call(Club.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Club]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Club> updateRow(
    _i1.DatabaseSession session,
    Club row, {
    _i1.ColumnSelections<ClubTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Club>(
      row,
      columns: columns?.call(Club.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Club] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Club?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ClubUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Club>(
      id,
      columnValues: columnValues(Club.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Club]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Club>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ClubUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ClubTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ClubTable>? orderBy,
    _i1.OrderByListBuilder<ClubTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Club>(
      columnValues: columnValues(Club.t.updateTable),
      where: where(Club.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Club.t),
      orderByList: orderByList?.call(Club.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Club]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Club>> delete(
    _i1.DatabaseSession session,
    List<Club> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Club>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Club].
  Future<Club> deleteRow(
    _i1.DatabaseSession session,
    Club row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Club>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Club>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ClubTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Club>(
      where: where(Club.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ClubTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Club>(
      where: where?.call(Club.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Club] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ClubTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Club>(
      where: where(Club.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ClubAttachRowRepository {
  const ClubAttachRowRepository._();

  /// Creates a relation between the given [Club] and [Address]
  /// by setting the [Club]'s foreign key `addressId` to refer to the [Address].
  Future<void> address(
    _i1.DatabaseSession session,
    Club club,
    _i2.Address address, {
    _i1.Transaction? transaction,
  }) async {
    if (club.id == null) {
      throw ArgumentError.notNull('club.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $club = club.copyWith(addressId: address.id);
    await session.db.updateRow<Club>(
      $club,
      columns: [Club.t.addressId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Club] and [UserProfile]
  /// by setting the [Club]'s foreign key `ownerId` to refer to the [UserProfile].
  Future<void> owner(
    _i1.DatabaseSession session,
    Club club,
    _i3.UserProfile owner, {
    _i1.Transaction? transaction,
  }) async {
    if (club.id == null) {
      throw ArgumentError.notNull('club.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $club = club.copyWith(ownerId: owner.id);
    await session.db.updateRow<Club>(
      $club,
      columns: [Club.t.ownerId],
      transaction: transaction,
    );
  }
}
