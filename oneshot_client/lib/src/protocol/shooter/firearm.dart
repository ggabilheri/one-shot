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
import '../enums/firearm_purpose.enum.dart' as _i3;
import '../enums/firearm_type.enum.dart' as _i4;
import '../enums/firearm_action.enum.dart' as _i5;
import '../enums/usage_type.enum.dart' as _i6;
import '../enums/conservation_state.enum.dart' as _i7;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i8;

abstract class Firearm implements _i1.SerializableModel {
  Firearm._({
    _i1.UuidValue? id,
    this.userId,
    this.user,
    required this.purpose,
    required this.type,
    required this.action,
    required this.usageType,
    required this.serialNumber,
    required this.manufactureCountry,
    required this.manufacturer,
    required this.model,
    this.bolt,
    this.frame,
    this.grip,
    required this.conservationState,
    required this.caliber,
    this.barrelsCount,
    this.barrelLength,
    this.soulType,
    this.sightType,
    this.riflingCount,
    this.riflingDirection,
    required this.magazineCapacity,
    this.magazineCount,
    this.dimensions,
    this.weight,
    this.acquisitionDate,
    this.purchasePrice,
    this.saleDate,
    this.salePrice,
    this.buyerData,
    this.customizations,
    this.images,
    this.cleaningHistory,
    this.maintenanceHistory,
    this.totalShots,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Firearm({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    required _i3.FirearmPurpose purpose,
    required _i4.FirearmType type,
    required _i5.FirearmAction action,
    required _i6.UsageType usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    String? bolt,
    String? frame,
    String? grip,
    required _i7.ConservationState conservationState,
    required String caliber,
    int? barrelsCount,
    String? barrelLength,
    String? soulType,
    String? sightType,
    int? riflingCount,
    String? riflingDirection,
    required int magazineCapacity,
    int? magazineCount,
    String? dimensions,
    double? weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    String? buyerData,
    String? customizations,
    List<String>? images,
    String? cleaningHistory,
    String? maintenanceHistory,
    int? totalShots,
  }) = _FirearmImpl;

  factory Firearm.fromJson(Map<String, dynamic> jsonSerialization) {
    return Firearm(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i8.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['user'],
            ),
      purpose: _i3.FirearmPurpose.fromJson(
        (jsonSerialization['purpose'] as String),
      ),
      type: _i4.FirearmType.fromJson((jsonSerialization['type'] as String)),
      action: _i5.FirearmAction.fromJson(
        (jsonSerialization['action'] as String),
      ),
      usageType: _i6.UsageType.fromJson(
        (jsonSerialization['usageType'] as String),
      ),
      serialNumber: jsonSerialization['serialNumber'] as String,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      bolt: jsonSerialization['bolt'] as String?,
      frame: jsonSerialization['frame'] as String?,
      grip: jsonSerialization['grip'] as String?,
      conservationState: _i7.ConservationState.fromJson(
        (jsonSerialization['conservationState'] as String),
      ),
      caliber: jsonSerialization['caliber'] as String,
      barrelsCount: jsonSerialization['barrelsCount'] as int?,
      barrelLength: jsonSerialization['barrelLength'] as String?,
      soulType: jsonSerialization['soulType'] as String?,
      sightType: jsonSerialization['sightType'] as String?,
      riflingCount: jsonSerialization['riflingCount'] as int?,
      riflingDirection: jsonSerialization['riflingDirection'] as String?,
      magazineCapacity: jsonSerialization['magazineCapacity'] as int,
      magazineCount: jsonSerialization['magazineCount'] as int?,
      dimensions: jsonSerialization['dimensions'] as String?,
      weight: (jsonSerialization['weight'] as num?)?.toDouble(),
      acquisitionDate: jsonSerialization['acquisitionDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      saleDate: jsonSerialization['saleDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['saleDate']),
      salePrice: (jsonSerialization['salePrice'] as num?)?.toDouble(),
      buyerData: jsonSerialization['buyerData'] as String?,
      customizations: jsonSerialization['customizations'] as String?,
      images: jsonSerialization['images'] == null
          ? null
          : _i8.Protocol().deserialize<List<String>>(
              jsonSerialization['images'],
            ),
      cleaningHistory: jsonSerialization['cleaningHistory'] as String?,
      maintenanceHistory: jsonSerialization['maintenanceHistory'] as String?,
      totalShots: jsonSerialization['totalShots'] as int?,
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i1.UuidValue? userId;

  _i2.UserProfile? user;

  _i3.FirearmPurpose purpose;

  _i4.FirearmType type;

  _i5.FirearmAction action;

  _i6.UsageType usageType;

  String serialNumber;

  String manufactureCountry;

  String manufacturer;

  String model;

  String? bolt;

  String? frame;

  String? grip;

  _i7.ConservationState conservationState;

  String caliber;

  int? barrelsCount;

  String? barrelLength;

  String? soulType;

  String? sightType;

  int? riflingCount;

  String? riflingDirection;

  int magazineCapacity;

  int? magazineCount;

  String? dimensions;

  double? weight;

  DateTime? acquisitionDate;

  double? purchasePrice;

  DateTime? saleDate;

  double? salePrice;

  String? buyerData;

  String? customizations;

  List<String>? images;

  String? cleaningHistory;

  String? maintenanceHistory;

  int? totalShots;

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Firearm copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    _i3.FirearmPurpose? purpose,
    _i4.FirearmType? type,
    _i5.FirearmAction? action,
    _i6.UsageType? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? bolt,
    String? frame,
    String? grip,
    _i7.ConservationState? conservationState,
    String? caliber,
    int? barrelsCount,
    String? barrelLength,
    String? soulType,
    String? sightType,
    int? riflingCount,
    String? riflingDirection,
    int? magazineCapacity,
    int? magazineCount,
    String? dimensions,
    double? weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    String? buyerData,
    String? customizations,
    List<String>? images,
    String? cleaningHistory,
    String? maintenanceHistory,
    int? totalShots,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Firearm',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      'purpose': purpose.toJson(),
      'type': type.toJson(),
      'action': action.toJson(),
      'usageType': usageType.toJson(),
      'serialNumber': serialNumber,
      'manufactureCountry': manufactureCountry,
      'manufacturer': manufacturer,
      'model': model,
      if (bolt != null) 'bolt': bolt,
      if (frame != null) 'frame': frame,
      if (grip != null) 'grip': grip,
      'conservationState': conservationState.toJson(),
      'caliber': caliber,
      if (barrelsCount != null) 'barrelsCount': barrelsCount,
      if (barrelLength != null) 'barrelLength': barrelLength,
      if (soulType != null) 'soulType': soulType,
      if (sightType != null) 'sightType': sightType,
      if (riflingCount != null) 'riflingCount': riflingCount,
      if (riflingDirection != null) 'riflingDirection': riflingDirection,
      'magazineCapacity': magazineCapacity,
      if (magazineCount != null) 'magazineCount': magazineCount,
      if (dimensions != null) 'dimensions': dimensions,
      if (weight != null) 'weight': weight,
      if (acquisitionDate != null) 'acquisitionDate': acquisitionDate?.toJson(),
      if (purchasePrice != null) 'purchasePrice': purchasePrice,
      if (saleDate != null) 'saleDate': saleDate?.toJson(),
      if (salePrice != null) 'salePrice': salePrice,
      if (buyerData != null) 'buyerData': buyerData,
      if (customizations != null) 'customizations': customizations,
      if (images != null) 'images': images?.toJson(),
      if (cleaningHistory != null) 'cleaningHistory': cleaningHistory,
      if (maintenanceHistory != null) 'maintenanceHistory': maintenanceHistory,
      if (totalShots != null) 'totalShots': totalShots,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FirearmImpl extends Firearm {
  _FirearmImpl({
    _i1.UuidValue? id,
    _i1.UuidValue? userId,
    _i2.UserProfile? user,
    required _i3.FirearmPurpose purpose,
    required _i4.FirearmType type,
    required _i5.FirearmAction action,
    required _i6.UsageType usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    String? bolt,
    String? frame,
    String? grip,
    required _i7.ConservationState conservationState,
    required String caliber,
    int? barrelsCount,
    String? barrelLength,
    String? soulType,
    String? sightType,
    int? riflingCount,
    String? riflingDirection,
    required int magazineCapacity,
    int? magazineCount,
    String? dimensions,
    double? weight,
    DateTime? acquisitionDate,
    double? purchasePrice,
    DateTime? saleDate,
    double? salePrice,
    String? buyerData,
    String? customizations,
    List<String>? images,
    String? cleaningHistory,
    String? maintenanceHistory,
    int? totalShots,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         purpose: purpose,
         type: type,
         action: action,
         usageType: usageType,
         serialNumber: serialNumber,
         manufactureCountry: manufactureCountry,
         manufacturer: manufacturer,
         model: model,
         bolt: bolt,
         frame: frame,
         grip: grip,
         conservationState: conservationState,
         caliber: caliber,
         barrelsCount: barrelsCount,
         barrelLength: barrelLength,
         soulType: soulType,
         sightType: sightType,
         riflingCount: riflingCount,
         riflingDirection: riflingDirection,
         magazineCapacity: magazineCapacity,
         magazineCount: magazineCount,
         dimensions: dimensions,
         weight: weight,
         acquisitionDate: acquisitionDate,
         purchasePrice: purchasePrice,
         saleDate: saleDate,
         salePrice: salePrice,
         buyerData: buyerData,
         customizations: customizations,
         images: images,
         cleaningHistory: cleaningHistory,
         maintenanceHistory: maintenanceHistory,
         totalShots: totalShots,
       );

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Firearm copyWith({
    _i1.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    _i3.FirearmPurpose? purpose,
    _i4.FirearmType? type,
    _i5.FirearmAction? action,
    _i6.UsageType? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    Object? bolt = _Undefined,
    Object? frame = _Undefined,
    Object? grip = _Undefined,
    _i7.ConservationState? conservationState,
    String? caliber,
    Object? barrelsCount = _Undefined,
    Object? barrelLength = _Undefined,
    Object? soulType = _Undefined,
    Object? sightType = _Undefined,
    Object? riflingCount = _Undefined,
    Object? riflingDirection = _Undefined,
    int? magazineCapacity,
    Object? magazineCount = _Undefined,
    Object? dimensions = _Undefined,
    Object? weight = _Undefined,
    Object? acquisitionDate = _Undefined,
    Object? purchasePrice = _Undefined,
    Object? saleDate = _Undefined,
    Object? salePrice = _Undefined,
    Object? buyerData = _Undefined,
    Object? customizations = _Undefined,
    Object? images = _Undefined,
    Object? cleaningHistory = _Undefined,
    Object? maintenanceHistory = _Undefined,
    Object? totalShots = _Undefined,
  }) {
    return Firearm(
      id: id ?? this.id,
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i2.UserProfile? ? user : this.user?.copyWith(),
      purpose: purpose ?? this.purpose,
      type: type ?? this.type,
      action: action ?? this.action,
      usageType: usageType ?? this.usageType,
      serialNumber: serialNumber ?? this.serialNumber,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      bolt: bolt is String? ? bolt : this.bolt,
      frame: frame is String? ? frame : this.frame,
      grip: grip is String? ? grip : this.grip,
      conservationState: conservationState ?? this.conservationState,
      caliber: caliber ?? this.caliber,
      barrelsCount: barrelsCount is int? ? barrelsCount : this.barrelsCount,
      barrelLength: barrelLength is String? ? barrelLength : this.barrelLength,
      soulType: soulType is String? ? soulType : this.soulType,
      sightType: sightType is String? ? sightType : this.sightType,
      riflingCount: riflingCount is int? ? riflingCount : this.riflingCount,
      riflingDirection: riflingDirection is String?
          ? riflingDirection
          : this.riflingDirection,
      magazineCapacity: magazineCapacity ?? this.magazineCapacity,
      magazineCount: magazineCount is int? ? magazineCount : this.magazineCount,
      dimensions: dimensions is String? ? dimensions : this.dimensions,
      weight: weight is double? ? weight : this.weight,
      acquisitionDate: acquisitionDate is DateTime?
          ? acquisitionDate
          : this.acquisitionDate,
      purchasePrice: purchasePrice is double?
          ? purchasePrice
          : this.purchasePrice,
      saleDate: saleDate is DateTime? ? saleDate : this.saleDate,
      salePrice: salePrice is double? ? salePrice : this.salePrice,
      buyerData: buyerData is String? ? buyerData : this.buyerData,
      customizations: customizations is String?
          ? customizations
          : this.customizations,
      images: images is List<String>?
          ? images
          : this.images?.map((e0) => e0).toList(),
      cleaningHistory: cleaningHistory is String?
          ? cleaningHistory
          : this.cleaningHistory,
      maintenanceHistory: maintenanceHistory is String?
          ? maintenanceHistory
          : this.maintenanceHistory,
      totalShots: totalShots is int? ? totalShots : this.totalShots,
    );
  }
}
