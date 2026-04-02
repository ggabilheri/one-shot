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
import '../gunsmith/service_order.dart' as _i2;
import '../common/supply_stock.dart' as _i3;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i4;

abstract class ServiceOrderItem implements _i1.SerializableModel {
  ServiceOrderItem._({
    _i1.UuidValue? id,
    this.serviceOrderId,
    this.serviceOrderId,
    this.serviceOrder,
    required this.description,
    required this.isStockPart,
    this.supplyPartId,
    this.supplyPartId,
    this.supplyPart,
    required this.servicePrice,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory ServiceOrderItem({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
    required double servicePrice,
  }) = _ServiceOrderItemImpl;

  factory ServiceOrderItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return ServiceOrderItem(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      serviceOrderId: jsonSerialization['serviceOrderId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['serviceOrderId'],
            ),
      serviceOrder: jsonSerialization['serviceOrder'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.ServiceOrder>(
              jsonSerialization['serviceOrder'],
            ),
      description: jsonSerialization['description'] as String,
      isStockPart: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['isStockPart'],
      ),
      supplyPartId: jsonSerialization['supplyPartId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['supplyPartId'],
            ),
      supplyPart: jsonSerialization['supplyPart'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.SupplyStock>(
              jsonSerialization['supplyPart'],
            ),
      servicePrice: (jsonSerialization['servicePrice'] as num).toDouble(),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? serviceOrderId;

  _i1.UuidValue? serviceOrderId;

  _i2.ServiceOrder? serviceOrder;

  String description;

  bool isStockPart;

  _i1.UuidValue? supplyPartId;

  _i1.UuidValue? supplyPartId;

  _i3.SupplyStock? supplyPart;

  double servicePrice;

  /// Returns a shallow copy of this [ServiceOrderItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ServiceOrderItem copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    String? description,
    bool? isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
    double? servicePrice,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ServiceOrderItem',
      'id': id.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrderId != null) 'serviceOrderId': serviceOrderId?.toJson(),
      if (serviceOrder != null) 'serviceOrder': serviceOrder?.toJson(),
      'description': description,
      'isStockPart': isStockPart,
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPartId != null) 'supplyPartId': supplyPartId?.toJson(),
      if (supplyPart != null) 'supplyPart': supplyPart?.toJson(),
      'servicePrice': servicePrice,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderItemImpl extends ServiceOrderItem {
  _ServiceOrderItemImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? serviceOrderId,
    _i1.UuidValue? serviceOrderId,
    _i2.ServiceOrder? serviceOrder,
    required String description,
    required bool isStockPart,
    _i1.UuidValue? supplyPartId,
    _i1.UuidValue? supplyPartId,
    _i3.SupplyStock? supplyPart,
    required double servicePrice,
  }) : super._(
         id: id,
         serviceOrderId: serviceOrderId,
         serviceOrder: serviceOrder,
         description: description,
         isStockPart: isStockPart,
         supplyPartId: supplyPartId,
         supplyPart: supplyPart,
         servicePrice: servicePrice,
       );

  /// Returns a shallow copy of this [ServiceOrderItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ServiceOrderItem copyWith({
    _i1.UuidValue? id,
    Object? serviceOrderId = _Undefined,
    Object? serviceOrderId = _Undefined,
    Object? serviceOrder = _Undefined,
    String? description,
    bool? isStockPart,
    Object? supplyPartId = _Undefined,
    Object? supplyPartId = _Undefined,
    Object? supplyPart = _Undefined,
    double? servicePrice,
  }) {
    return ServiceOrderItem(
      id: id ?? this.id,
      serviceOrderId: serviceOrderId is _i1.UuidValue?
          ? serviceOrderId
          : this.serviceOrderId,
      serviceOrder: serviceOrder is _i2.ServiceOrder?
          ? serviceOrder
          : this.serviceOrder?.copyWith(),
      description: description ?? this.description,
      isStockPart: isStockPart ?? this.isStockPart,
      supplyPartId: supplyPartId is _i1.UuidValue?
          ? supplyPartId
          : this.supplyPartId,
      supplyPart: supplyPart is _i3.SupplyStock?
          ? supplyPart
          : this.supplyPart?.copyWith(),
      servicePrice: servicePrice ?? this.servicePrice,
    );
  }
}
