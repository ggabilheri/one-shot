/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:oneshot_client/src/protocol/protocol.dart' as _itys55mc;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../enums/currency.enum.dart' as _isdw5wvy;
import '../enums/payment_method.enum.dart' as _iqyvznnz;
import '../enums/payment_status.enum.dart' as _iulumb5a;
import '../finance/invoice.dart' as _i3d856q3;

abstract class Payment
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Payment._({
    _isc.UuidValue? id,
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
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Payment({
    _isc.UuidValue? id,
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
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      paymentDate: _isc.DateTimeJsonExtension.fromJson(
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
          : _isc.DateTimeJsonExtension.fromJson(
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
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['asaasRefundedAt'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceId'],
            ),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i3d856q3.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

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

  _isc.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Payment copyWith({
    _isc.UuidValue? id,
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
    _isc.UuidValue? invoiceId,
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentImpl extends Payment {
  _PaymentImpl({
    _isc.UuidValue? id,
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
    _isc.UuidValue? invoiceId,
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
  @_isc.useResult
  @override
  Payment copyWith({
    _isc.UuidValue? id,
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
      invoiceId: invoiceId is _isc.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
    );
  }
}
