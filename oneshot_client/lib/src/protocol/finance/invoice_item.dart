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
import '../finance/invoice.dart' as _i2;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i3;

abstract class InvoiceItem implements _i1.SerializableModel {
  InvoiceItem._({
    _i1.UuidValue? id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.invoiceId,
    this.invoice,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory InvoiceItem({
    _i1.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      description: jsonSerialization['description'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.Invoice>(
              jsonSerialization['invoice'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String description;

  double quantity;

  double unitPrice;

  double totalPrice;

  _i1.UuidValue? invoiceId;

  _i2.Invoice? invoice;

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  InvoiceItem copyWith({
    _i1.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'InvoiceItem',
      'id': id.toJson(),
      'description': description,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
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

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
    _i1.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _i1.UuidValue? invoiceId,
    _i2.Invoice? invoice,
  }) : super._(
         id: id,
         description: description,
         quantity: quantity,
         unitPrice: unitPrice,
         totalPrice: totalPrice,
         invoiceId: invoiceId,
         invoice: invoice,
       );

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  InvoiceItem copyWith({
    _i1.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    Object? invoiceId = _Undefined,
    Object? invoice = _Undefined,
  }) {
    return InvoiceItem(
      id: id ?? this.id,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      invoiceId: invoiceId is _i1.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i2.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}
