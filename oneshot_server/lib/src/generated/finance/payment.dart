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
import '../enums/currency.enum.dart' as _isdw5wvy;
import '../enums/payment_method.enum.dart' as _iqyvznnz;
import '../enums/payment_status.enum.dart' as _iulumb5a;
import '../finance/invoice.dart' as _i3d856q3;

abstract class Payment
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Payment._({
    _is.UuidValue? id,
    required this.paymentDate,
    required this.amountPaid,
    required this.paymentMethod,
    required this.status,
    required this.currency,
    this.asaasPaymentId,
    this.asaasCustomerId,
    this.asaasBillingType,
    this.asaasDueDate,
    this.asaasNetValue,
    this.asaasInvoiceUrl,
    this.asaasBankSlipUrl,
    this.asaasPixQrCodePayload,
    this.asaasPixQrCodeImage,
    this.asaasRefundedAt,
    this.invoiceId,
    this.invoice,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Payment({
    _is.UuidValue? id,
    required DateTime paymentDate,
    required double amountPaid,
    required _iqyvznnz.PaymentMethod paymentMethod,
    required _iulumb5a.PaymentStatus status,
    required _isdw5wvy.Currency currency,
    String? asaasPaymentId,
    String? asaasCustomerId,
    String? asaasBillingType,
    DateTime? asaasDueDate,
    double? asaasNetValue,
    String? asaasInvoiceUrl,
    String? asaasBankSlipUrl,
    String? asaasPixQrCodePayload,
    String? asaasPixQrCodeImage,
    DateTime? asaasRefundedAt,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentDate: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['paymentDate'],
      ),
      amountPaid: (jsonSerialization['amountPaid'] as num).toDouble(),
      paymentMethod: _iqyvznnz.PaymentMethod.fromJson(
        (jsonSerialization['paymentMethod'] as String),
      ),
      status: _iulumb5a.PaymentStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      currency: _isdw5wvy.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      asaasPaymentId: jsonSerialization['asaasPaymentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      asaasBillingType: jsonSerialization['asaasBillingType'] as String?,
      asaasDueDate: jsonSerialization['asaasDueDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['asaasDueDate'],
            ),
      asaasNetValue: (jsonSerialization['asaasNetValue'] as num?)?.toDouble(),
      asaasInvoiceUrl: jsonSerialization['asaasInvoiceUrl'] as String?,
      asaasBankSlipUrl: jsonSerialization['asaasBankSlipUrl'] as String?,
      asaasPixQrCodePayload:
          jsonSerialization['asaasPixQrCodePayload'] as String?,
      asaasPixQrCodeImage: jsonSerialization['asaasPixQrCodeImage'] as String?,
      asaasRefundedAt: jsonSerialization['asaasRefundedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['asaasRefundedAt'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i3d856q3.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  static final t = PaymentTable();

  static const db = PaymentRepository._();

  @override
  _is.UuidValue id;

  DateTime paymentDate;

  double amountPaid;

  _iqyvznnz.PaymentMethod paymentMethod;

  _iulumb5a.PaymentStatus status;

  _isdw5wvy.Currency currency;

  String? asaasPaymentId;

  String? asaasCustomerId;

  String? asaasBillingType;

  DateTime? asaasDueDate;

  double? asaasNetValue;

  String? asaasInvoiceUrl;

  String? asaasBankSlipUrl;

  String? asaasPixQrCodePayload;

  String? asaasPixQrCodeImage;

  DateTime? asaasRefundedAt;

  _is.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Payment copyWith({
    _is.UuidValue? id,
    DateTime? paymentDate,
    double? amountPaid,
    _iqyvznnz.PaymentMethod? paymentMethod,
    _iulumb5a.PaymentStatus? status,
    _isdw5wvy.Currency? currency,
    String? asaasPaymentId,
    String? asaasCustomerId,
    String? asaasBillingType,
    DateTime? asaasDueDate,
    double? asaasNetValue,
    String? asaasInvoiceUrl,
    String? asaasBankSlipUrl,
    String? asaasPixQrCodePayload,
    String? asaasPixQrCodeImage,
    DateTime? asaasRefundedAt,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Payment',
      'id': id.toJson(),
      'paymentDate': paymentDate.toJson(),
      'amountPaid': amountPaid,
      'paymentMethod': paymentMethod.toJson(),
      'status': status.toJson(),
      'currency': currency.toJson(),
      if (asaasPaymentId != null) 'asaasPaymentId': asaasPaymentId,
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasBillingType != null) 'asaasBillingType': asaasBillingType,
      if (asaasDueDate != null) 'asaasDueDate': asaasDueDate?.toJson(),
      if (asaasNetValue != null) 'asaasNetValue': asaasNetValue,
      if (asaasInvoiceUrl != null) 'asaasInvoiceUrl': asaasInvoiceUrl,
      if (asaasBankSlipUrl != null) 'asaasBankSlipUrl': asaasBankSlipUrl,
      if (asaasPixQrCodePayload != null)
        'asaasPixQrCodePayload': asaasPixQrCodePayload,
      if (asaasPixQrCodeImage != null)
        'asaasPixQrCodeImage': asaasPixQrCodeImage,
      if (asaasRefundedAt != null) 'asaasRefundedAt': asaasRefundedAt?.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Payment',
      'id': id.toJson(),
      'paymentDate': paymentDate.toJson(),
      'amountPaid': amountPaid,
      'paymentMethod': paymentMethod.toJson(),
      'status': status.toJson(),
      'currency': currency.toJson(),
      if (asaasPaymentId != null) 'asaasPaymentId': asaasPaymentId,
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (asaasBillingType != null) 'asaasBillingType': asaasBillingType,
      if (asaasDueDate != null) 'asaasDueDate': asaasDueDate?.toJson(),
      if (asaasNetValue != null) 'asaasNetValue': asaasNetValue,
      if (asaasInvoiceUrl != null) 'asaasInvoiceUrl': asaasInvoiceUrl,
      if (asaasBankSlipUrl != null) 'asaasBankSlipUrl': asaasBankSlipUrl,
      if (asaasPixQrCodePayload != null)
        'asaasPixQrCodePayload': asaasPixQrCodePayload,
      if (asaasPixQrCodeImage != null)
        'asaasPixQrCodeImage': asaasPixQrCodeImage,
      if (asaasRefundedAt != null) 'asaasRefundedAt': asaasRefundedAt?.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
    };
  }

  static PaymentInclude include({_i3d856q3.InvoiceInclude? invoice}) {
    return PaymentInclude._(invoice: invoice);
  }

  static PaymentIncludeList includeList({
    _is.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    PaymentInclude? include,
  }) {
    return PaymentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentImpl extends Payment {
  _PaymentImpl({
    _is.UuidValue? id,
    required DateTime paymentDate,
    required double amountPaid,
    required _iqyvznnz.PaymentMethod paymentMethod,
    required _iulumb5a.PaymentStatus status,
    required _isdw5wvy.Currency currency,
    String? asaasPaymentId,
    String? asaasCustomerId,
    String? asaasBillingType,
    DateTime? asaasDueDate,
    double? asaasNetValue,
    String? asaasInvoiceUrl,
    String? asaasBankSlipUrl,
    String? asaasPixQrCodePayload,
    String? asaasPixQrCodeImage,
    DateTime? asaasRefundedAt,
    _is.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  }) : super._(
         id: id,
         paymentDate: paymentDate,
         amountPaid: amountPaid,
         paymentMethod: paymentMethod,
         status: status,
         currency: currency,
         asaasPaymentId: asaasPaymentId,
         asaasCustomerId: asaasCustomerId,
         asaasBillingType: asaasBillingType,
         asaasDueDate: asaasDueDate,
         asaasNetValue: asaasNetValue,
         asaasInvoiceUrl: asaasInvoiceUrl,
         asaasBankSlipUrl: asaasBankSlipUrl,
         asaasPixQrCodePayload: asaasPixQrCodePayload,
         asaasPixQrCodeImage: asaasPixQrCodeImage,
         asaasRefundedAt: asaasRefundedAt,
         invoiceId: invoiceId,
         invoice: invoice,
       );

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Payment copyWith({
    _is.UuidValue? id,
    DateTime? paymentDate,
    double? amountPaid,
    _iqyvznnz.PaymentMethod? paymentMethod,
    _iulumb5a.PaymentStatus? status,
    _isdw5wvy.Currency? currency,
    Object? asaasPaymentId = _Undefined,
    Object? asaasCustomerId = _Undefined,
    Object? asaasBillingType = _Undefined,
    Object? asaasDueDate = _Undefined,
    Object? asaasNetValue = _Undefined,
    Object? asaasInvoiceUrl = _Undefined,
    Object? asaasBankSlipUrl = _Undefined,
    Object? asaasPixQrCodePayload = _Undefined,
    Object? asaasPixQrCodeImage = _Undefined,
    Object? asaasRefundedAt = _Undefined,
    Object? invoiceId = _Undefined,
    Object? invoice = _Undefined,
  }) {
    return Payment(
      id: id ?? this.id,
      paymentDate: paymentDate ?? this.paymentDate,
      amountPaid: amountPaid ?? this.amountPaid,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      currency: currency ?? this.currency,
      asaasPaymentId: asaasPaymentId is String?
          ? asaasPaymentId
          : this.asaasPaymentId,
      asaasCustomerId: asaasCustomerId is String?
          ? asaasCustomerId
          : this.asaasCustomerId,
      asaasBillingType: asaasBillingType is String?
          ? asaasBillingType
          : this.asaasBillingType,
      asaasDueDate: asaasDueDate is DateTime?
          ? asaasDueDate
          : this.asaasDueDate,
      asaasNetValue: asaasNetValue is double?
          ? asaasNetValue
          : this.asaasNetValue,
      asaasInvoiceUrl: asaasInvoiceUrl is String?
          ? asaasInvoiceUrl
          : this.asaasInvoiceUrl,
      asaasBankSlipUrl: asaasBankSlipUrl is String?
          ? asaasBankSlipUrl
          : this.asaasBankSlipUrl,
      asaasPixQrCodePayload: asaasPixQrCodePayload is String?
          ? asaasPixQrCodePayload
          : this.asaasPixQrCodePayload,
      asaasPixQrCodeImage: asaasPixQrCodeImage is String?
          ? asaasPixQrCodeImage
          : this.asaasPixQrCodeImage,
      asaasRefundedAt: asaasRefundedAt is DateTime?
          ? asaasRefundedAt
          : this.asaasRefundedAt,
      invoiceId: invoiceId is _is.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
    );
  }
}

class PaymentUpdateTable extends _is.UpdateTable<PaymentTable> {
  PaymentUpdateTable(super.table);

  _is.ColumnValue<DateTime, DateTime> paymentDate(DateTime value) =>
      _is.ColumnValue(table.paymentDate, value);

  _is.ColumnValue<double, double> amountPaid(double value) =>
      _is.ColumnValue(table.amountPaid, value);

  _is.ColumnValue<_iqyvznnz.PaymentMethod, _iqyvznnz.PaymentMethod>
  paymentMethod(_iqyvznnz.PaymentMethod value) =>
      _is.ColumnValue(table.paymentMethod, value);

  _is.ColumnValue<_iulumb5a.PaymentStatus, _iulumb5a.PaymentStatus> status(
    _iulumb5a.PaymentStatus value,
  ) => _is.ColumnValue(table.status, value);

  _is.ColumnValue<_isdw5wvy.Currency, _isdw5wvy.Currency> currency(
    _isdw5wvy.Currency value,
  ) => _is.ColumnValue(table.currency, value);

  _is.ColumnValue<String, String> asaasPaymentId(String? value) =>
      _is.ColumnValue(table.asaasPaymentId, value);

  _is.ColumnValue<String, String> asaasCustomerId(String? value) =>
      _is.ColumnValue(table.asaasCustomerId, value);

  _is.ColumnValue<String, String> asaasBillingType(String? value) =>
      _is.ColumnValue(table.asaasBillingType, value);

  _is.ColumnValue<DateTime, DateTime> asaasDueDate(DateTime? value) =>
      _is.ColumnValue(table.asaasDueDate, value);

  _is.ColumnValue<double, double> asaasNetValue(double? value) =>
      _is.ColumnValue(table.asaasNetValue, value);

  _is.ColumnValue<String, String> asaasInvoiceUrl(String? value) =>
      _is.ColumnValue(table.asaasInvoiceUrl, value);

  _is.ColumnValue<String, String> asaasBankSlipUrl(String? value) =>
      _is.ColumnValue(table.asaasBankSlipUrl, value);

  _is.ColumnValue<String, String> asaasPixQrCodePayload(String? value) =>
      _is.ColumnValue(table.asaasPixQrCodePayload, value);

  _is.ColumnValue<String, String> asaasPixQrCodeImage(String? value) =>
      _is.ColumnValue(table.asaasPixQrCodeImage, value);

  _is.ColumnValue<DateTime, DateTime> asaasRefundedAt(DateTime? value) =>
      _is.ColumnValue(table.asaasRefundedAt, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> invoiceId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.invoiceId, value);
}

class PaymentTable extends _is.Table<_is.UuidValue> {
  PaymentTable({super.tableRelation}) : super(tableName: 'payments') {
    updateTable = PaymentUpdateTable(this);
    paymentDate = _is.ColumnDateTime('paymentDate', this);
    amountPaid = _is.ColumnDouble('amountPaid', this);
    paymentMethod = _is.ColumnEnum(
      'paymentMethod',
      this,
      _is.EnumSerialization.byName,
    );
    status = _is.ColumnEnum('status', this, _is.EnumSerialization.byName);
    currency = _is.ColumnEnum('currency', this, _is.EnumSerialization.byName);
    asaasPaymentId = _is.ColumnString('asaasPaymentId', this);
    asaasCustomerId = _is.ColumnString('asaasCustomerId', this);
    asaasBillingType = _is.ColumnString('asaasBillingType', this);
    asaasDueDate = _is.ColumnDateTime('asaasDueDate', this);
    asaasNetValue = _is.ColumnDouble('asaasNetValue', this);
    asaasInvoiceUrl = _is.ColumnString('asaasInvoiceUrl', this);
    asaasBankSlipUrl = _is.ColumnString('asaasBankSlipUrl', this);
    asaasPixQrCodePayload = _is.ColumnString('asaasPixQrCodePayload', this);
    asaasPixQrCodeImage = _is.ColumnString('asaasPixQrCodeImage', this);
    asaasRefundedAt = _is.ColumnDateTime('asaasRefundedAt', this);
    invoiceId = _is.ColumnUuid('invoiceId', this);
  }

  late final PaymentUpdateTable updateTable;

  late final _is.ColumnDateTime paymentDate;

  late final _is.ColumnDouble amountPaid;

  late final _is.ColumnEnum<_iqyvznnz.PaymentMethod> paymentMethod;

  late final _is.ColumnEnum<_iulumb5a.PaymentStatus> status;

  late final _is.ColumnEnum<_isdw5wvy.Currency> currency;

  late final _is.ColumnString asaasPaymentId;

  late final _is.ColumnString asaasCustomerId;

  late final _is.ColumnString asaasBillingType;

  late final _is.ColumnDateTime asaasDueDate;

  late final _is.ColumnDouble asaasNetValue;

  late final _is.ColumnString asaasInvoiceUrl;

  late final _is.ColumnString asaasBankSlipUrl;

  late final _is.ColumnString asaasPixQrCodePayload;

  late final _is.ColumnString asaasPixQrCodeImage;

  late final _is.ColumnDateTime asaasRefundedAt;

  late final _is.ColumnUuid invoiceId;

  _i3d856q3.InvoiceTable? _invoice;

  _i3d856q3.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _is.createRelationTable(
      relationFieldName: 'invoice',
      field: Payment.t.invoiceId,
      foreignField: _i3d856q3.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3d856q3.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    paymentDate,
    amountPaid,
    paymentMethod,
    status,
    currency,
    asaasPaymentId,
    asaasCustomerId,
    asaasBillingType,
    asaasDueDate,
    asaasNetValue,
    asaasInvoiceUrl,
    asaasBankSlipUrl,
    asaasPixQrCodePayload,
    asaasPixQrCodeImage,
    asaasRefundedAt,
    invoiceId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class PaymentInclude extends _is.IncludeObject {
  PaymentInclude._({_i3d856q3.InvoiceInclude? invoice}) {
    _invoice = invoice;
  }

  _i3d856q3.InvoiceInclude? _invoice;

  @override
  Map<String, _is.Include?> get includes => {'invoice': _invoice};

  @override
  _is.Table<_is.UuidValue> get table => Payment.t;
}

class PaymentIncludeList extends _is.IncludeList {
  PaymentIncludeList._({
    _is.WhereExpressionBuilder<PaymentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Payment.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Payment.t;
}

class PaymentRepository {
  const PaymentRepository._();

  final attachRow = const PaymentAttachRowRepository._();

  final detachRow = const PaymentDetachRowRepository._();

  /// Returns a list of [Payment]s matching the given query parameters.
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
  Future<List<Payment>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    _is.Transaction? transaction,
    PaymentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Payment] matching the given query parameters.
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
  Future<Payment?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PaymentTable>? where,
    int? offset,
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    _is.Transaction? transaction,
    PaymentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Payment] by its [id] or null if no such row exists.
  Future<Payment?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    PaymentInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Payment>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Payment]s in the list and returns the inserted rows.
  ///
  /// The returned [Payment]s will have their `id` fields set.
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
  Future<List<Payment>> insert(
    _is.DatabaseSession session,
    List<Payment> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Payment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Payment] and returns the inserted row.
  ///
  /// The returned [Payment] will have its `id` field set.
  Future<Payment> insertRow(
    _is.DatabaseSession session,
    Payment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Payment>(row, transaction: transaction);
  }

  /// Upserts all [Payment]s in the list and returns the resulting rows.
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
  /// The returned [Payment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Payment>> upsert(
    _is.DatabaseSession session,
    List<Payment> rows, {
    required _is.ColumnSelections<PaymentTable> conflictColumns,
    _is.ColumnSelections<PaymentTable>? updateColumns,
    _is.WhereExpressionBuilder<PaymentTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Payment>(
      rows,
      conflictColumns: conflictColumns(Payment.t),
      updateColumns: updateColumns?.call(Payment.t),
      updateWhere: updateWhere?.call(Payment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Payment] and returns the resulting row.
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
  /// The returned [Payment] will have its `id` field set.
  Future<Payment?> upsertRow(
    _is.DatabaseSession session,
    Payment row, {
    required _is.ColumnSelections<PaymentTable> conflictColumns,
    _is.ColumnSelections<PaymentTable>? updateColumns,
    _is.WhereExpressionBuilder<PaymentTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Payment>(
      row,
      conflictColumns: conflictColumns(Payment.t),
      updateColumns: updateColumns?.call(Payment.t),
      updateWhere: updateWhere?.call(Payment.t),
      transaction: transaction,
    );
  }

  /// Updates all [Payment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Payment>> update(
    _is.DatabaseSession session,
    List<Payment> rows, {
    _is.ColumnSelections<PaymentTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Payment>(
      rows,
      columns: columns?.call(Payment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Payment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Payment> updateRow(
    _is.DatabaseSession session,
    Payment row, {
    _is.ColumnSelections<PaymentTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Payment>(
      row,
      columns: columns?.call(Payment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Payment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Payment?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<PaymentUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Payment>(
      id,
      columnValues: columnValues(Payment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Payment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Payment>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PaymentUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<PaymentTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Payment>(
      columnValues: columnValues(Payment.t.updateTable),
      where: where(Payment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Payment]s in the list and returns the deleted rows.
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
  Future<List<Payment>> delete(
    _is.DatabaseSession session,
    List<Payment> rows, {
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Payment>(
      rows,
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Payment].
  Future<Payment> deleteRow(
    _is.DatabaseSession session,
    Payment row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Payment>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Payment>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PaymentTable> where,
    _is.OrderByBuilder<PaymentTable>? orderBy,
    _is.OrderByListBuilder<PaymentTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Payment>(
      where: where(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Payment>(
      where: where?.call(Payment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Payment] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PaymentTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Payment>(
      where: where(Payment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class PaymentAttachRowRepository {
  const PaymentAttachRowRepository._();

  /// Creates a relation between the given [Payment] and [Invoice]
  /// by setting the [Payment]'s foreign key `invoiceId` to refer to the [Invoice].
  Future<void> invoice(
    _is.DatabaseSession session,
    Payment payment,
    _i3d856q3.Invoice invoice, {
    _is.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }
    if (invoice.id == null) {
      throw ArgumentError.notNull('invoice.id');
    }

    var $payment = payment.copyWith(invoiceId: invoice.id);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.invoiceId],
      transaction: transaction,
    );
  }
}

class PaymentDetachRowRepository {
  const PaymentDetachRowRepository._();

  /// Detaches the relation between this [Payment] and the [Invoice] set in `invoice`
  /// by setting the [Payment]'s foreign key `invoiceId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> invoice(
    _is.DatabaseSession session,
    Payment payment, {
    _is.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }

    var $payment = payment.copyWith(invoiceId: null);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.invoiceId],
      transaction: transaction,
    );
  }
}
