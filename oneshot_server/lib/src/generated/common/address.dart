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
import '../common/user_profile.dart' as _izifjpv2;

abstract class Address
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Address._({
    _is.UuidValue? id,
    required this.street,
    required this.number,
    this.complement,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.zipCode,
    this.userProfileId,
    this.userProfile,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Address({
    _is.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      street: jsonSerialization['street'] as String,
      number: jsonSerialization['number'] as String,
      complement: jsonSerialization['complement'] as String?,
      neighborhood: jsonSerialization['neighborhood'] as String,
      city: jsonSerialization['city'] as String,
      state: jsonSerialization['state'] as String,
      zipCode: jsonSerialization['zipCode'] as String,
      userProfileId: jsonSerialization['userProfileId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['userProfileId'],
            ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  @override
  _is.UuidValue id;

  String street;

  String number;

  String? complement;

  String neighborhood;

  String city;

  String state;

  String zipCode;

  _is.UuidValue? userProfileId;

  _izifjpv2.UserProfile? userProfile;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Address copyWith({
    _is.UuidValue? id,
    String? street,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Address',
      'id': id.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Address',
      'id': id.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      if (userProfileId != null) 'userProfileId': userProfileId?.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJsonForProtocol(),
    };
  }

  static AddressInclude include({_izifjpv2.UserProfileInclude? userProfile}) {
    return AddressInclude._(userProfile: userProfile);
  }

  static AddressIncludeList includeList({
    _is.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    AddressInclude? include,
  }) {
    return AddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    _is.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    _is.UuidValue? userProfileId,
    _izifjpv2.UserProfile? userProfile,
  }) : super._(
         id: id,
         street: street,
         number: number,
         complement: complement,
         neighborhood: neighborhood,
         city: city,
         state: state,
         zipCode: zipCode,
         userProfileId: userProfileId,
         userProfile: userProfile,
       );

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Address copyWith({
    _is.UuidValue? id,
    String? street,
    String? number,
    Object? complement = _Undefined,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    Object? userProfileId = _Undefined,
    Object? userProfile = _Undefined,
  }) {
    return Address(
      id: id ?? this.id,
      street: street ?? this.street,
      number: number ?? this.number,
      complement: complement is String? ? complement : this.complement,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
      userProfileId: userProfileId is _is.UuidValue?
          ? userProfileId
          : this.userProfileId,
      userProfile: userProfile is _izifjpv2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
    );
  }
}

class AddressUpdateTable extends _is.UpdateTable<AddressTable> {
  AddressUpdateTable(super.table);

  _is.ColumnValue<String, String> street(String value) =>
      _is.ColumnValue(table.street, value);

  _is.ColumnValue<String, String> number(String value) =>
      _is.ColumnValue(table.number, value);

  _is.ColumnValue<String, String> complement(String? value) =>
      _is.ColumnValue(table.complement, value);

  _is.ColumnValue<String, String> neighborhood(String value) =>
      _is.ColumnValue(table.neighborhood, value);

  _is.ColumnValue<String, String> city(String value) =>
      _is.ColumnValue(table.city, value);

  _is.ColumnValue<String, String> state(String value) =>
      _is.ColumnValue(table.state, value);

  _is.ColumnValue<String, String> zipCode(String value) =>
      _is.ColumnValue(table.zipCode, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userProfileId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.userProfileId, value);
}

class AddressTable extends _is.Table<_is.UuidValue> {
  AddressTable({super.tableRelation}) : super(tableName: 'addresses') {
    updateTable = AddressUpdateTable(this);
    street = _is.ColumnString('street', this);
    number = _is.ColumnString('number', this);
    complement = _is.ColumnString('complement', this);
    neighborhood = _is.ColumnString('neighborhood', this);
    city = _is.ColumnString('city', this);
    state = _is.ColumnString('state', this);
    zipCode = _is.ColumnString('zipCode', this);
    userProfileId = _is.ColumnUuid('userProfileId', this);
  }

  late final AddressUpdateTable updateTable;

  late final _is.ColumnString street;

  late final _is.ColumnString number;

  late final _is.ColumnString complement;

  late final _is.ColumnString neighborhood;

  late final _is.ColumnString city;

  late final _is.ColumnString state;

  late final _is.ColumnString zipCode;

  late final _is.ColumnUuid userProfileId;

  _izifjpv2.UserProfileTable? _userProfile;

  _izifjpv2.UserProfileTable get userProfile {
    if (_userProfile != null) return _userProfile!;
    _userProfile = _is.createRelationTable(
      relationFieldName: 'userProfile',
      field: Address.t.userProfileId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _userProfile!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    street,
    number,
    complement,
    neighborhood,
    city,
    state,
    zipCode,
    userProfileId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userProfile') {
      return userProfile;
    }
    return null;
  }
}

class AddressInclude extends _is.IncludeObject {
  AddressInclude._({_izifjpv2.UserProfileInclude? userProfile}) {
    _userProfile = userProfile;
  }

  _izifjpv2.UserProfileInclude? _userProfile;

  @override
  Map<String, _is.Include?> get includes => {'userProfile': _userProfile};

  @override
  _is.Table<_is.UuidValue> get table => Address.t;
}

class AddressIncludeList extends _is.IncludeList {
  AddressIncludeList._({
    _is.WhereExpressionBuilder<AddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Address.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Address.t;
}

class AddressRepository {
  const AddressRepository._();

  final attachRow = const AddressAttachRowRepository._();

  final detachRow = const AddressDetachRowRepository._();

  /// Returns a list of [Address]s matching the given query parameters.
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
  Future<List<Address>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    _is.Transaction? transaction,
    AddressInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Address] matching the given query parameters.
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
  Future<Address?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    _is.Transaction? transaction,
    AddressInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Address] by its [id] or null if no such row exists.
  Future<Address?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    AddressInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Address>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Address]s in the list and returns the inserted rows.
  ///
  /// The returned [Address]s will have their `id` fields set.
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
  Future<List<Address>> insert(
    _is.DatabaseSession session,
    List<Address> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Address>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Address] and returns the inserted row.
  ///
  /// The returned [Address] will have its `id` field set.
  Future<Address> insertRow(
    _is.DatabaseSession session,
    Address row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Address>(row, transaction: transaction);
  }

  /// Upserts all [Address]s in the list and returns the resulting rows.
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
  /// The returned [Address]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Address>> upsert(
    _is.DatabaseSession session,
    List<Address> rows, {
    required _is.ColumnSelections<AddressTable> conflictColumns,
    _is.ColumnSelections<AddressTable>? updateColumns,
    _is.WhereExpressionBuilder<AddressTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Address>(
      rows,
      conflictColumns: conflictColumns(Address.t),
      updateColumns: updateColumns?.call(Address.t),
      updateWhere: updateWhere?.call(Address.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Address] and returns the resulting row.
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
  /// The returned [Address] will have its `id` field set.
  Future<Address?> upsertRow(
    _is.DatabaseSession session,
    Address row, {
    required _is.ColumnSelections<AddressTable> conflictColumns,
    _is.ColumnSelections<AddressTable>? updateColumns,
    _is.WhereExpressionBuilder<AddressTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Address>(
      row,
      conflictColumns: conflictColumns(Address.t),
      updateColumns: updateColumns?.call(Address.t),
      updateWhere: updateWhere?.call(Address.t),
      transaction: transaction,
    );
  }

  /// Updates all [Address]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Address>> update(
    _is.DatabaseSession session,
    List<Address> rows, {
    _is.ColumnSelections<AddressTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Address>(
      rows,
      columns: columns?.call(Address.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Address]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Address> updateRow(
    _is.DatabaseSession session,
    Address row, {
    _is.ColumnSelections<AddressTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Address>(
      row,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Address] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Address?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<AddressUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Address>(
      id,
      columnValues: columnValues(Address.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Address]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Address>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<AddressUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<AddressTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Address>(
      columnValues: columnValues(Address.t.updateTable),
      where: where(Address.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Address]s in the list and returns the deleted rows.
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
  Future<List<Address>> delete(
    _is.DatabaseSession session,
    List<Address> rows, {
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Address>(
      rows,
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Address].
  Future<Address> deleteRow(
    _is.DatabaseSession session,
    Address row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Address>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Address>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AddressTable> where,
    _is.OrderByBuilder<AddressTable>? orderBy,
    _is.OrderByListBuilder<AddressTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Address>(
      where: where(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where?.call(Address.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Address] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AddressTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Address>(
      where: where(Address.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class AddressAttachRowRepository {
  const AddressAttachRowRepository._();

  /// Creates a relation between the given [Address] and [UserProfile]
  /// by setting the [Address]'s foreign key `userProfileId` to refer to the [UserProfile].
  Future<void> userProfile(
    _is.DatabaseSession session,
    Address address,
    _izifjpv2.UserProfile userProfile, {
    _is.Transaction? transaction,
  }) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }

    var $address = address.copyWith(userProfileId: userProfile.id);
    await session.db.updateRow<Address>(
      $address,
      columns: [Address.t.userProfileId],
      transaction: transaction,
    );
  }
}

class AddressDetachRowRepository {
  const AddressDetachRowRepository._();

  /// Detaches the relation between this [Address] and the [UserProfile] set in `userProfile`
  /// by setting the [Address]'s foreign key `userProfileId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userProfile(
    _is.DatabaseSession session,
    Address address, {
    _is.Transaction? transaction,
  }) async {
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $address = address.copyWith(userProfileId: null);
    await session.db.updateRow<Address>(
      $address,
      columns: [Address.t.userProfileId],
      transaction: transaction,
    );
  }
}
