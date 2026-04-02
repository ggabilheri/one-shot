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
import '../enums/gender.enum.dart' as _i3;
import '../common/address.dart' as _i4;
import '../enums/user_type.enum.dart' as _i5;
import 'package:oneshot_server/src/generated/protocol.dart' as _i6;

abstract class UserProfile
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  UserProfile._({
    _i1.UuidValue? id,
    this.userInfoId,
    this.userInfo,
    required this.name,
    this.gender,
    this.birthDate,
    this.rg,
    this.cpf,
    this.phone,
    this.email,
    this.addressId,
    this.address,
    this.types,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory UserProfile({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i6.Protocol().deserialize<_i2.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      name: jsonSerialization['name'] as String,
      gender: jsonSerialization['gender'] == null
          ? null
          : _i3.Gender.fromJson((jsonSerialization['gender'] as String)),
      birthDate: jsonSerialization['birthDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['birthDate']),
      rg: jsonSerialization['rg'] as String?,
      cpf: jsonSerialization['cpf'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _i6.Protocol().deserialize<_i4.Address>(
              jsonSerialization['address'],
            ),
      types: jsonSerialization['types'] == null
          ? null
          : _i6.Protocol().deserialize<List<_i5.UserType>>(
              jsonSerialization['types'],
            ),
    );
  }

  static final t = UserProfileTable();

  static const db = UserProfileRepository._();

  @override
  _i1.UuidValue id;

  int? userInfoId;

  _i2.UserInfo? userInfo;

  String name;

  _i3.Gender? gender;

  DateTime? birthDate;

  String? rg;

  String? cpf;

  String? phone;

  String? email;

  _i1.UuidValue? addressId;

  _i4.Address? address;

  List<_i5.UserType>? types;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserProfile copyWith({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    String? name,
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserProfile',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'name': name,
      if (gender != null) 'gender': gender?.toJson(),
      if (birthDate != null) 'birthDate': birthDate?.toJson(),
      if (rg != null) 'rg': rg,
      if (cpf != null) 'cpf': cpf,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJson(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'UserProfile',
      'id': id.toJson(),
      if (userInfoId != null) 'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      'name': name,
      if (gender != null) 'gender': gender?.toJson(),
      if (birthDate != null) 'birthDate': birthDate?.toJson(),
      if (rg != null) 'rg': rg,
      if (cpf != null) 'cpf': cpf,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (addressId != null) 'addressId': addressId?.toJson(),
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  static UserProfileInclude include({
    _i2.UserInfoInclude? userInfo,
    _i4.AddressInclude? address,
  }) {
    return UserProfileInclude._(
      userInfo: userInfo,
      address: address,
    );
  }

  static UserProfileIncludeList includeList({
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    UserProfileInclude? include,
  }) {
    return UserProfileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserProfile.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserProfile.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    _i1.UuidValue? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    required String name,
    _i3.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _i1.UuidValue? addressId,
    _i4.Address? address,
    List<_i5.UserType>? types,
  }) : super._(
         id: id,
         userInfoId: userInfoId,
         userInfo: userInfo,
         name: name,
         gender: gender,
         birthDate: birthDate,
         rg: rg,
         cpf: cpf,
         phone: phone,
         email: email,
         addressId: addressId,
         address: address,
         types: types,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserProfile copyWith({
    _i1.UuidValue? id,
    Object? userInfoId = _Undefined,
    Object? userInfo = _Undefined,
    String? name,
    Object? gender = _Undefined,
    Object? birthDate = _Undefined,
    Object? rg = _Undefined,
    Object? cpf = _Undefined,
    Object? phone = _Undefined,
    Object? email = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? types = _Undefined,
  }) {
    return UserProfile(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i2.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      name: name ?? this.name,
      gender: gender is _i3.Gender? ? gender : this.gender,
      birthDate: birthDate is DateTime? ? birthDate : this.birthDate,
      rg: rg is String? ? rg : this.rg,
      cpf: cpf is String? ? cpf : this.cpf,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      addressId: addressId is _i1.UuidValue? ? addressId : this.addressId,
      address: address is _i4.Address? ? address : this.address?.copyWith(),
      types: types is List<_i5.UserType>?
          ? types
          : this.types?.map((e0) => e0).toList(),
    );
  }
}

class UserProfileUpdateTable extends _i1.UpdateTable<UserProfileTable> {
  UserProfileUpdateTable(super.table);

  _i1.ColumnValue<int, int> userInfoId(int? value) => _i1.ColumnValue(
    table.userInfoId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<_i3.Gender, _i3.Gender> gender(_i3.Gender? value) =>
      _i1.ColumnValue(
        table.gender,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> birthDate(DateTime? value) =>
      _i1.ColumnValue(
        table.birthDate,
        value,
      );

  _i1.ColumnValue<String, String> rg(String? value) => _i1.ColumnValue(
    table.rg,
    value,
  );

  _i1.ColumnValue<String, String> cpf(String? value) => _i1.ColumnValue(
    table.cpf,
    value,
  );

  _i1.ColumnValue<String, String> phone(String? value) => _i1.ColumnValue(
    table.phone,
    value,
  );

  _i1.ColumnValue<String, String> email(String? value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> addressId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.addressId,
    value,
  );

  _i1.ColumnValue<List<_i5.UserType>, List<_i5.UserType>> types(
    List<_i5.UserType>? value,
  ) => _i1.ColumnValue(
    table.types,
    value,
  );
}

class UserProfileTable extends _i1.Table<_i1.UuidValue> {
  UserProfileTable({super.tableRelation}) : super(tableName: 'user_profile') {
    updateTable = UserProfileUpdateTable(this);
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byName,
    );
    birthDate = _i1.ColumnDateTime(
      'birthDate',
      this,
    );
    rg = _i1.ColumnString(
      'rg',
      this,
    );
    cpf = _i1.ColumnString(
      'cpf',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    addressId = _i1.ColumnUuid(
      'addressId',
      this,
    );
    types = _i1.ColumnSerializable<List<_i5.UserType>>(
      'types',
      this,
    );
  }

  late final UserProfileUpdateTable updateTable;

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnString name;

  late final _i1.ColumnEnum<_i3.Gender> gender;

  late final _i1.ColumnDateTime birthDate;

  late final _i1.ColumnString rg;

  late final _i1.ColumnString cpf;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString email;

  late final _i1.ColumnUuid addressId;

  _i4.AddressTable? _address;

  late final _i1.ColumnSerializable<List<_i5.UserType>> types;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: UserProfile.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i4.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: UserProfile.t.addressId,
      foreignField: _i4.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userInfoId,
    name,
    gender,
    birthDate,
    rg,
    cpf,
    phone,
    email,
    addressId,
    types,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

class UserProfileInclude extends _i1.IncludeObject {
  UserProfileInclude._({
    _i2.UserInfoInclude? userInfo,
    _i4.AddressInclude? address,
  }) {
    _userInfo = userInfo;
    _address = address;
  }

  _i2.UserInfoInclude? _userInfo;

  _i4.AddressInclude? _address;

  @override
  Map<String, _i1.Include?> get includes => {
    'userInfo': _userInfo,
    'address': _address,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => UserProfile.t;
}

class UserProfileIncludeList extends _i1.IncludeList {
  UserProfileIncludeList._({
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserProfile.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => UserProfile.t;
}

class UserProfileRepository {
  const UserProfileRepository._();

  final attachRow = const UserProfileAttachRowRepository._();

  final detachRow = const UserProfileDetachRowRepository._();

  /// Returns a list of [UserProfile]s matching the given query parameters.
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
  Future<List<UserProfile>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    _i1.Transaction? transaction,
    UserProfileInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [UserProfile] matching the given query parameters.
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
  Future<UserProfile?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    _i1.Transaction? transaction,
    UserProfileInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserProfile] by its [id] or null if no such row exists.
  Future<UserProfile?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    UserProfileInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<UserProfile>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [UserProfile]s in the list and returns the inserted rows.
  ///
  /// The returned [UserProfile]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<UserProfile>> insert(
    _i1.DatabaseSession session,
    List<UserProfile> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<UserProfile>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [UserProfile] and returns the inserted row.
  ///
  /// The returned [UserProfile] will have its `id` field set.
  Future<UserProfile> insertRow(
    _i1.DatabaseSession session,
    UserProfile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserProfile>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [UserProfile]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<UserProfile>> update(
    _i1.DatabaseSession session,
    List<UserProfile> rows, {
    _i1.ColumnSelections<UserProfileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserProfile>(
      rows,
      columns: columns?.call(UserProfile.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserProfile]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserProfile> updateRow(
    _i1.DatabaseSession session,
    UserProfile row, {
    _i1.ColumnSelections<UserProfileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserProfile>(
      row,
      columns: columns?.call(UserProfile.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserProfile] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<UserProfile?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<UserProfileUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<UserProfile>(
      id,
      columnValues: columnValues(UserProfile.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserProfile]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<UserProfile>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<UserProfileUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UserProfileTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<UserProfile>(
      columnValues: columnValues(UserProfile.t.updateTable),
      where: where(UserProfile.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [UserProfile]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<UserProfile>> delete(
    _i1.DatabaseSession session,
    List<UserProfile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserProfile>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [UserProfile].
  Future<UserProfile> deleteRow(
    _i1.DatabaseSession session,
    UserProfile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserProfile>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<UserProfile>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserProfileTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserProfile>(
      where: where(UserProfile.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserProfile>(
      where: where?.call(UserProfile.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserProfile] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UserProfileTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<UserProfile>(
      where: where(UserProfile.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class UserProfileAttachRowRepository {
  const UserProfileAttachRowRepository._();

  /// Creates a relation between the given [UserProfile] and [UserInfo]
  /// by setting the [UserProfile]'s foreign key `userInfoId` to refer to the [UserInfo].
  Future<void> userInfo(
    _i1.DatabaseSession session,
    UserProfile userProfile,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $userProfile = userProfile.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<UserProfile>(
      $userProfile,
      columns: [UserProfile.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [UserProfile] and [Address]
  /// by setting the [UserProfile]'s foreign key `addressId` to refer to the [Address].
  Future<void> address(
    _i1.DatabaseSession session,
    UserProfile userProfile,
    _i4.Address address, {
    _i1.Transaction? transaction,
  }) async {
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $userProfile = userProfile.copyWith(addressId: address.id);
    await session.db.updateRow<UserProfile>(
      $userProfile,
      columns: [UserProfile.t.addressId],
      transaction: transaction,
    );
  }
}

class UserProfileDetachRowRepository {
  const UserProfileDetachRowRepository._();

  /// Detaches the relation between this [UserProfile] and the [UserInfo] set in `userInfo`
  /// by setting the [UserProfile]'s foreign key `userInfoId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> userInfo(
    _i1.DatabaseSession session,
    UserProfile userProfile, {
    _i1.Transaction? transaction,
  }) async {
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }

    var $userProfile = userProfile.copyWith(userInfoId: null);
    await session.db.updateRow<UserProfile>(
      $userProfile,
      columns: [UserProfile.t.userInfoId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [UserProfile] and the [Address] set in `address`
  /// by setting the [UserProfile]'s foreign key `addressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> address(
    _i1.DatabaseSession session,
    UserProfile userProfile, {
    _i1.Transaction? transaction,
  }) async {
    if (userProfile.id == null) {
      throw ArgumentError.notNull('userProfile.id');
    }

    var $userProfile = userProfile.copyWith(addressId: null);
    await session.db.updateRow<UserProfile>(
      $userProfile,
      columns: [UserProfile.t.addressId],
      transaction: transaction,
    );
  }
}
