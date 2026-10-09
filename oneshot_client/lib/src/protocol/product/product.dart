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
import '../product/product_group.dart' as _i1dl6bm0;

abstract class Product
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Product._({
    _isc.UuidValue? id,
    required this.code,
    required this.description,
    required this.unit,
    required this.unitPrice,
    required this.originModule,
    required this.groupId,
    this.group,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Product({
    _isc.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _isc.UuidValue groupId,
    _i1dl6bm0.ProductGroup? group,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String,
      unit: jsonSerialization['unit'] as String,
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      originModule: jsonSerialization['originModule'] as String,
      groupId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['groupId'],
      ),
      group: jsonSerialization['group'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i1dl6bm0.ProductGroup>(
              jsonSerialization['group'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String code;

  String description;

  String unit;

  double unitPrice;

  String originModule;

  _isc.UuidValue groupId;

  _i1dl6bm0.ProductGroup? group;

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Product copyWith({
    _isc.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _isc.UuidValue? groupId,
    _i1dl6bm0.ProductGroup? group,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Product',
      'id': id.toJson(),
      'code': code,
      'description': description,
      'unit': unit,
      'unitPrice': unitPrice,
      'originModule': originModule,
      'groupId': groupId.toJson(),
      if (group != null) 'group': group?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Product',
      'id': id.toJson(),
      'code': code,
      'description': description,
      'unit': unit,
      'unitPrice': unitPrice,
      'originModule': originModule,
      'groupId': groupId.toJson(),
      if (group != null) 'group': group?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    _isc.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _isc.UuidValue groupId,
    _i1dl6bm0.ProductGroup? group,
  }) : super._(
         id: id,
         code: code,
         description: description,
         unit: unit,
         unitPrice: unitPrice,
         originModule: originModule,
         groupId: groupId,
         group: group,
       );

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Product copyWith({
    _isc.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _isc.UuidValue? groupId,
    Object? group = _Undefined,
  }) {
    return Product(
      id: id ?? this.id,
      code: code ?? this.code,
      description: description ?? this.description,
      unit: unit ?? this.unit,
      unitPrice: unitPrice ?? this.unitPrice,
      originModule: originModule ?? this.originModule,
      groupId: groupId ?? this.groupId,
      group: group is _i1dl6bm0.ProductGroup? ? group : this.group?.copyWith(),
    );
  }
}
