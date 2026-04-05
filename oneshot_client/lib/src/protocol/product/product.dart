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
import '../product/product_group.dart' as _i2;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i3;

abstract class Product implements _i1.SerializableModel {
  Product._({
    _i1.UuidValue? id,
    required this.code,
    required this.description,
    required this.unit,
    required this.unitPrice,
    required this.originModule,
    required this.groupId,
    this.group,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Product({
    _i1.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _i1.UuidValue groupId,
    _i2.ProductGroup? group,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String,
      unit: jsonSerialization['unit'] as String,
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      originModule: jsonSerialization['originModule'] as String,
      groupId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['groupId'],
      ),
      group: jsonSerialization['group'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.ProductGroup>(
              jsonSerialization['group'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String code;

  String description;

  String unit;

  double unitPrice;

  String originModule;

  _i1.UuidValue groupId;

  _i2.ProductGroup? group;

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Product copyWith({
    _i1.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _i1.UuidValue? groupId,
    _i2.ProductGroup? group,
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
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    _i1.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _i1.UuidValue groupId,
    _i2.ProductGroup? group,
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
  @_i1.useResult
  @override
  Product copyWith({
    _i1.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _i1.UuidValue? groupId,
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
      group: group is _i2.ProductGroup? ? group : this.group?.copyWith(),
    );
  }
}
