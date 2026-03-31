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
import '../common/user_profile.dart' as _i2;
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class Address
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  Address._({
    this.id,
    required this.street,
    required this.number,
    this.complement,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.userProfileId,
    this.userProfile,
  });

  factory Address({
    _i1.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    required _i1.UuidValue userProfileId,
    _i2.UserProfile? userProfile,
  }) = _AddressImpl;

  factory Address.fromJson(Map<String, dynamic> jsonSerialization) {
    return Address(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      street: jsonSerialization['street'] as String,
      number: jsonSerialization['number'] as String,
      complement: jsonSerialization['complement'] as String?,
      neighborhood: jsonSerialization['neighborhood'] as String,
      city: jsonSerialization['city'] as String,
      state: jsonSerialization['state'] as String,
      zipCode: jsonSerialization['zipCode'] as String,
      userProfileId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['userProfileId'],
      ),
      userProfile: jsonSerialization['userProfile'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['userProfile'],
            ),
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  @override
  _i1.UuidValue? id;

  String street;

  String number;

  String? complement;

  String neighborhood;

  String city;

  String state;

  String zipCode;

  _i1.UuidValue userProfileId;

  _i2.UserProfile? userProfile;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [Address]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Address copyWith({
    _i1.UuidValue? id,
    String? street,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _i1.UuidValue? userProfileId,
    _i2.UserProfile? userProfile,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Address',
      if (id != null) 'id': id?.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'userProfileId': userProfileId.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Address',
      if (id != null) 'id': id?.toJson(),
      'street': street,
      'number': number,
      if (complement != null) 'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'userProfileId': userProfileId.toJson(),
      if (userProfile != null) 'userProfile': userProfile?.toJsonForProtocol(),
    };
  }

  static AddressInclude include({_i2.UserProfileInclude? userProfile}) {
    return AddressInclude._(userProfile: userProfile);
  }

  static AddressIncludeList includeList({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    AddressInclude? include,
  }) {
    return AddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Address.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    _i1.UuidValue? id,
    required String street,
    required String number,
    String? complement,
    required String neighborhood,
    required String city,
    required String state,
    required String zipCode,
    required _i1.UuidValue userProfileId,
    _i2.UserProfile? userProfile,
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
  @_i1.useResult
  @override
  Address copyWith({
    Object? id = _Undefined,
    String? street,
    String? number,
    Object? complement = _Undefined,
    String? neighborhood,
    String? city,
    String? state,
    String? zipCode,
    _i1.UuidValue? userProfileId,
    Object? userProfile = _Undefined,
  }) {
    return Address(
      id: id is _i1.UuidValue? ? id : this.id,
      street: street ?? this.street,
      number: number ?? this.number,
      complement: complement is String? ? complement : this.complement,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
      userProfileId: userProfileId ?? this.userProfileId,
      userProfile: userProfile is _i2.UserProfile?
          ? userProfile
          : this.userProfile?.copyWith(),
    );
  }
}

class AddressUpdateTable extends _i1.UpdateTable<AddressTable> {
  AddressUpdateTable(super.table);

  _i1.ColumnValue<String, String> street(String value) => _i1.ColumnValue(
    table.street,
    value,
  );

  _i1.ColumnValue<String, String> number(String value) => _i1.ColumnValue(
    table.number,
    value,
  );

  _i1.ColumnValue<String, String> complement(String? value) => _i1.ColumnValue(
    table.complement,
    value,
  );

  _i1.ColumnValue<String, String> neighborhood(String value) => _i1.ColumnValue(
    table.neighborhood,
    value,
  );

  _i1.ColumnValue<String, String> city(String value) => _i1.ColumnValue(
    table.city,
    value,
  );

  _i1.ColumnValue<String, String> state(String value) => _i1.ColumnValue(
    table.state,
    value,
  );

  _i1.ColumnValue<String, String> zipCode(String value) => _i1.ColumnValue(
    table.zipCode,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userProfileId(
    _i1.UuidValue value,
  ) => _i1.ColumnValue(
    table.userProfileId,
    value,
  );
}

class AddressTable extends _i1.Table<_i1.UuidValue?> {
  AddressTable({super.tableRelation}) : super(tableName: 'addresses') {
    updateTable = AddressUpdateTable(this);
    street = _i1.ColumnString(
      'street',
      this,
    );
    number = _i1.ColumnString(
      'number',
      this,
    );
    complement = _i1.ColumnString(
      'complement',
      this,
    );
    neighborhood = _i1.ColumnString(
      'neighborhood',
      this,
    );
    city = _i1.ColumnString(
      'city',
      this,
    );
    state = _i1.ColumnString(
      'state',
      this,
    );
    zipCode = _i1.ColumnString(
      'zipCode',
      this,
    );
    userProfileId = _i1.ColumnUuid(
      'userProfileId',
      this,
    );
  }

  late final AddressUpdateTable updateTable;

  late final _i1.ColumnString street;

  late final _i1.ColumnString number;

  late final _i1.ColumnString complement;

  late final _i1.ColumnString neighborhood;

  late final _i1.ColumnString city;

  late final _i1.ColumnString state;

  late final _i1.ColumnString zipCode;

  late final _i1.ColumnUuid userProfileId;

  _i2.UserProfileTable? _userProfile;

  _i2.UserProfileTable get userProfile {
    if (_userProfile != null) return _userProfile!;
    _userProfile = _i1.createRelationTable(
      relationFieldName: 'userProfile',
      field: Address.t.userProfileId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _userProfile!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userProfile') {
      return userProfile;
    }
    return null;
  }
}

class AddressInclude extends _i1.IncludeObject {
  AddressInclude._({_i2.UserProfileInclude? userProfile}) {
    _userProfile = userProfile;
  }

  _i2.UserProfileInclude? _userProfile;

  @override
  Map<String, _i1.Include?> get includes => {'userProfile': _userProfile};

  @override
  _i1.Table<_i1.UuidValue?> get table => Address.t;
}

class AddressIncludeList extends _i1.IncludeList {
  AddressIncludeList._({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Address.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => Address.t;
}

class AddressRepository {
  const AddressRepository._();

  final attachRow = const AddressAttachRowRepository._();

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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
    AddressInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
    AddressInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Address] by its [id] or null if no such row exists.
  Future<Address?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    AddressInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Address>> insert(
    _i1.DatabaseSession session,
    List<Address> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Address>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Address] and returns the inserted row.
  ///
  /// The returned [Address] will have its `id` field set.
  Future<Address> insertRow(
    _i1.DatabaseSession session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Address>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Address]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Address>> update(
    _i1.DatabaseSession session,
    List<Address> rows, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Address>(
      rows,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Address]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Address> updateRow(
    _i1.DatabaseSession session,
    Address row, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<AddressUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Address>(
      id,
      columnValues: columnValues(Address.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Address]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Address>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AddressUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AddressTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Address>(
      columnValues: columnValues(Address.t.updateTable),
      where: where(Address.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Address]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Address>> delete(
    _i1.DatabaseSession session,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Address].
  Future<Address> deleteRow(
    _i1.DatabaseSession session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Address>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Address>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where?.call(Address.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Address] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Address address,
    _i2.UserProfile userProfile, {
    _i1.Transaction? transaction,
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
