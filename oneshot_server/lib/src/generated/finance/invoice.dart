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
import '../enums/invoice_status.enum.dart' as _i2;
import '../enums/currency.enum.dart' as _i3;
import '../club/club.dart' as _i4;
import '../gunsmith/gunsmith.dart' as _i5;
import '../common/user_profile.dart' as _i6;
import 'package:oneshot_server/src/generated/protocol.dart' as _i7;

abstract class Invoice
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Invoice._({
    _i1.UuidValue? id,
    required this.originModule,
    required this.direction,
    required this.status,
    required this.issueDate,
    required this.dueDate,
    required this.totalAmount,
    this.discount,
    required this.finalAmount,
    required this.currency,
    this.notes,
    bool? isRecurrent,
    this.asaasInstallmentId,
    this.asaasCustomerId,
    this.clubId,
    this.club,
    this.gunsmithId,
    this.gunsmith,
    this.userId,
    this.user,
    this.draweeId,
    this.drawee,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       isRecurrent = isRecurrent ?? false;

  factory Invoice({
    _i1.UuidValue? id,
    required String originModule,
    required String direction,
    required _i2.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _i3.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      originModule: jsonSerialization['originModule'] as String,
      direction: jsonSerialization['direction'] as String,
      status: _i2.InvoiceStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      issueDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['issueDate'],
      ),
      dueDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalAmount: (jsonSerialization['finalAmount'] as num).toDouble(),
      currency: _i3.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      notes: jsonSerialization['notes'] as String?,
      isRecurrent: jsonSerialization['isRecurrent'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['isRecurrent']),
      asaasInstallmentId: jsonSerialization['asaasInstallmentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i7.Protocol().deserialize<_i4.Club>(jsonSerialization['club']),
      gunsmithId: jsonSerialization['gunsmithId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithId'],
            ),
      gunsmith: jsonSerialization['gunsmith'] == null
          ? null
          : _i7.Protocol().deserialize<_i5.Gunsmith>(
              jsonSerialization['gunsmith'],
            ),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.UserProfile>(
              jsonSerialization['user'],
            ),
      draweeId: jsonSerialization['draweeId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['draweeId']),
      drawee: jsonSerialization['drawee'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.UserProfile>(
              jsonSerialization['drawee'],
            ),
    );
  }

  static final t = InvoiceTable();

  static const db = InvoiceRepository._();

  @override
  _i1.UuidValue id;

  String originModule;

  String direction;

  _i2.InvoiceStatus status;

  DateTime issueDate;

  DateTime dueDate;

  double totalAmount;

  double? discount;

  double finalAmount;

  _i3.Currency currency;

  String? notes;

  bool isRecurrent;

  String? asaasInstallmentId;

  String? asaasCustomerId;

  _i1.UuidValue? clubId;

  _i4.Club? club;

  _i1.UuidValue? gunsmithId;

  _i5.Gunsmith? gunsmith;

  _i1.UuidValue? userId;

  _i6.UserProfile? user;

  _i1.UuidValue? draweeId;

  _i6.UserProfile? drawee;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Invoice copyWith({
    _i1.UuidValue? id,
    String? originModule,
    String? direction,
    _i2.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    double? discount,
    double? finalAmount,
    _i3.Currency? currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Invoice',
      'id': id.toJson(),
      'originModule': originModule,
      'direction': direction,
      'status': status.toJson(),
      'issueDate': issueDate.toJson(),
      'dueDate': dueDate.toJson(),
      'totalAmount': totalAmount,
      if (discount != null) 'discount': discount,
      'finalAmount': finalAmount,
      'currency': currency.toJson(),
      if (notes != null) 'notes': notes,
      'isRecurrent': isRecurrent,
      if (asaasInstallmentId != null) 'asaasInstallmentId': asaasInstallmentId,
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Invoice',
      'id': id.toJson(),
      'originModule': originModule,
      'direction': direction,
      'status': status.toJson(),
      'issueDate': issueDate.toJson(),
      'dueDate': dueDate.toJson(),
      'totalAmount': totalAmount,
      if (discount != null) 'discount': discount,
      'finalAmount': finalAmount,
      'currency': currency.toJson(),
      if (notes != null) 'notes': notes,
      'isRecurrent': isRecurrent,
      if (asaasInstallmentId != null) 'asaasInstallmentId': asaasInstallmentId,
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJsonForProtocol(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJsonForProtocol(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJsonForProtocol(),
    };
  }

  static InvoiceInclude include({
    _i4.ClubInclude? club,
    _i5.GunsmithInclude? gunsmith,
    _i6.UserProfileInclude? user,
    _i6.UserProfileInclude? drawee,
  }) {
    return InvoiceInclude._(
      club: club,
      gunsmith: gunsmith,
      user: user,
      drawee: drawee,
    );
  }

  static InvoiceIncludeList includeList({
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    InvoiceInclude? include,
  }) {
    return InvoiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Invoice.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Invoice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceImpl extends Invoice {
  _InvoiceImpl({
    _i1.UuidValue? id,
    required String originModule,
    required String direction,
    required _i2.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _i3.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  }) : super._(
         id: id,
         originModule: originModule,
         direction: direction,
         status: status,
         issueDate: issueDate,
         dueDate: dueDate,
         totalAmount: totalAmount,
         discount: discount,
         finalAmount: finalAmount,
         currency: currency,
         notes: notes,
         isRecurrent: isRecurrent,
         asaasInstallmentId: asaasInstallmentId,
         asaasCustomerId: asaasCustomerId,
         clubId: clubId,
         club: club,
         gunsmithId: gunsmithId,
         gunsmith: gunsmith,
         userId: userId,
         user: user,
         draweeId: draweeId,
         drawee: drawee,
       );

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Invoice copyWith({
    _i1.UuidValue? id,
    String? originModule,
    String? direction,
    _i2.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    Object? discount = _Undefined,
    double? finalAmount,
    _i3.Currency? currency,
    Object? notes = _Undefined,
    bool? isRecurrent,
    Object? asaasInstallmentId = _Undefined,
    Object? asaasCustomerId = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
    Object? gunsmithId = _Undefined,
    Object? gunsmith = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? draweeId = _Undefined,
    Object? drawee = _Undefined,
  }) {
    return Invoice(
      id: id ?? this.id,
      originModule: originModule ?? this.originModule,
      direction: direction ?? this.direction,
      status: status ?? this.status,
      issueDate: issueDate ?? this.issueDate,
      dueDate: dueDate ?? this.dueDate,
      totalAmount: totalAmount ?? this.totalAmount,
      discount: discount is double? ? discount : this.discount,
      finalAmount: finalAmount ?? this.finalAmount,
      currency: currency ?? this.currency,
      notes: notes is String? ? notes : this.notes,
      isRecurrent: isRecurrent ?? this.isRecurrent,
      asaasInstallmentId: asaasInstallmentId is String?
          ? asaasInstallmentId
          : this.asaasInstallmentId,
      asaasCustomerId: asaasCustomerId is String?
          ? asaasCustomerId
          : this.asaasCustomerId,
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i4.Club? ? club : this.club?.copyWith(),
      gunsmithId: gunsmithId is _i1.UuidValue? ? gunsmithId : this.gunsmithId,
      gunsmith: gunsmith is _i5.Gunsmith?
          ? gunsmith
          : this.gunsmith?.copyWith(),
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i6.UserProfile? ? user : this.user?.copyWith(),
      draweeId: draweeId is _i1.UuidValue? ? draweeId : this.draweeId,
      drawee: drawee is _i6.UserProfile? ? drawee : this.drawee?.copyWith(),
    );
  }
}

class InvoiceUpdateTable extends _i1.UpdateTable<InvoiceTable> {
  InvoiceUpdateTable(super.table);

  _i1.ColumnValue<String, String> originModule(String value) => _i1.ColumnValue(
    table.originModule,
    value,
  );

  _i1.ColumnValue<String, String> direction(String value) => _i1.ColumnValue(
    table.direction,
    value,
  );

  _i1.ColumnValue<_i2.InvoiceStatus, _i2.InvoiceStatus> status(
    _i2.InvoiceStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> issueDate(DateTime value) =>
      _i1.ColumnValue(
        table.issueDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> dueDate(DateTime value) =>
      _i1.ColumnValue(
        table.dueDate,
        value,
      );

  _i1.ColumnValue<double, double> totalAmount(double value) => _i1.ColumnValue(
    table.totalAmount,
    value,
  );

  _i1.ColumnValue<double, double> discount(double? value) => _i1.ColumnValue(
    table.discount,
    value,
  );

  _i1.ColumnValue<double, double> finalAmount(double value) => _i1.ColumnValue(
    table.finalAmount,
    value,
  );

  _i1.ColumnValue<_i3.Currency, _i3.Currency> currency(_i3.Currency value) =>
      _i1.ColumnValue(
        table.currency,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<bool, bool> isRecurrent(bool value) => _i1.ColumnValue(
    table.isRecurrent,
    value,
  );

  _i1.ColumnValue<String, String> asaasInstallmentId(String? value) =>
      _i1.ColumnValue(
        table.asaasInstallmentId,
        value,
      );

  _i1.ColumnValue<String, String> asaasCustomerId(String? value) =>
      _i1.ColumnValue(
        table.asaasCustomerId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> clubId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.clubId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> gunsmithId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.gunsmithId,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> draweeId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.draweeId,
    value,
  );
}

class InvoiceTable extends _i1.Table<_i1.UuidValue> {
  InvoiceTable({super.tableRelation}) : super(tableName: 'invoices') {
    updateTable = InvoiceUpdateTable(this);
    originModule = _i1.ColumnString(
      'originModule',
      this,
    );
    direction = _i1.ColumnString(
      'direction',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    issueDate = _i1.ColumnDateTime(
      'issueDate',
      this,
    );
    dueDate = _i1.ColumnDateTime(
      'dueDate',
      this,
    );
    totalAmount = _i1.ColumnDouble(
      'totalAmount',
      this,
    );
    discount = _i1.ColumnDouble(
      'discount',
      this,
    );
    finalAmount = _i1.ColumnDouble(
      'finalAmount',
      this,
    );
    currency = _i1.ColumnEnum(
      'currency',
      this,
      _i1.EnumSerialization.byName,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    isRecurrent = _i1.ColumnBool(
      'isRecurrent',
      this,
      hasDefault: true,
    );
    asaasInstallmentId = _i1.ColumnString(
      'asaasInstallmentId',
      this,
    );
    asaasCustomerId = _i1.ColumnString(
      'asaasCustomerId',
      this,
    );
    clubId = _i1.ColumnUuid(
      'clubId',
      this,
    );
    gunsmithId = _i1.ColumnUuid(
      'gunsmithId',
      this,
    );
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    draweeId = _i1.ColumnUuid(
      'draweeId',
      this,
    );
  }

  late final InvoiceUpdateTable updateTable;

  late final _i1.ColumnString originModule;

  late final _i1.ColumnString direction;

  late final _i1.ColumnEnum<_i2.InvoiceStatus> status;

  late final _i1.ColumnDateTime issueDate;

  late final _i1.ColumnDateTime dueDate;

  late final _i1.ColumnDouble totalAmount;

  late final _i1.ColumnDouble discount;

  late final _i1.ColumnDouble finalAmount;

  late final _i1.ColumnEnum<_i3.Currency> currency;

  late final _i1.ColumnString notes;

  late final _i1.ColumnBool isRecurrent;

  late final _i1.ColumnString asaasInstallmentId;

  late final _i1.ColumnString asaasCustomerId;

  late final _i1.ColumnUuid clubId;

  _i4.ClubTable? _club;

  late final _i1.ColumnUuid gunsmithId;

  _i5.GunsmithTable? _gunsmith;

  late final _i1.ColumnUuid userId;

  _i6.UserProfileTable? _user;

  late final _i1.ColumnUuid draweeId;

  _i6.UserProfileTable? _drawee;

  _i4.ClubTable get club {
    if (_club != null) return _club!;
    _club = _i1.createRelationTable(
      relationFieldName: 'club',
      field: Invoice.t.clubId,
      foreignField: _i4.Club.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ClubTable(tableRelation: foreignTableRelation),
    );
    return _club!;
  }

  _i5.GunsmithTable get gunsmith {
    if (_gunsmith != null) return _gunsmith!;
    _gunsmith = _i1.createRelationTable(
      relationFieldName: 'gunsmith',
      field: Invoice.t.gunsmithId,
      foreignField: _i5.Gunsmith.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.GunsmithTable(tableRelation: foreignTableRelation),
    );
    return _gunsmith!;
  }

  _i6.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Invoice.t.userId,
      foreignField: _i6.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i6.UserProfileTable get drawee {
    if (_drawee != null) return _drawee!;
    _drawee = _i1.createRelationTable(
      relationFieldName: 'drawee',
      field: Invoice.t.draweeId,
      foreignField: _i6.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _drawee!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    originModule,
    direction,
    status,
    issueDate,
    dueDate,
    totalAmount,
    discount,
    finalAmount,
    currency,
    notes,
    isRecurrent,
    asaasInstallmentId,
    asaasCustomerId,
    clubId,
    gunsmithId,
    userId,
    draweeId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'club') {
      return club;
    }
    if (relationField == 'gunsmith') {
      return gunsmith;
    }
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'drawee') {
      return drawee;
    }
    return null;
  }
}

class InvoiceInclude extends _i1.IncludeObject {
  InvoiceInclude._({
    _i4.ClubInclude? club,
    _i5.GunsmithInclude? gunsmith,
    _i6.UserProfileInclude? user,
    _i6.UserProfileInclude? drawee,
  }) {
    _club = club;
    _gunsmith = gunsmith;
    _user = user;
    _drawee = drawee;
  }

  _i4.ClubInclude? _club;

  _i5.GunsmithInclude? _gunsmith;

  _i6.UserProfileInclude? _user;

  _i6.UserProfileInclude? _drawee;

  @override
  Map<String, _i1.Include?> get includes => {
    'club': _club,
    'gunsmith': _gunsmith,
    'user': _user,
    'drawee': _drawee,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Invoice.t;
}

class InvoiceIncludeList extends _i1.IncludeList {
  InvoiceIncludeList._({
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Invoice.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Invoice.t;
}

class InvoiceRepository {
  const InvoiceRepository._();

  final attachRow = const InvoiceAttachRowRepository._();

  final detachRow = const InvoiceDetachRowRepository._();

  /// Returns a list of [Invoice]s matching the given query parameters.
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
  Future<List<Invoice>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Invoice] matching the given query parameters.
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
  Future<Invoice?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    _i1.Transaction? transaction,
    InvoiceInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Invoice] by its [id] or null if no such row exists.
  Future<Invoice?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    InvoiceInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Invoice>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Invoice]s in the list and returns the inserted rows.
  ///
  /// The returned [Invoice]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Invoice>> insert(
    _i1.DatabaseSession session,
    List<Invoice> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Invoice>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Invoice] and returns the inserted row.
  ///
  /// The returned [Invoice] will have its `id` field set.
  Future<Invoice> insertRow(
    _i1.DatabaseSession session,
    Invoice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Invoice>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Invoice]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Invoice>> update(
    _i1.DatabaseSession session,
    List<Invoice> rows, {
    _i1.ColumnSelections<InvoiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Invoice>(
      rows,
      columns: columns?.call(Invoice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Invoice]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Invoice> updateRow(
    _i1.DatabaseSession session,
    Invoice row, {
    _i1.ColumnSelections<InvoiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Invoice>(
      row,
      columns: columns?.call(Invoice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Invoice] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Invoice?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<InvoiceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Invoice>(
      id,
      columnValues: columnValues(Invoice.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Invoice]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Invoice>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<InvoiceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<InvoiceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InvoiceTable>? orderBy,
    _i1.OrderByListBuilder<InvoiceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Invoice>(
      columnValues: columnValues(Invoice.t.updateTable),
      where: where(Invoice.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Invoice]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Invoice>> delete(
    _i1.DatabaseSession session,
    List<Invoice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Invoice>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Invoice].
  Future<Invoice> deleteRow(
    _i1.DatabaseSession session,
    Invoice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Invoice>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Invoice>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<InvoiceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Invoice>(
      where: where(Invoice.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Invoice>(
      where: where?.call(Invoice.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Invoice] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<InvoiceTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Invoice>(
      where: where(Invoice.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class InvoiceAttachRowRepository {
  const InvoiceAttachRowRepository._();

  /// Creates a relation between the given [Invoice] and [Club]
  /// by setting the [Invoice]'s foreign key `clubId` to refer to the [Club].
  Future<void> club(
    _i1.DatabaseSession session,
    Invoice invoice,
    _i4.Club club, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (club.id == null) {
      throw ArgumentError.notNull('club.id');
    }

    var $invoice = invoice.copyWith(clubId: club.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.clubId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Invoice] and [Gunsmith]
  /// by setting the [Invoice]'s foreign key `gunsmithId` to refer to the [Gunsmith].
  Future<void> gunsmith(
    _i1.DatabaseSession session,
    Invoice invoice,
    _i5.Gunsmith gunsmith, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (gunsmith.id == null) {
      throw ArgumentError.notNull('gunsmith.id');
    }

    var $invoice = invoice.copyWith(gunsmithId: gunsmith.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.gunsmithId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Invoice] and [UserProfile]
  /// by setting the [Invoice]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _i1.DatabaseSession session,
    Invoice invoice,
    _i6.UserProfile user, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $invoice = invoice.copyWith(userId: user.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Invoice] and [UserProfile]
  /// by setting the [Invoice]'s foreign key `draweeId` to refer to the [UserProfile].
  Future<void> drawee(
    _i1.DatabaseSession session,
    Invoice invoice,
    _i6.UserProfile drawee, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (drawee.id == null) {
      throw ArgumentError.notNull('drawee.id');
    }

    var $invoice = invoice.copyWith(draweeId: drawee.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.draweeId],
      transaction: transaction,
    );
  }
}

class InvoiceDetachRowRepository {
  const InvoiceDetachRowRepository._();

  /// Detaches the relation between this [Invoice] and the [Club] set in `club`
  /// by setting the [Invoice]'s foreign key `clubId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> club(
    _i1.DatabaseSession session,
    Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(clubId: null);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.clubId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Invoice] and the [Gunsmith] set in `gunsmith`
  /// by setting the [Invoice]'s foreign key `gunsmithId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> gunsmith(
    _i1.DatabaseSession session,
    Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(gunsmithId: null);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.gunsmithId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Invoice] and the [UserProfile] set in `user`
  /// by setting the [Invoice]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.DatabaseSession session,
    Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(userId: null);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.userId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Invoice] and the [UserProfile] set in `drawee`
  /// by setting the [Invoice]'s foreign key `draweeId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> drawee(
    _i1.DatabaseSession session,
    Invoice invoice, {
    _i1.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(draweeId: null);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.draweeId],
      transaction: transaction,
    );
  }
}
