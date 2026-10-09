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
import '../finance/invoice.dart' as _i3d856q3;

abstract class InvoiceItem
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  InvoiceItem._({
    _isc.UuidValue? id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.invoiceId,
    this.invoice,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory InvoiceItem({
    _isc.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
  }) = _InvoiceItemImpl;

  factory InvoiceItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return InvoiceItem(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      description: jsonSerialization['description'] as String,
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
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

  String description;

  double quantity;

  double unitPrice;

  double totalPrice;

  _isc.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  /// Returns a shallow copy of this [InvoiceItem]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  InvoiceItem copyWith({
    _isc.UuidValue? id,
    String? description,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'InvoiceItem',
      'id': id.toJson(),
      'description': description,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
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

class _InvoiceItemImpl extends InvoiceItem {
  _InvoiceItemImpl({
    _isc.UuidValue? id,
    required String description,
    required double quantity,
    required double unitPrice,
    required double totalPrice,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
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
  @_isc.useResult
  @override
  InvoiceItem copyWith({
    _isc.UuidValue? id,
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
      invoiceId: invoiceId is _isc.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
    );
  }
}
