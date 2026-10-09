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
import '../enums/gender.enum.dart' as _ix60f0mc;
import '../enums/user_status.enum.dart' as _ijq1b3b6;
import '../enums/user_type.enum.dart' as _i828q2d1;

abstract class UserProfile
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  UserProfile._({
    _is.UuidValue? id,
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
    required this.status,
    this.asaasCustomerId,
    this.asaasOnboardingFailureReason,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory UserProfile({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required String name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    required _ijq1b3b6.UserStatus status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userInfoId: jsonSerialization['userInfoId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i1n3uhu0.UserInfo>(
              jsonSerialization['userInfo'],
            ),
      name: jsonSerialization['name'] as String,
      gender: jsonSerialization['gender'] == null
          ? null
          : _ix60f0mc.Gender.fromJson((jsonSerialization['gender'] as String)),
      birthDate: jsonSerialization['birthDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['birthDate']),
      rg: jsonSerialization['rg'] as String?,
      cpf: jsonSerialization['cpf'] as String?,
      phone: jsonSerialization['phone'] as String?,
      email: jsonSerialization['email'] as String?,
      addressId: jsonSerialization['addressId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['addressId']),
      address: jsonSerialization['address'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iy1vkl2d.Address>(
              jsonSerialization['address'],
            ),
      types: jsonSerialization['types'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<List<_i828q2d1.UserType>>(
              jsonSerialization['types'],
            ),
      status: _ijq1b3b6.UserStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      asaasOnboardingFailureReason:
          jsonSerialization['asaasOnboardingFailureReason'] as String?,
    );
  }

  static final t = UserProfileTable();

  static const db = UserProfileRepository._();

  @override
  _is.UuidValue id;

  int? userInfoId;

  _i1n3uhu0.UserInfo? userInfo;

  String name;

  _ix60f0mc.Gender? gender;

  DateTime? birthDate;

  String? rg;

  String? cpf;

  String? phone;

  String? email;

  _is.UuidValue? addressId;

  _iy1vkl2d.Address? address;

  List<_i828q2d1.UserType>? types;

  _ijq1b3b6.UserStatus status;

  String? asaasCustomerId;

  String? asaasOnboardingFailureReason;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  UserProfile copyWith({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    String? name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    _ijq1b3b6.UserStatus? status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
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
      'status': status.toJson(),
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
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
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (types != null) 'types': types?.toJson(valueToJson: (v) => v.toJson()),
      'status': status.toJson(),
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasOnboardingFailureReason != null)
        'asaasOnboardingFailureReason': asaasOnboardingFailureReason,
    };
  }

  static UserProfileInclude include({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _iy1vkl2d.AddressInclude? address,
  }) {
    return UserProfileInclude._(userInfo: userInfo, address: address);
  }

  static UserProfileIncludeList includeList({
    _is.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    UserProfileInclude? include,
  }) {
    return UserProfileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    _is.UuidValue? id,
    int? userInfoId,
    _i1n3uhu0.UserInfo? userInfo,
    required String name,
    _ix60f0mc.Gender? gender,
    DateTime? birthDate,
    String? rg,
    String? cpf,
    String? phone,
    String? email,
    _is.UuidValue? addressId,
    _iy1vkl2d.Address? address,
    List<_i828q2d1.UserType>? types,
    required _ijq1b3b6.UserStatus status,
    String? asaasCustomerId,
    String? asaasOnboardingFailureReason,
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
         status: status,
         asaasCustomerId: asaasCustomerId,
         asaasOnboardingFailureReason: asaasOnboardingFailureReason,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  UserProfile copyWith({
    _is.UuidValue? id,
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
    _ijq1b3b6.UserStatus? status,
    Object? asaasCustomerId = _Undefined,
    Object? asaasOnboardingFailureReason = _Undefined,
  }) {
    return UserProfile(
      id: id ?? this.id,
      userInfoId: userInfoId is int? ? userInfoId : this.userInfoId,
      userInfo: userInfo is _i1n3uhu0.UserInfo?
          ? userInfo
          : this.userInfo?.copyWith(),
      name: name ?? this.name,
      gender: gender is _ix60f0mc.Gender? ? gender : this.gender,
      birthDate: birthDate is DateTime? ? birthDate : this.birthDate,
      rg: rg is String? ? rg : this.rg,
      cpf: cpf is String? ? cpf : this.cpf,
      phone: phone is String? ? phone : this.phone,
      email: email is String? ? email : this.email,
      addressId: addressId is _is.UuidValue? ? addressId : this.addressId,
      address: address is _iy1vkl2d.Address?
          ? address
          : this.address?.copyWith(),
      types: types is List<_i828q2d1.UserType>?
          ? types
          : this.types?.map((e0) => e0).toList(),
      status: status ?? this.status,
      asaasCustomerId: asaasCustomerId is String?
          ? asaasCustomerId
          : this.asaasCustomerId,
      asaasOnboardingFailureReason: asaasOnboardingFailureReason is String?
          ? asaasOnboardingFailureReason
          : this.asaasOnboardingFailureReason,
    );
  }
}

class UserProfileUpdateTable extends _is.UpdateTable<UserProfileTable> {
  UserProfileUpdateTable(super.table);

  _is.ColumnValue<int, int> userInfoId(int? value) =>
      _is.ColumnValue(table.userInfoId, value);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<_ix60f0mc.Gender, _ix60f0mc.Gender> gender(
    _ix60f0mc.Gender? value,
  ) => _is.ColumnValue(table.gender, value);

  _is.ColumnValue<DateTime, DateTime> birthDate(DateTime? value) =>
      _is.ColumnValue(table.birthDate, value);

  _is.ColumnValue<String, String> rg(String? value) =>
      _is.ColumnValue(table.rg, value);

  _is.ColumnValue<String, String> cpf(String? value) =>
      _is.ColumnValue(table.cpf, value);

  _is.ColumnValue<String, String> phone(String? value) =>
      _is.ColumnValue(table.phone, value);

  _is.ColumnValue<String, String> email(String? value) =>
      _is.ColumnValue(table.email, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> addressId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.addressId, value);

  _is.ColumnValue<List<_i828q2d1.UserType>, List<_i828q2d1.UserType>> types(
    List<_i828q2d1.UserType>? value,
  ) => _is.ColumnValue(table.types, value);

  _is.ColumnValue<_ijq1b3b6.UserStatus, _ijq1b3b6.UserStatus> status(
    _ijq1b3b6.UserStatus value,
  ) => _is.ColumnValue(table.status, value);

  _is.ColumnValue<String, String> asaasCustomerId(String? value) =>
      _is.ColumnValue(table.asaasCustomerId, value);

  _is.ColumnValue<String, String> asaasOnboardingFailureReason(String? value) =>
      _is.ColumnValue(table.asaasOnboardingFailureReason, value);
}

class UserProfileTable extends _is.Table<_is.UuidValue> {
  UserProfileTable({super.tableRelation}) : super(tableName: 'user_profile') {
    updateTable = UserProfileUpdateTable(this);
    userInfoId = _is.ColumnInt('userInfoId', this);
    name = _is.ColumnString('name', this);
    gender = _is.ColumnEnum('gender', this, _is.EnumSerialization.byName);
    birthDate = _is.ColumnDateTime('birthDate', this);
    rg = _is.ColumnString('rg', this);
    cpf = _is.ColumnString('cpf', this);
    phone = _is.ColumnString('phone', this);
    email = _is.ColumnString('email', this);
    addressId = _is.ColumnUuid('addressId', this);
    types = _is.ColumnSerializable<List<_i828q2d1.UserType>>('types', this);
    status = _is.ColumnEnum('status', this, _is.EnumSerialization.byName);
    asaasCustomerId = _is.ColumnString('asaasCustomerId', this);
    asaasOnboardingFailureReason = _is.ColumnString(
      'asaasOnboardingFailureReason',
      this,
    );
  }

  late final UserProfileUpdateTable updateTable;

  late final _is.ColumnInt userInfoId;

  _i1n3uhu0.UserInfoTable? _userInfo;

  late final _is.ColumnString name;

  late final _is.ColumnEnum<_ix60f0mc.Gender> gender;

  late final _is.ColumnDateTime birthDate;

  late final _is.ColumnString rg;

  late final _is.ColumnString cpf;

  late final _is.ColumnString phone;

  late final _is.ColumnString email;

  late final _is.ColumnUuid addressId;

  _iy1vkl2d.AddressTable? _address;

  late final _is.ColumnSerializable<List<_i828q2d1.UserType>> types;

  late final _is.ColumnEnum<_ijq1b3b6.UserStatus> status;

  late final _is.ColumnString asaasCustomerId;

  late final _is.ColumnString asaasOnboardingFailureReason;

  _i1n3uhu0.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _is.createRelationTable(
      relationFieldName: 'userInfo',
      field: UserProfile.t.userInfoId,
      foreignField: _i1n3uhu0.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i1n3uhu0.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _iy1vkl2d.AddressTable get address {
    if (_address != null) return _address!;
    _address = _is.createRelationTable(
      relationFieldName: 'address',
      field: UserProfile.t.addressId,
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
    status,
    asaasCustomerId,
    asaasOnboardingFailureReason,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

class UserProfileInclude extends _is.IncludeObject {
  UserProfileInclude._({
    _i1n3uhu0.UserInfoInclude? userInfo,
    _iy1vkl2d.AddressInclude? address,
  }) {
    _userInfo = userInfo;
    _address = address;
  }

  _i1n3uhu0.UserInfoInclude? _userInfo;

  _iy1vkl2d.AddressInclude? _address;

  @override
  Map<String, _is.Include?> get includes => {
    'userInfo': _userInfo,
    'address': _address,
  };

  @override
  _is.Table<_is.UuidValue> get table => UserProfile.t;
}

class UserProfileIncludeList extends _is.IncludeList {
  UserProfileIncludeList._({
    _is.WhereExpressionBuilder<UserProfileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserProfile.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => UserProfile.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    _is.Transaction? transaction,
    UserProfileInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserProfileTable>? where,
    int? offset,
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    _is.Transaction? transaction,
    UserProfileInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserProfile] by its [id] or null if no such row exists.
  Future<UserProfile?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    UserProfileInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserProfile>> insert(
    _is.DatabaseSession session,
    List<UserProfile> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<UserProfile>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [UserProfile] and returns the inserted row.
  ///
  /// The returned [UserProfile] will have its `id` field set.
  Future<UserProfile> insertRow(
    _is.DatabaseSession session,
    UserProfile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserProfile>(row, transaction: transaction);
  }

  /// Upserts all [UserProfile]s in the list and returns the resulting rows.
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
  /// The returned [UserProfile]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserProfile>> upsert(
    _is.DatabaseSession session,
    List<UserProfile> rows, {
    required _is.ColumnSelections<UserProfileTable> conflictColumns,
    _is.ColumnSelections<UserProfileTable>? updateColumns,
    _is.WhereExpressionBuilder<UserProfileTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<UserProfile>(
      rows,
      conflictColumns: conflictColumns(UserProfile.t),
      updateColumns: updateColumns?.call(UserProfile.t),
      updateWhere: updateWhere?.call(UserProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [UserProfile] and returns the resulting row.
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
  /// The returned [UserProfile] will have its `id` field set.
  Future<UserProfile?> upsertRow(
    _is.DatabaseSession session,
    UserProfile row, {
    required _is.ColumnSelections<UserProfileTable> conflictColumns,
    _is.ColumnSelections<UserProfileTable>? updateColumns,
    _is.WhereExpressionBuilder<UserProfileTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<UserProfile>(
      row,
      conflictColumns: conflictColumns(UserProfile.t),
      updateColumns: updateColumns?.call(UserProfile.t),
      updateWhere: updateWhere?.call(UserProfile.t),
      transaction: transaction,
    );
  }

  /// Updates all [UserProfile]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserProfile>> update(
    _is.DatabaseSession session,
    List<UserProfile> rows, {
    _is.ColumnSelections<UserProfileTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<UserProfile>(
      rows,
      columns: columns?.call(UserProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [UserProfile]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserProfile> updateRow(
    _is.DatabaseSession session,
    UserProfile row, {
    _is.ColumnSelections<UserProfileTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<UserProfileUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<UserProfile>(
      id,
      columnValues: columnValues(UserProfile.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserProfile]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserProfile>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<UserProfileUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<UserProfileTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<UserProfile>(
      columnValues: columnValues(UserProfile.t.updateTable),
      where: where(UserProfile.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [UserProfile]s in the list and returns the deleted rows.
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
  Future<List<UserProfile>> delete(
    _is.DatabaseSession session,
    List<UserProfile> rows, {
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<UserProfile>(
      rows,
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [UserProfile].
  Future<UserProfile> deleteRow(
    _is.DatabaseSession session,
    UserProfile row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserProfile>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserProfile>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserProfileTable> where,
    _is.OrderByBuilder<UserProfileTable>? orderBy,
    _is.OrderByListBuilder<UserProfileTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<UserProfile>(
      where: where(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<UserProfile>(
      where: where?.call(UserProfile.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserProfile] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserProfileTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    UserProfile userProfile,
    _i1n3uhu0.UserInfo userInfo, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    UserProfile userProfile,
    _iy1vkl2d.Address address, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    UserProfile userProfile, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    UserProfile userProfile, {
    _is.Transaction? transaction,
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
