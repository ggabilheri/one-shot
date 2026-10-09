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
import '../company/company.dart' as _iocy1ifk;
import '../enums/currency.enum.dart' as _isdw5wvy;
import '../enums/invoice_status.enum.dart' as _ibd6zzmc;
import '../gunsmith/gunsmith.dart' as _inzvshfq;

abstract class Invoice
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Invoice._({
    _is.UuidValue? id,
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
    this.companyId,
    this.company,
    this.gunsmithId,
    this.gunsmith,
    this.userId,
    this.user,
    this.draweeId,
    this.drawee,
  }) : id = id ?? const _is.Uuid().v4obj(),
       isRecurrent = isRecurrent ?? false;

  factory Invoice({
    _is.UuidValue? id,
    required String originModule,
    required String direction,
    required _ibd6zzmc.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _isdw5wvy.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      originModule: jsonSerialization['originModule'] as String,
      direction: jsonSerialization['direction'] as String,
      status: _ibd6zzmc.InvoiceStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      issueDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['issueDate'],
      ),
      dueDate: _is.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalAmount: (jsonSerialization['finalAmount'] as num).toDouble(),
      currency: _isdw5wvy.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      notes: jsonSerialization['notes'] as String?,
      isRecurrent: jsonSerialization['isRecurrent'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isRecurrent']),
      asaasInstallmentId: jsonSerialization['asaasInstallmentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
      gunsmithId: jsonSerialization['gunsmithId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithId'],
            ),
      gunsmith: jsonSerialization['gunsmith'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_inzvshfq.Gunsmith>(
              jsonSerialization['gunsmith'],
            ),
      userId: jsonSerialization['userId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      draweeId: jsonSerialization['draweeId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['draweeId']),
      drawee: jsonSerialization['drawee'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['drawee'],
            ),
    );
  }

  static final t = InvoiceTable();

  static const db = InvoiceRepository._();

  @override
  _is.UuidValue id;

  String originModule;

  String direction;

  _ibd6zzmc.InvoiceStatus status;

  DateTime issueDate;

  DateTime dueDate;

  double totalAmount;

  double? discount;

  double finalAmount;

  _isdw5wvy.Currency currency;

  String? notes;

  bool isRecurrent;

  String? asaasInstallmentId;

  String? asaasCustomerId;

  _is.UuidValue? companyId;

  _iocy1ifk.Company? company;

  _is.UuidValue? gunsmithId;

  _inzvshfq.Gunsmith? gunsmith;

  _is.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _is.UuidValue? draweeId;

  _izifjpv2.UserProfile? drawee;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Invoice copyWith({
    _is.UuidValue? id,
    String? originModule,
    String? direction,
    _ibd6zzmc.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    double? discount,
    double? finalAmount,
    _isdw5wvy.Currency? currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
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
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
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
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJsonForProtocol(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJsonForProtocol(),
    };
  }

  static InvoiceInclude include({
    _iocy1ifk.CompanyInclude? company,
    _inzvshfq.GunsmithInclude? gunsmith,
    _izifjpv2.UserProfileInclude? user,
    _izifjpv2.UserProfileInclude? drawee,
  }) {
    return InvoiceInclude._(
      company: company,
      gunsmith: gunsmith,
      user: user,
      drawee: drawee,
    );
  }

  static InvoiceIncludeList includeList({
    _is.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    InvoiceInclude? include,
  }) {
    return InvoiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceImpl extends Invoice {
  _InvoiceImpl({
    _is.UuidValue? id,
    required String originModule,
    required String direction,
    required _ibd6zzmc.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _isdw5wvy.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _is.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _is.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
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
         companyId: companyId,
         company: company,
         gunsmithId: gunsmithId,
         gunsmith: gunsmith,
         userId: userId,
         user: user,
         draweeId: draweeId,
         drawee: drawee,
       );

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Invoice copyWith({
    _is.UuidValue? id,
    String? originModule,
    String? direction,
    _ibd6zzmc.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    Object? discount = _Undefined,
    double? finalAmount,
    _isdw5wvy.Currency? currency,
    Object? notes = _Undefined,
    bool? isRecurrent,
    Object? asaasInstallmentId = _Undefined,
    Object? asaasCustomerId = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
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
      companyId: companyId is _is.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      gunsmithId: gunsmithId is _is.UuidValue? ? gunsmithId : this.gunsmithId,
      gunsmith: gunsmith is _inzvshfq.Gunsmith?
          ? gunsmith
          : this.gunsmith?.copyWith(),
      userId: userId is _is.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      draweeId: draweeId is _is.UuidValue? ? draweeId : this.draweeId,
      drawee: drawee is _izifjpv2.UserProfile?
          ? drawee
          : this.drawee?.copyWith(),
    );
  }
}

class InvoiceUpdateTable extends _is.UpdateTable<InvoiceTable> {
  InvoiceUpdateTable(super.table);

  _is.ColumnValue<String, String> originModule(String value) =>
      _is.ColumnValue(table.originModule, value);

  _is.ColumnValue<String, String> direction(String value) =>
      _is.ColumnValue(table.direction, value);

  _is.ColumnValue<_ibd6zzmc.InvoiceStatus, _ibd6zzmc.InvoiceStatus> status(
    _ibd6zzmc.InvoiceStatus value,
  ) => _is.ColumnValue(table.status, value);

  _is.ColumnValue<DateTime, DateTime> issueDate(DateTime value) =>
      _is.ColumnValue(table.issueDate, value);

  _is.ColumnValue<DateTime, DateTime> dueDate(DateTime value) =>
      _is.ColumnValue(table.dueDate, value);

  _is.ColumnValue<double, double> totalAmount(double value) =>
      _is.ColumnValue(table.totalAmount, value);

  _is.ColumnValue<double, double> discount(double? value) =>
      _is.ColumnValue(table.discount, value);

  _is.ColumnValue<double, double> finalAmount(double value) =>
      _is.ColumnValue(table.finalAmount, value);

  _is.ColumnValue<_isdw5wvy.Currency, _isdw5wvy.Currency> currency(
    _isdw5wvy.Currency value,
  ) => _is.ColumnValue(table.currency, value);

  _is.ColumnValue<String, String> notes(String? value) =>
      _is.ColumnValue(table.notes, value);

  _is.ColumnValue<bool, bool> isRecurrent(bool value) =>
      _is.ColumnValue(table.isRecurrent, value);

  _is.ColumnValue<String, String> asaasInstallmentId(String? value) =>
      _is.ColumnValue(table.asaasInstallmentId, value);

  _is.ColumnValue<String, String> asaasCustomerId(String? value) =>
      _is.ColumnValue(table.asaasCustomerId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> companyId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.companyId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> gunsmithId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.gunsmithId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue? value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> draweeId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.draweeId, value);
}

class InvoiceTable extends _is.Table<_is.UuidValue> {
  InvoiceTable({super.tableRelation}) : super(tableName: 'invoices') {
    updateTable = InvoiceUpdateTable(this);
    originModule = _is.ColumnString('originModule', this);
    direction = _is.ColumnString('direction', this);
    status = _is.ColumnEnum('status', this, _is.EnumSerialization.byName);
    issueDate = _is.ColumnDateTime('issueDate', this);
    dueDate = _is.ColumnDateTime('dueDate', this);
    totalAmount = _is.ColumnDouble('totalAmount', this);
    discount = _is.ColumnDouble('discount', this);
    finalAmount = _is.ColumnDouble('finalAmount', this);
    currency = _is.ColumnEnum('currency', this, _is.EnumSerialization.byName);
    notes = _is.ColumnString('notes', this);
    isRecurrent = _is.ColumnBool('isRecurrent', this, hasDefault: true);
    asaasInstallmentId = _is.ColumnString('asaasInstallmentId', this);
    asaasCustomerId = _is.ColumnString('asaasCustomerId', this);
    companyId = _is.ColumnUuid('companyId', this);
    gunsmithId = _is.ColumnUuid('gunsmithId', this);
    userId = _is.ColumnUuid('userId', this);
    draweeId = _is.ColumnUuid('draweeId', this);
  }

  late final InvoiceUpdateTable updateTable;

  late final _is.ColumnString originModule;

  late final _is.ColumnString direction;

  late final _is.ColumnEnum<_ibd6zzmc.InvoiceStatus> status;

  late final _is.ColumnDateTime issueDate;

  late final _is.ColumnDateTime dueDate;

  late final _is.ColumnDouble totalAmount;

  late final _is.ColumnDouble discount;

  late final _is.ColumnDouble finalAmount;

  late final _is.ColumnEnum<_isdw5wvy.Currency> currency;

  late final _is.ColumnString notes;

  late final _is.ColumnBool isRecurrent;

  late final _is.ColumnString asaasInstallmentId;

  late final _is.ColumnString asaasCustomerId;

  late final _is.ColumnUuid companyId;

  _iocy1ifk.CompanyTable? _company;

  late final _is.ColumnUuid gunsmithId;

  _inzvshfq.GunsmithTable? _gunsmith;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnUuid draweeId;

  _izifjpv2.UserProfileTable? _drawee;

  _iocy1ifk.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _is.createRelationTable(
      relationFieldName: 'company',
      field: Invoice.t.companyId,
      foreignField: _iocy1ifk.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _iocy1ifk.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  _inzvshfq.GunsmithTable get gunsmith {
    if (_gunsmith != null) return _gunsmith!;
    _gunsmith = _is.createRelationTable(
      relationFieldName: 'gunsmith',
      field: Invoice.t.gunsmithId,
      foreignField: _inzvshfq.Gunsmith.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _inzvshfq.GunsmithTable(tableRelation: foreignTableRelation),
    );
    return _gunsmith!;
  }

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: Invoice.t.userId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _izifjpv2.UserProfileTable get drawee {
    if (_drawee != null) return _drawee!;
    _drawee = _is.createRelationTable(
      relationFieldName: 'drawee',
      field: Invoice.t.draweeId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _drawee!;
  }

  @override
  List<_is.Column> get columns => [
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
    companyId,
    gunsmithId,
    userId,
    draweeId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
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

class InvoiceInclude extends _is.IncludeObject {
  InvoiceInclude._({
    _iocy1ifk.CompanyInclude? company,
    _inzvshfq.GunsmithInclude? gunsmith,
    _izifjpv2.UserProfileInclude? user,
    _izifjpv2.UserProfileInclude? drawee,
  }) {
    _company = company;
    _gunsmith = gunsmith;
    _user = user;
    _drawee = drawee;
  }

  _iocy1ifk.CompanyInclude? _company;

  _inzvshfq.GunsmithInclude? _gunsmith;

  _izifjpv2.UserProfileInclude? _user;

  _izifjpv2.UserProfileInclude? _drawee;

  @override
  Map<String, _is.Include?> get includes => {
    'company': _company,
    'gunsmith': _gunsmith,
    'user': _user,
    'drawee': _drawee,
  };

  @override
  _is.Table<_is.UuidValue> get table => Invoice.t;
}

class InvoiceIncludeList extends _is.IncludeList {
  InvoiceIncludeList._({
    _is.WhereExpressionBuilder<InvoiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Invoice.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Invoice.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    _is.Transaction? transaction,
    InvoiceInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceTable>? where,
    int? offset,
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    _is.Transaction? transaction,
    InvoiceInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Invoice>(
      where: where?.call(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Invoice] by its [id] or null if no such row exists.
  Future<Invoice?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    InvoiceInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Invoice>> insert(
    _is.DatabaseSession session,
    List<Invoice> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Invoice>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Invoice] and returns the inserted row.
  ///
  /// The returned [Invoice] will have its `id` field set.
  Future<Invoice> insertRow(
    _is.DatabaseSession session,
    Invoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Invoice>(row, transaction: transaction);
  }

  /// Upserts all [Invoice]s in the list and returns the resulting rows.
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
  /// The returned [Invoice]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Invoice>> upsert(
    _is.DatabaseSession session,
    List<Invoice> rows, {
    required _is.ColumnSelections<InvoiceTable> conflictColumns,
    _is.ColumnSelections<InvoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<InvoiceTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Invoice>(
      rows,
      conflictColumns: conflictColumns(Invoice.t),
      updateColumns: updateColumns?.call(Invoice.t),
      updateWhere: updateWhere?.call(Invoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Invoice] and returns the resulting row.
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
  /// The returned [Invoice] will have its `id` field set.
  Future<Invoice?> upsertRow(
    _is.DatabaseSession session,
    Invoice row, {
    required _is.ColumnSelections<InvoiceTable> conflictColumns,
    _is.ColumnSelections<InvoiceTable>? updateColumns,
    _is.WhereExpressionBuilder<InvoiceTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Invoice>(
      row,
      conflictColumns: conflictColumns(Invoice.t),
      updateColumns: updateColumns?.call(Invoice.t),
      updateWhere: updateWhere?.call(Invoice.t),
      transaction: transaction,
    );
  }

  /// Updates all [Invoice]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Invoice>> update(
    _is.DatabaseSession session,
    List<Invoice> rows, {
    _is.ColumnSelections<InvoiceTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Invoice>(
      rows,
      columns: columns?.call(Invoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Invoice]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Invoice> updateRow(
    _is.DatabaseSession session,
    Invoice row, {
    _is.ColumnSelections<InvoiceTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<InvoiceUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Invoice>(
      id,
      columnValues: columnValues(Invoice.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Invoice]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Invoice>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<InvoiceUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<InvoiceTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Invoice>(
      columnValues: columnValues(Invoice.t.updateTable),
      where: where(Invoice.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Invoice]s in the list and returns the deleted rows.
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
  Future<List<Invoice>> delete(
    _is.DatabaseSession session,
    List<Invoice> rows, {
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Invoice>(
      rows,
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Invoice].
  Future<Invoice> deleteRow(
    _is.DatabaseSession session,
    Invoice row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Invoice>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Invoice>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<InvoiceTable> where,
    _is.OrderByBuilder<InvoiceTable>? orderBy,
    _is.OrderByListBuilder<InvoiceTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Invoice>(
      where: where(Invoice.t),
      orderBy: orderBy?.call(Invoice.t),
      orderByList: orderByList?.call(Invoice.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<InvoiceTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Invoice>(
      where: where?.call(Invoice.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Invoice] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<InvoiceTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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

  /// Creates a relation between the given [Invoice] and [Company]
  /// by setting the [Invoice]'s foreign key `companyId` to refer to the [Company].
  Future<void> company(
    _is.DatabaseSession session,
    Invoice invoice,
    _iocy1ifk.Company company, {
    _is.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $invoice = invoice.copyWith(companyId: company.id);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.companyId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Invoice] and [Gunsmith]
  /// by setting the [Invoice]'s foreign key `gunsmithId` to refer to the [Gunsmith].
  Future<void> gunsmith(
    _is.DatabaseSession session,
    Invoice invoice,
    _inzvshfq.Gunsmith gunsmith, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Invoice invoice,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Invoice invoice,
    _izifjpv2.UserProfile drawee, {
    _is.Transaction? transaction,
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

  /// Detaches the relation between this [Invoice] and the [Company] set in `company`
  /// by setting the [Invoice]'s foreign key `companyId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> company(
    _is.DatabaseSession session,
    Invoice invoice, {
    _is.Transaction? transaction,
  }) async {
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $invoice = invoice.copyWith(companyId: null);
    await session.db.updateRow<Invoice>(
      $invoice,
      columns: [Invoice.t.companyId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Invoice] and the [Gunsmith] set in `gunsmith`
  /// by setting the [Invoice]'s foreign key `gunsmithId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> gunsmith(
    _is.DatabaseSession session,
    Invoice invoice, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Invoice invoice, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Invoice invoice, {
    _is.Transaction? transaction,
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
