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
import '../common/user_profile.dart' as _i2;
import '../shooter/firearm.dart' as _i3;
import '../enums/accessory.enum.dart' as _i4;
import '../enums/conservation_state.enum.dart' as _i5;
import '../enums/usage_type.enum.dart' as _i6;
import '../enums/registry_body.enum.dart' as _i7;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i8;

abstract class Accessory implements _i1.SerializableModel {
  Accessory._({
    _i1.UuidValue? id,
    required this.userId,
    this.user,
    this.firearmId,
    this.firearm,
    this.purpose,
    required this.type,
    this.serialNumber,
    this.manufactureCountry,
    this.manufacturer,
    this.model,
    this.description,
    this.conservationState,
    this.usageType,
    this.dimensions,
    this.weight,
    this.color,
    this.finishMaterial,
    this.acquisitionDate,
    this.purchasePrice,
    this.invoiceNumber,
    this.invoiceEmissionDate,
    this.sellerData,
    this.registryBody,
    this.customizations,
    this.maintenanceHistory,
    this.images,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Accessory({
    _i1.UuidValue? id,
    required _i1.UuidValue userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    String? purpose,
    required _i4.AccessoryType type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _i5.ConservationState? conservationState,
    _i6.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _i7.RegistryBody? registryBody,
    String? customizations,
    String? maintenanceHistory,
    List<String>? images,
  }) = _AccessoryImpl;

  factory Accessory.fromJson(Map<String, dynamic> jsonSerialization) {
    return Accessory(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i8.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['user'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _i8.Protocol().deserialize<_i3.Firearm>(
              jsonSerialization['firearm'],
            ),
      purpose: jsonSerialization['purpose'] as String?,
      type: _i4.AccessoryType.fromJson((jsonSerialization['type'] as String)),
      serialNumber: jsonSerialization['serialNumber'] as String?,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String?,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      model: jsonSerialization['model'] as String?,
      description: jsonSerialization['description'] as String?,
      conservationState: jsonSerialization['conservationState'] == null
          ? null
          : _i5.ConservationState.fromJson(
              (jsonSerialization['conservationState'] as String),
            ),
      usageType: jsonSerialization['usageType'] == null
          ? null
          : _i6.UsageType.fromJson((jsonSerialization['usageType'] as String)),
      dimensions: jsonSerialization['dimensions'] as String?,
      weight: (jsonSerialization['weight'] as num?)?.toDouble(),
      color: jsonSerialization['color'] as String?,
      finishMaterial: jsonSerialization['finishMaterial'] as String?,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      invoiceNumber: jsonSerialization['invoiceNumber'] as String?,
      invoiceEmissionDate: jsonSerialization['invoiceEmissionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['invoiceEmissionDate'],
            ),
      sellerData: jsonSerialization['sellerData'] as String?,
      registryBody: jsonSerialization['registryBody'] == null
          ? null
          : _i7.RegistryBody.fromJson(
              (jsonSerialization['registryBody'] as String),
            ),
      customizations: jsonSerialization['customizations'] as String?,
      maintenanceHistory: jsonSerialization['maintenanceHistory'] as String?,
      images: jsonSerialization['images'] == null
          ? null
          : _i8.Protocol().deserialize<List<String>>(
              jsonSerialization['images'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue userId;

  _i2.UserProfile? user;

  _i1.UuidValue? firearmId;

  _i3.Firearm? firearm;

  String? purpose;

  _i4.AccessoryType type;

  String? serialNumber;

  String? manufactureCountry;

  String? manufacturer;

  String? model;

  String? description;

  _i5.ConservationState? conservationState;

  _i6.UsageType? usageType;

  String? dimensions;

  double? weight;

  String? color;

  String? finishMaterial;

  DateTime? acquisitionDate;

  double? purchasePrice;

  String? invoiceNumber;

  DateTime? invoiceEmissionDate;

  String? sellerData;

  _i7.RegistryBody? registryBody;

  String? customizations;

  String? maintenanceHistory;

  List<String>? images;

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Accessory copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    String? purpose,
    _i4.AccessoryType? type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _i5.ConservationState? conservationState,
    _i6.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _i7.RegistryBody? registryBody,
    String? customizations,
    String? maintenanceHistory,
    List<String>? images,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Accessory',
      'id': id.toJson(),
      'userId': userId.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      if (purpose != null) 'purpose': purpose,
      'type': type.toJson(),
      if (serialNumber != null) 'serialNumber': serialNumber,
      if (manufactureCountry != null) 'manufactureCountry': manufactureCountry,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (model != null) 'model': model,
      if (description != null) 'description': description,
      if (conservationState != null)
        'conservationState': conservationState?.toJson(),
      if (usageType != null) 'usageType': usageType?.toJson(),
      if (dimensions != null) 'dimensions': dimensions,
      if (weight != null) 'weight': weight,
      if (color != null) 'color': color,
      if (finishMaterial != null) 'finishMaterial': finishMaterial,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (invoiceNumber != null) 'invoiceNumber': invoiceNumber,
      if (invoiceEmissionDate != null)
        'invoiceEmissionDate': invoiceEmissionDate?.toJson(),
      if (sellerData != null) 'sellerData': sellerData,
      if (registryBody != null) 'registryBody': registryBody?.toJson(),
      if (customizations != null) 'customizations': customizations,
      if (maintenanceHistory != null) 'maintenanceHistory': maintenanceHistory,
      if (images != null) 'images': images?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AccessoryImpl extends Accessory {
  _AccessoryImpl({
    _i1.UuidValue? id,
    required _i1.UuidValue userId,
    _i2.UserProfile? user,
    _i1.UuidValue? firearmId,
    _i3.Firearm? firearm,
    String? purpose,
    required _i4.AccessoryType type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _i5.ConservationState? conservationState,
    _i6.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _i7.RegistryBody? registryBody,
    String? customizations,
    String? maintenanceHistory,
    List<String>? images,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         firearmId: firearmId,
         firearm: firearm,
         purpose: purpose,
         type: type,
         serialNumber: serialNumber,
         manufactureCountry: manufactureCountry,
         manufacturer: manufacturer,
         model: model,
         description: description,
         conservationState: conservationState,
         usageType: usageType,
         dimensions: dimensions,
         weight: weight,
         color: color,
         finishMaterial: finishMaterial,
         acquisitionDate: acquisitionDate,
         purchasePrice: purchasePrice,
         invoiceNumber: invoiceNumber,
         invoiceEmissionDate: invoiceEmissionDate,
         sellerData: sellerData,
         registryBody: registryBody,
         customizations: customizations,
         maintenanceHistory: maintenanceHistory,
         images: images,
       );

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Accessory copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    Object? user = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? purpose = _Undefined,
    _i4.AccessoryType? type,
    Object? serialNumber = _Undefined,
    Object? manufactureCountry = _Undefined,
    Object? manufacturer = _Undefined,
    Object? model = _Undefined,
    Object? description = _Undefined,
    Object? conservationState = _Undefined,
    Object? usageType = _Undefined,
    Object? dimensions = _Undefined,
    Object? weight = _Undefined,
    Object? color = _Undefined,
    Object? finishMaterial = _Undefined,
    Object? acquisitionDate = _Undefined,
    Object? purchasePrice = _Undefined,
    Object? invoiceNumber = _Undefined,
    Object? invoiceEmissionDate = _Undefined,
    Object? sellerData = _Undefined,
    Object? registryBody = _Undefined,
    Object? customizations = _Undefined,
    Object? maintenanceHistory = _Undefined,
    Object? images = _Undefined,
  }) {
    return Accessory(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserProfile? ? user : this.user?.copyWith(),
      firearmId: firearmId is _i1.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i3.Firearm? ? firearm : this.firearm?.copyWith(),
      purpose: purpose is String? ? purpose : this.purpose,
      type: type ?? this.type,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      manufactureCountry: manufactureCountry is String?
          ? manufactureCountry
          : this.manufactureCountry,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      model: model is String? ? model : this.model,
      description: description is String? ? description : this.description,
      conservationState: conservationState is _i5.ConservationState?
          ? conservationState
          : this.conservationState,
      usageType: usageType is _i6.UsageType? ? usageType : this.usageType,
      dimensions: dimensions is String? ? dimensions : this.dimensions,
      weight: weight is double? ? weight : this.weight,
      color: color is String? ? color : this.color,
      finishMaterial: finishMaterial is String?
          ? finishMaterial
          : this.finishMaterial,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      invoiceNumber: invoiceNumber is String?
          ? invoiceNumber
          : this.invoiceNumber,
      invoiceEmissionDate: invoiceEmissionDate is DateTime?
          ? invoiceEmissionDate
          : this.invoiceEmissionDate,
      sellerData: sellerData is String? ? sellerData : this.sellerData,
      registryBody: registryBody is _i7.RegistryBody?
          ? registryBody
          : this.registryBody,
      customizations: customizations is String?
          ? customizations
          : this.customizations,
      maintenanceHistory: maintenanceHistory is String?
          ? maintenanceHistory
          : this.maintenanceHistory,
      images: images is List<String>?
          ? images
          : this.images?.map((e0) => e0).toList(),
    );
  }
}
