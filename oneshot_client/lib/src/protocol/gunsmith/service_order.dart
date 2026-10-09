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
import '../gunsmith/gunsmith_client.dart' as _i2wg6r80;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class ServiceOrder
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ServiceOrder._({
    _isc.UuidValue? id,
    this.clientId,
    this.client,
    this.firearmId,
    this.firearm,
    required this.entryDate,
    this.estimatedDeliveryDate,
    required this.totalPrice,
    this.discount,
    required this.finalPrice,
    this.paymentMethod,
    this.notes,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory ServiceOrder({
    _isc.UuidValue? id,
    _isc.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime entryDate,
    DateTime? estimatedDeliveryDate,
    required double totalPrice,
    double? discount,
    required double finalPrice,
    String? paymentMethod,
    String? notes,
  }) = _ServiceOrderImpl;

  factory ServiceOrder.fromJson(Map<String, dynamic> jsonSerialization) {
    return ServiceOrder(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      clientId: jsonSerialization['clientId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['clientId']),
      client: jsonSerialization['client'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i2wg6r80.GunsmithClient>(
              jsonSerialization['client'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['firearmId'],
            ),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i25s0fp9.Firearm>(
              jsonSerialization['firearm'],
            ),
      entryDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['entryDate'],
      ),
      estimatedDeliveryDate: jsonSerialization['estimatedDeliveryDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['estimatedDeliveryDate'],
            ),
      totalPrice: (jsonSerialization['totalPrice'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalPrice: (jsonSerialization['finalPrice'] as num).toDouble(),
      paymentMethod: jsonSerialization['paymentMethod'] as String?,
      notes: jsonSerialization['notes'] as String?,
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? clientId;

  _i2wg6r80.GunsmithClient? client;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  DateTime entryDate;

  DateTime? estimatedDeliveryDate;

  double totalPrice;

  double? discount;

  double finalPrice;

  String? paymentMethod;

  String? notes;

  /// Returns a shallow copy of this [ServiceOrder]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ServiceOrder copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    DateTime? entryDate,
    DateTime? estimatedDeliveryDate,
    double? totalPrice,
    double? discount,
    double? finalPrice,
    String? paymentMethod,
    String? notes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ServiceOrder',
      'id': id.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      if (client != null) 'client': client?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'entryDate': entryDate.toJson(),
      if (estimatedDeliveryDate != null)
        'estimatedDeliveryDate': estimatedDeliveryDate?.toJson(),
      'totalPrice': totalPrice,
      if (discount != null) 'discount': discount,
      'finalPrice': finalPrice,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ServiceOrder',
      'id': id.toJson(),
      if (clientId != null) 'clientId': clientId?.toJson(),
      if (client != null) 'client': client?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'entryDate': entryDate.toJson(),
      if (estimatedDeliveryDate != null)
        'estimatedDeliveryDate': estimatedDeliveryDate?.toJson(),
      'totalPrice': totalPrice,
      if (discount != null) 'discount': discount,
      'finalPrice': finalPrice,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServiceOrderImpl extends ServiceOrder {
  _ServiceOrderImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? clientId,
    _i2wg6r80.GunsmithClient? client,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime entryDate,
    DateTime? estimatedDeliveryDate,
    required double totalPrice,
    double? discount,
    required double finalPrice,
    String? paymentMethod,
    String? notes,
  }) : super._(
         id: id,
         clientId: clientId,
         client: client,
         firearmId: firearmId,
         firearm: firearm,
         entryDate: entryDate,
         estimatedDeliveryDate: estimatedDeliveryDate,
         totalPrice: totalPrice,
         discount: discount,
         finalPrice: finalPrice,
         paymentMethod: paymentMethod,
         notes: notes,
       );

  /// Returns a shallow copy of this [ServiceOrder]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ServiceOrder copyWith({
    _isc.UuidValue? id,
    Object? clientId = _Undefined,
    Object? client = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? entryDate,
    Object? estimatedDeliveryDate = _Undefined,
    double? totalPrice,
    Object? discount = _Undefined,
    double? finalPrice,
    Object? paymentMethod = _Undefined,
    Object? notes = _Undefined,
  }) {
    return ServiceOrder(
      id: id ?? this.id,
      clientId: clientId is _isc.UuidValue? ? clientId : this.clientId,
      client: client is _i2wg6r80.GunsmithClient?
          ? client
          : this.client?.copyWith(),
      firearmId: firearmId is _isc.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      entryDate: entryDate ?? this.entryDate,
      estimatedDeliveryDate: estimatedDeliveryDate is DateTime?
          ? estimatedDeliveryDate
          : this.estimatedDeliveryDate,
      totalPrice: totalPrice ?? this.totalPrice,
      discount: discount is double? ? discount : this.discount,
      finalPrice: finalPrice ?? this.finalPrice,
      paymentMethod: paymentMethod is String?
          ? paymentMethod
          : this.paymentMethod,
      notes: notes is String? ? notes : this.notes,
    );
  }
}
