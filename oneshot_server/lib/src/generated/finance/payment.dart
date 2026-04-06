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
import '../enums/payment_method.enum.dart' as _i2;
import '../enums/payment_status.enum.dart' as _i3;
import '../enums/currency.enum.dart' as _i4;
import '../finance/invoice.dart' as _i5;
import 'package:oneshot_server/src/generated/protocol.dart' as _i6;

abstract class Payment
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Payment._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Payment({
    _i1.UuidValue? id,
    required DateTime paymentDate,
    required double amountPaid,
    required _i2.PaymentMethod paymentMethod,
    required _i3.PaymentStatus status,
    required _i4.Currency currency,
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
    _i1.UuidValue? invoiceId,
    _i5.Invoice? invoice,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['paymentDate'],
      ),
      amountPaid: (jsonSerialization['amountPaid'] as num).toDouble(),
      paymentMethod: _i2.PaymentMethod.fromJson(
        (jsonSerialization['paymentMethod'] as String),
      ),
      status: _i3.PaymentStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      currency: _i4.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      asaasPaymentId: jsonSerialization['asaasPaymentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      asaasBillingType: jsonSerialization['asaasBillingType'] as String?,
      asaasDueDate: jsonSerialization['asaasDueDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
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
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['asaasRefundedAt'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i6.Protocol().deserialize<_i5.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  static final t = PaymentTable();

  static const db = PaymentRepository._();

  @override
  _i1.UuidValue id;

  DateTime paymentDate;

  double amountPaid;

  _i2.PaymentMethod paymentMethod;

  _i3.PaymentStatus status;

  _i4.Currency currency;

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

  _i1.UuidValue? invoiceId;

  _i5.Invoice? invoice;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Payment copyWith({
    _i1.UuidValue? id,
    DateTime? paymentDate,
    double? amountPaid,
    _i2.PaymentMethod? paymentMethod,
    _i3.PaymentStatus? status,
    _i4.Currency? currency,
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
    _i1.UuidValue? invoiceId,
    _i5.Invoice? invoice,
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

  static PaymentInclude include({_i5.InvoiceInclude? invoice}) {
    return PaymentInclude._(invoice: invoice);
  }

  static PaymentIncludeList includeList({
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    PaymentInclude? include,
  }) {
    return PaymentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Payment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Payment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentImpl extends Payment {
  _PaymentImpl({
    _i1.UuidValue? id,
    required DateTime paymentDate,
    required double amountPaid,
    required _i2.PaymentMethod paymentMethod,
    required _i3.PaymentStatus status,
    required _i4.Currency currency,
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
    _i1.UuidValue? invoiceId,
    _i5.Invoice? invoice,
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
  @_i1.useResult
  @override
  Payment copyWith({
    _i1.UuidValue? id,
    DateTime? paymentDate,
    double? amountPaid,
    _i2.PaymentMethod? paymentMethod,
    _i3.PaymentStatus? status,
    _i4.Currency? currency,
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
      invoiceId: invoiceId is _i1.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i5.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}

class PaymentUpdateTable extends _i1.UpdateTable<PaymentTable> {
  PaymentUpdateTable(super.table);

  _i1.ColumnValue<DateTime, DateTime> paymentDate(DateTime value) =>
      _i1.ColumnValue(
        table.paymentDate,
        value,
      );

  _i1.ColumnValue<double, double> amountPaid(double value) => _i1.ColumnValue(
    table.amountPaid,
    value,
  );

  _i1.ColumnValue<_i2.PaymentMethod, _i2.PaymentMethod> paymentMethod(
    _i2.PaymentMethod value,
  ) => _i1.ColumnValue(
    table.paymentMethod,
    value,
  );

  _i1.ColumnValue<_i3.PaymentStatus, _i3.PaymentStatus> status(
    _i3.PaymentStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<_i4.Currency, _i4.Currency> currency(_i4.Currency value) =>
      _i1.ColumnValue(
        table.currency,
        value,
      );

  _i1.ColumnValue<String, String> asaasPaymentId(String? value) =>
      _i1.ColumnValue(
        table.asaasPaymentId,
        value,
      );

  _i1.ColumnValue<String, String> asaasCustomerId(String? value) =>
      _i1.ColumnValue(
        table.asaasCustomerId,
        value,
      );

  _i1.ColumnValue<String, String> asaasBillingType(String? value) =>
      _i1.ColumnValue(
        table.asaasBillingType,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> asaasDueDate(DateTime? value) =>
      _i1.ColumnValue(
        table.asaasDueDate,
        value,
      );

  _i1.ColumnValue<double, double> asaasNetValue(double? value) =>
      _i1.ColumnValue(
        table.asaasNetValue,
        value,
      );

  _i1.ColumnValue<String, String> asaasInvoiceUrl(String? value) =>
      _i1.ColumnValue(
        table.asaasInvoiceUrl,
        value,
      );

  _i1.ColumnValue<String, String> asaasBankSlipUrl(String? value) =>
      _i1.ColumnValue(
        table.asaasBankSlipUrl,
        value,
      );

  _i1.ColumnValue<String, String> asaasPixQrCodePayload(String? value) =>
      _i1.ColumnValue(
        table.asaasPixQrCodePayload,
        value,
      );

  _i1.ColumnValue<String, String> asaasPixQrCodeImage(String? value) =>
      _i1.ColumnValue(
        table.asaasPixQrCodeImage,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> asaasRefundedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.asaasRefundedAt,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> invoiceId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.invoiceId,
    value,
  );
}

class PaymentTable extends _i1.Table<_i1.UuidValue> {
  PaymentTable({super.tableRelation}) : super(tableName: 'payments') {
    updateTable = PaymentUpdateTable(this);
    paymentDate = _i1.ColumnDateTime(
      'paymentDate',
      this,
    );
    amountPaid = _i1.ColumnDouble(
      'amountPaid',
      this,
    );
    paymentMethod = _i1.ColumnEnum(
      'paymentMethod',
      this,
      _i1.EnumSerialization.byName,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    currency = _i1.ColumnEnum(
      'currency',
      this,
      _i1.EnumSerialization.byName,
    );
    asaasPaymentId = _i1.ColumnString(
      'asaasPaymentId',
      this,
    );
    asaasCustomerId = _i1.ColumnString(
      'asaasCustomerId',
      this,
    );
    asaasBillingType = _i1.ColumnString(
      'asaasBillingType',
      this,
    );
    asaasDueDate = _i1.ColumnDateTime(
      'asaasDueDate',
      this,
    );
    asaasNetValue = _i1.ColumnDouble(
      'asaasNetValue',
      this,
    );
    asaasInvoiceUrl = _i1.ColumnString(
      'asaasInvoiceUrl',
      this,
    );
    asaasBankSlipUrl = _i1.ColumnString(
      'asaasBankSlipUrl',
      this,
    );
    asaasPixQrCodePayload = _i1.ColumnString(
      'asaasPixQrCodePayload',
      this,
    );
    asaasPixQrCodeImage = _i1.ColumnString(
      'asaasPixQrCodeImage',
      this,
    );
    asaasRefundedAt = _i1.ColumnDateTime(
      'asaasRefundedAt',
      this,
    );
    invoiceId = _i1.ColumnUuid(
      'invoiceId',
      this,
    );
  }

  late final PaymentUpdateTable updateTable;

  late final _i1.ColumnDateTime paymentDate;

  late final _i1.ColumnDouble amountPaid;

  late final _i1.ColumnEnum<_i2.PaymentMethod> paymentMethod;

  late final _i1.ColumnEnum<_i3.PaymentStatus> status;

  late final _i1.ColumnEnum<_i4.Currency> currency;

  late final _i1.ColumnString asaasPaymentId;

  late final _i1.ColumnString asaasCustomerId;

  late final _i1.ColumnString asaasBillingType;

  late final _i1.ColumnDateTime asaasDueDate;

  late final _i1.ColumnDouble asaasNetValue;

  late final _i1.ColumnString asaasInvoiceUrl;

  late final _i1.ColumnString asaasBankSlipUrl;

  late final _i1.ColumnString asaasPixQrCodePayload;

  late final _i1.ColumnString asaasPixQrCodeImage;

  late final _i1.ColumnDateTime asaasRefundedAt;

  late final _i1.ColumnUuid invoiceId;

  _i5.InvoiceTable? _invoice;

  _i5.InvoiceTable get invoice {
    if (_invoice != null) return _invoice!;
    _invoice = _i1.createRelationTable(
      relationFieldName: 'invoice',
      field: Payment.t.invoiceId,
      foreignField: _i5.Invoice.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.InvoiceTable(tableRelation: foreignTableRelation),
    );
    return _invoice!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'invoice') {
      return invoice;
    }
    return null;
  }
}

class PaymentInclude extends _i1.IncludeObject {
  PaymentInclude._({_i5.InvoiceInclude? invoice}) {
    _invoice = invoice;
  }

  _i5.InvoiceInclude? _invoice;

  @override
  Map<String, _i1.Include?> get includes => {'invoice': _invoice};

  @override
  _i1.Table<_i1.UuidValue> get table => Payment.t;
}

class PaymentIncludeList extends _i1.IncludeList {
  PaymentIncludeList._({
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Payment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Payment.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    _i1.Transaction? transaction,
    PaymentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    _i1.Transaction? transaction,
    PaymentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Payment] by its [id] or null if no such row exists.
  Future<Payment?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    PaymentInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Payment>> insert(
    _i1.DatabaseSession session,
    List<Payment> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Payment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Payment] and returns the inserted row.
  ///
  /// The returned [Payment] will have its `id` field set.
  Future<Payment> insertRow(
    _i1.DatabaseSession session,
    Payment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Payment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Payment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Payment>> update(
    _i1.DatabaseSession session,
    List<Payment> rows, {
    _i1.ColumnSelections<PaymentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Payment>(
      rows,
      columns: columns?.call(Payment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Payment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Payment> updateRow(
    _i1.DatabaseSession session,
    Payment row, {
    _i1.ColumnSelections<PaymentTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<PaymentUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Payment>(
      id,
      columnValues: columnValues(Payment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Payment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Payment>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<PaymentUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PaymentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Payment>(
      columnValues: columnValues(Payment.t.updateTable),
      where: where(Payment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Payment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Payment>> delete(
    _i1.DatabaseSession session,
    List<Payment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Payment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Payment].
  Future<Payment> deleteRow(
    _i1.DatabaseSession session,
    Payment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Payment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Payment>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PaymentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Payment>(
      where: where(Payment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Payment>(
      where: where?.call(Payment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Payment] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PaymentTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Payment payment,
    _i5.Invoice invoice, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Payment payment, {
    _i1.Transaction? transaction,
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
