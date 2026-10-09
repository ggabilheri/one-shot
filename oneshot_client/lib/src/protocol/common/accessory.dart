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
import '../common/user_profile.dart' as _izifjpv2;
import '../enums/accessory.enum.dart' as _iv3j3xuk;
import '../enums/conservation_state.enum.dart' as _im6njl07;
import '../enums/registry_body.enum.dart' as _ii1wmk2g;
import '../enums/usage_type.enum.dart' as _ivorkc39;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Accessory
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Accessory._({
    _isc.UuidValue? id,
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
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory Accessory({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    String? purpose,
    required _iv3j3xuk.AccessoryType type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _im6njl07.ConservationState? conservationState,
    _ivorkc39.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _ii1wmk2g.RegistryBody? registryBody,
    String? customizations,
    String? maintenanceHistory,
    List<String>? images,
  }) = _AccessoryImpl;

  factory Accessory.fromJson(Map<String, dynamic> jsonSerialization) {
    return Accessory(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
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
      purpose: jsonSerialization['purpose'] as String?,
      type: _iv3j3xuk.AccessoryType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      serialNumber: jsonSerialization['serialNumber'] as String?,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String?,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      model: jsonSerialization['model'] as String?,
      description: jsonSerialization['description'] as String?,
      conservationState: jsonSerialization['conservationState'] == null
          ? null
          : _im6njl07.ConservationState.fromJson(
              (jsonSerialization['conservationState'] as String),
            ),
      usageType: jsonSerialization['usageType'] == null
          ? null
          : _ivorkc39.UsageType.fromJson(
              (jsonSerialization['usageType'] as String),
            ),
      dimensions: jsonSerialization['dimensions'] as String?,
      weight: (jsonSerialization['weight'] as num?)?.toDouble(),
      color: jsonSerialization['color'] as String?,
      finishMaterial: jsonSerialization['finishMaterial'] as String?,
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      invoiceNumber: jsonSerialization['invoiceNumber'] as String?,
      invoiceEmissionDate: jsonSerialization['invoiceEmissionDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['invoiceEmissionDate'],
            ),
      sellerData: jsonSerialization['sellerData'] as String?,
      registryBody: jsonSerialization['registryBody'] == null
          ? null
          : _ii1wmk2g.RegistryBody.fromJson(
              (jsonSerialization['registryBody'] as String),
            ),
      customizations: jsonSerialization['customizations'] as String?,
      maintenanceHistory: jsonSerialization['maintenanceHistory'] as String?,
      images: jsonSerialization['images'] == null
          ? null
          : _itys55mc.Protocol().deserialize<List<String>>(
              jsonSerialization['images'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue userId;

  _izifjpv2.UserProfile? user;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  String? purpose;

  _iv3j3xuk.AccessoryType type;

  String? serialNumber;

  String? manufactureCountry;

  String? manufacturer;

  String? model;

  String? description;

  _im6njl07.ConservationState? conservationState;

  _ivorkc39.UsageType? usageType;

  String? dimensions;

  double? weight;

  String? color;

  String? finishMaterial;

  DateTime? acquisitionDate;

  double? purchasePrice;

  String? invoiceNumber;

  DateTime? invoiceEmissionDate;

  String? sellerData;

  _ii1wmk2g.RegistryBody? registryBody;

  String? customizations;

  String? maintenanceHistory;

  List<String>? images;

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Accessory copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    String? purpose,
    _iv3j3xuk.AccessoryType? type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _im6njl07.ConservationState? conservationState,
    _ivorkc39.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _ii1wmk2g.RegistryBody? registryBody,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Accessory',
      'id': id.toJson(),
      'userId': userId.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
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
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AccessoryImpl extends Accessory {
  _AccessoryImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    String? purpose,
    required _iv3j3xuk.AccessoryType type,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? description,
    _im6njl07.ConservationState? conservationState,
    _ivorkc39.UsageType? usageType,
    String? dimensions,
    double? weight,
    String? color,
    String? finishMaterial,
    DateTime? acquisitionDate,
    double? purchasePrice,
    String? invoiceNumber,
    DateTime? invoiceEmissionDate,
    String? sellerData,
    _ii1wmk2g.RegistryBody? registryBody,
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
  @_isc.useResult
  @override
  Accessory copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    Object? user = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    Object? purpose = _Undefined,
    _iv3j3xuk.AccessoryType? type,
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
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      firearmId: firearmId is _isc.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      purpose: purpose is String? ? purpose : this.purpose,
      type: type ?? this.type,
      serialNumber: serialNumber is String? ? serialNumber : this.serialNumber,
      manufactureCountry: manufactureCountry is String?
          ? manufactureCountry
          : this.manufactureCountry,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      model: model is String? ? model : this.model,
      description: description is String? ? description : this.description,
      conservationState: conservationState is _im6njl07.ConservationState?
          ? conservationState
          : this.conservationState,
      usageType: usageType is _ivorkc39.UsageType? ? usageType : this.usageType,
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
      registryBody: registryBody is _ii1wmk2g.RegistryBody?
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
