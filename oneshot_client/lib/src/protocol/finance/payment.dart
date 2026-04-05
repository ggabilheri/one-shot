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
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../enums/payment_method.enum.dart' as _i2;
import '../enums/payment_status.enum.dart' as _i3;
import '../enums/currency.enum.dart' as _i4;
import '../finance/invoice.dart' as _i5;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i6;

abstract class Payment implements _i1.SerializableModel {
  Payment._({
    _i1.UuidValue? id,
    required this.paymentDate,
    required this.amountPaid,
    required this.paymentMethod,
    required this.status,
    required this.currency,
    this.gatewayTransactionId,
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
    String? gatewayTransactionId,
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
      gatewayTransactionId:
          jsonSerialization['gatewayTransactionId'] as String?,
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

  /// The id of the object.
  _i1.UuidValue id;

  DateTime paymentDate;

  double amountPaid;

  _i2.PaymentMethod paymentMethod;

  _i3.PaymentStatus status;

  _i4.Currency currency;

  String? gatewayTransactionId;

  _i1.UuidValue? invoiceId;

  _i5.Invoice? invoice;

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
    String? gatewayTransactionId,
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
      if (gatewayTransactionId != null)
        'gatewayTransactionId': gatewayTransactionId,
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
    };
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
    String? gatewayTransactionId,
    _i1.UuidValue? invoiceId,
    _i5.Invoice? invoice,
  }) : super._(
         id: id,
         paymentDate: paymentDate,
         amountPaid: amountPaid,
         paymentMethod: paymentMethod,
         status: status,
         currency: currency,
         gatewayTransactionId: gatewayTransactionId,
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
    Object? gatewayTransactionId = _Undefined,
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
      gatewayTransactionId: gatewayTransactionId is String?
          ? gatewayTransactionId
          : this.gatewayTransactionId,
      invoiceId: invoiceId is _i1.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i5.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}
