/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:oneshot_server/src/generated/protocol.dart' as _iwflrbqm;
import 'package:serverpod/serverpod.dart' as _is;
import '../common/user_profile.dart' as _izifjpv2;
import '../enums/conservation_state.enum.dart' as _im6njl07;
import '../enums/firearm_action.enum.dart' as _id0m3mr4;
import '../enums/firearm_purpose.enum.dart' as _ie635x89;
import '../enums/firearm_type.enum.dart' as _i5vdw3jb;
import '../enums/usage_type.enum.dart' as _ivorkc39;

abstract class Firearm
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Firearm._({
    _is.UuidValue? id,
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
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Firearm({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    required _ie635x89.FirearmPurpose purpose,
    required _i5vdw3jb.FirearmType type,
    required _id0m3mr4.FirearmAction action,
    required _ivorkc39.UsageType usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    String? bolt,
    String? frame,
    String? grip,
    required _im6njl07.ConservationState conservationState,
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
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      purpose: _ie635x89.FirearmPurpose.fromJson(
        (jsonSerialization['purpose'] as String),
      ),
      type: _i5vdw3jb.FirearmType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      action: _id0m3mr4.FirearmAction.fromJson(
        (jsonSerialization['action'] as String),
      ),
      usageType: _ivorkc39.UsageType.fromJson(
        (jsonSerialization['usageType'] as String),
      ),
      serialNumber: jsonSerialization['serialNumber'] as String,
      manufactureCountry: jsonSerialization['manufactureCountry'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String,
      model: jsonSerialization['model'] as String,
      bolt: jsonSerialization['bolt'] as String?,
      frame: jsonSerialization['frame'] as String?,
      grip: jsonSerialization['grip'] as String?,
      conservationState: _im6njl07.ConservationState.fromJson(
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
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      saleDate: jsonSerialization['saleDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['saleDate']),
      salePrice: (jsonSerialization['salePrice'] as num?)?.toDouble(),
      buyerData: jsonSerialization['buyerData'] as String?,
      customizations: jsonSerialization['customizations'] as String?,
      images: jsonSerialization['images'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<List<String>>(
              jsonSerialization['images'],
            ),
      cleaningHistory: jsonSerialization['cleaningHistory'] as String?,
      maintenanceHistory: jsonSerialization['maintenanceHistory'] as String?,
      totalShots: jsonSerialization['totalShots'] as int?,
    );
  }

  static final t = FirearmTable();

  static const db = FirearmRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _ie635x89.FirearmPurpose purpose;

  _i5vdw3jb.FirearmType type;

  _id0m3mr4.FirearmAction action;

  _ivorkc39.UsageType usageType;

  String serialNumber;

  String manufactureCountry;

  String manufacturer;

  String model;

  String? bolt;

  String? frame;

  String? grip;

  _im6njl07.ConservationState conservationState;

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

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Firearm]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Firearm copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _ie635x89.FirearmPurpose? purpose,
    _i5vdw3jb.FirearmType? type,
    _id0m3mr4.FirearmAction? action,
    _ivorkc39.UsageType? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    String? bolt,
    String? frame,
    String? grip,
    _im6njl07.ConservationState? conservationState,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Firearm',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
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

  static FirearmInclude include({_izifjpv2.UserProfileInclude? user}) {
    return FirearmInclude._(user: user);
  }

  static FirearmIncludeList includeList({
    _is.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    FirearmInclude? include,
  }) {
    return FirearmIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FirearmImpl extends Firearm {
  _FirearmImpl({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    required _ie635x89.FirearmPurpose purpose,
    required _i5vdw3jb.FirearmType type,
    required _id0m3mr4.FirearmAction action,
    required _ivorkc39.UsageType usageType,
    required String serialNumber,
    required String manufactureCountry,
    required String manufacturer,
    required String model,
    String? bolt,
    String? frame,
    String? grip,
    required _im6njl07.ConservationState conservationState,
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
  @_is.useResult
  @override
  Firearm copyWith({
    _is.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    _ie635x89.FirearmPurpose? purpose,
    _i5vdw3jb.FirearmType? type,
    _id0m3mr4.FirearmAction? action,
    _ivorkc39.UsageType? usageType,
    String? serialNumber,
    String? manufactureCountry,
    String? manufacturer,
    String? model,
    Object? bolt = _Undefined,
    Object? frame = _Undefined,
    Object? grip = _Undefined,
    _im6njl07.ConservationState? conservationState,
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
      userId: userId is _is.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
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

class FirearmUpdateTable extends _is.UpdateTable<FirearmTable> {
  FirearmUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue? value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_ie635x89.FirearmPurpose, _ie635x89.FirearmPurpose> purpose(
    _ie635x89.FirearmPurpose value,
  ) => _is.ColumnValue(table.purpose, value);

  _is.ColumnValue<_i5vdw3jb.FirearmType, _i5vdw3jb.FirearmType> type(
    _i5vdw3jb.FirearmType value,
  ) => _is.ColumnValue(table.type, value);

  _is.ColumnValue<_id0m3mr4.FirearmAction, _id0m3mr4.FirearmAction> action(
    _id0m3mr4.FirearmAction value,
  ) => _is.ColumnValue(table.action, value);

  _is.ColumnValue<_ivorkc39.UsageType, _ivorkc39.UsageType> usageType(
    _ivorkc39.UsageType value,
  ) => _is.ColumnValue(table.usageType, value);

  _is.ColumnValue<String, String> serialNumber(String value) =>
      _is.ColumnValue(table.serialNumber, value);

  _is.ColumnValue<String, String> manufactureCountry(String value) =>
      _is.ColumnValue(table.manufactureCountry, value);

  _is.ColumnValue<String, String> manufacturer(String value) =>
      _is.ColumnValue(table.manufacturer, value);

  _is.ColumnValue<String, String> model(String value) =>
      _is.ColumnValue(table.model, value);

  _is.ColumnValue<String, String> bolt(String? value) =>
      _is.ColumnValue(table.bolt, value);

  _is.ColumnValue<String, String> frame(String? value) =>
      _is.ColumnValue(table.frame, value);

  _is.ColumnValue<String, String> grip(String? value) =>
      _is.ColumnValue(table.grip, value);

  _is.ColumnValue<_im6njl07.ConservationState, _im6njl07.ConservationState>
  conservationState(_im6njl07.ConservationState value) =>
      _is.ColumnValue(table.conservationState, value);

  _is.ColumnValue<String, String> caliber(String value) =>
      _is.ColumnValue(table.caliber, value);

  _is.ColumnValue<int, int> barrelsCount(int? value) =>
      _is.ColumnValue(table.barrelsCount, value);

  _is.ColumnValue<String, String> barrelLength(String? value) =>
      _is.ColumnValue(table.barrelLength, value);

  _is.ColumnValue<String, String> soulType(String? value) =>
      _is.ColumnValue(table.soulType, value);

  _is.ColumnValue<String, String> sightType(String? value) =>
      _is.ColumnValue(table.sightType, value);

  _is.ColumnValue<int, int> riflingCount(int? value) =>
      _is.ColumnValue(table.riflingCount, value);

  _is.ColumnValue<String, String> riflingDirection(String? value) =>
      _is.ColumnValue(table.riflingDirection, value);

  _is.ColumnValue<int, int> magazineCapacity(int value) =>
      _is.ColumnValue(table.magazineCapacity, value);

  _is.ColumnValue<int, int> magazineCount(int? value) =>
      _is.ColumnValue(table.magazineCount, value);

  _is.ColumnValue<String, String> dimensions(String? value) =>
      _is.ColumnValue(table.dimensions, value);

  _is.ColumnValue<double, double> weight(double? value) =>
      _is.ColumnValue(table.weight, value);

  _is.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _is.ColumnValue(table.acquisitionDate, value);

  _is.ColumnValue<double, double> purchasePrice(double? value) =>
      _is.ColumnValue(table.purchasePrice, value);

  _is.ColumnValue<DateTime, DateTime> saleDate(DateTime? value) =>
      _is.ColumnValue(table.saleDate, value);

  _is.ColumnValue<double, double> salePrice(double? value) =>
      _is.ColumnValue(table.salePrice, value);

  _is.ColumnValue<String, String> buyerData(String? value) =>
      _is.ColumnValue(table.buyerData, value);

  _is.ColumnValue<String, String> customizations(String? value) =>
      _is.ColumnValue(table.customizations, value);

  _is.ColumnValue<List<String>, List<String>> images(List<String>? value) =>
      _is.ColumnValue(table.images, value);

  _is.ColumnValue<String, String> cleaningHistory(String? value) =>
      _is.ColumnValue(table.cleaningHistory, value);

  _is.ColumnValue<String, String> maintenanceHistory(String? value) =>
      _is.ColumnValue(table.maintenanceHistory, value);

  _is.ColumnValue<int, int> totalShots(int? value) =>
      _is.ColumnValue(table.totalShots, value);
}

class FirearmTable extends _is.Table<_is.UuidValue> {
  FirearmTable({super.tableRelation}) : super(tableName: 'firearms') {
    updateTable = FirearmUpdateTable(this);
    userId = _is.ColumnUuid('userId', this);
    purpose = _is.ColumnEnum('purpose', this, _is.EnumSerialization.byName);
    type = _is.ColumnEnum('type', this, _is.EnumSerialization.byName);
    action = _is.ColumnEnum('action', this, _is.EnumSerialization.byName);
    usageType = _is.ColumnEnum('usageType', this, _is.EnumSerialization.byName);
    serialNumber = _is.ColumnString('serialNumber', this);
    manufactureCountry = _is.ColumnString('manufactureCountry', this);
    manufacturer = _is.ColumnString('manufacturer', this);
    model = _is.ColumnString('model', this);
    bolt = _is.ColumnString('bolt', this);
    frame = _is.ColumnString('frame', this);
    grip = _is.ColumnString('grip', this);
    conservationState = _is.ColumnEnum(
      'conservationState',
      this,
      _is.EnumSerialization.byName,
    );
    caliber = _is.ColumnString('caliber', this);
    barrelsCount = _is.ColumnInt('barrelsCount', this);
    barrelLength = _is.ColumnString('barrelLength', this);
    soulType = _is.ColumnString('soulType', this);
    sightType = _is.ColumnString('sightType', this);
    riflingCount = _is.ColumnInt('riflingCount', this);
    riflingDirection = _is.ColumnString('riflingDirection', this);
    magazineCapacity = _is.ColumnInt('magazineCapacity', this);
    magazineCount = _is.ColumnInt('magazineCount', this);
    dimensions = _is.ColumnString('dimensions', this);
    weight = _is.ColumnDouble('weight', this);
    acquisitionDate = _is.ColumnDateTime('acquisitionDate', this);
    purchasePrice = _is.ColumnDouble('purchasePrice', this);
    saleDate = _is.ColumnDateTime('saleDate', this);
    salePrice = _is.ColumnDouble('salePrice', this);
    buyerData = _is.ColumnString('buyerData', this);
    customizations = _is.ColumnString('customizations', this);
    images = _is.ColumnSerializable<List<String>>('images', this);
    cleaningHistory = _is.ColumnString('cleaningHistory', this);
    maintenanceHistory = _is.ColumnString('maintenanceHistory', this);
    totalShots = _is.ColumnInt('totalShots', this);
  }

  late final FirearmUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnEnum<_ie635x89.FirearmPurpose> purpose;

  late final _is.ColumnEnum<_i5vdw3jb.FirearmType> type;

  late final _is.ColumnEnum<_id0m3mr4.FirearmAction> action;

  late final _is.ColumnEnum<_ivorkc39.UsageType> usageType;

  late final _is.ColumnString serialNumber;

  late final _is.ColumnString manufactureCountry;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString model;

  late final _is.ColumnString bolt;

  late final _is.ColumnString frame;

  late final _is.ColumnString grip;

  late final _is.ColumnEnum<_im6njl07.ConservationState> conservationState;

  late final _is.ColumnString caliber;

  late final _is.ColumnInt barrelsCount;

  late final _is.ColumnString barrelLength;

  late final _is.ColumnString soulType;

  late final _is.ColumnString sightType;

  late final _is.ColumnInt riflingCount;

  late final _is.ColumnString riflingDirection;

  late final _is.ColumnInt magazineCapacity;

  late final _is.ColumnInt magazineCount;

  late final _is.ColumnString dimensions;

  late final _is.ColumnDouble weight;

  late final _is.ColumnDateTime acquisitionDate;

  late final _is.ColumnDouble purchasePrice;

  late final _is.ColumnDateTime saleDate;

  late final _is.ColumnDouble salePrice;

  late final _is.ColumnString buyerData;

  late final _is.ColumnString customizations;

  late final _is.ColumnSerializable<List<String>> images;

  late final _is.ColumnString cleaningHistory;

  late final _is.ColumnString maintenanceHistory;

  late final _is.ColumnInt totalShots;

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: Firearm.t.userId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    purpose,
    type,
    action,
    usageType,
    serialNumber,
    manufactureCountry,
    manufacturer,
    model,
    bolt,
    frame,
    grip,
    conservationState,
    caliber,
    barrelsCount,
    barrelLength,
    soulType,
    sightType,
    riflingCount,
    riflingDirection,
    magazineCapacity,
    magazineCount,
    dimensions,
    weight,
    acquisitionDate,
    purchasePrice,
    saleDate,
    salePrice,
    buyerData,
    customizations,
    images,
    cleaningHistory,
    maintenanceHistory,
    totalShots,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class FirearmInclude extends _is.IncludeObject {
  FirearmInclude._({_izifjpv2.UserProfileInclude? user}) {
    _user = user;
  }

  _izifjpv2.UserProfileInclude? _user;

  @override
  Map<String, _is.Include?> get includes => {'user': _user};

  @override
  _is.Table<_is.UuidValue> get table => Firearm.t;
}

class FirearmIncludeList extends _is.IncludeList {
  FirearmIncludeList._({
    _is.WhereExpressionBuilder<FirearmTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Firearm.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Firearm.t;
}

class FirearmRepository {
  const FirearmRepository._();

  final attachRow = const FirearmAttachRowRepository._();

  final detachRow = const FirearmDetachRowRepository._();

  /// Returns a list of [Firearm]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Firearm>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    _is.Transaction? transaction,
    FirearmInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Firearm] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Firearm?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FirearmTable>? where,
    int? offset,
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    _is.Transaction? transaction,
    FirearmInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Firearm] by its [id] or null if no such row exists.
  Future<Firearm?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    FirearmInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Firearm>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Firearm]s in the list and returns the inserted rows.
  ///
  /// The returned [Firearm]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> insert(
    _is.DatabaseSession session,
    List<Firearm> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Firearm>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Firearm] and returns the inserted row.
  ///
  /// The returned [Firearm] will have its `id` field set.
  Future<Firearm> insertRow(
    _is.DatabaseSession session,
    Firearm row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Firearm>(row, transaction: transaction);
  }

  /// Upserts all [Firearm]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [Firearm]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> upsert(
    _is.DatabaseSession session,
    List<Firearm> rows, {
    required _is.ColumnSelections<FirearmTable> conflictColumns,
    _is.ColumnSelections<FirearmTable>? updateColumns,
    _is.WhereExpressionBuilder<FirearmTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Firearm>(
      rows,
      conflictColumns: conflictColumns(Firearm.t),
      updateColumns: updateColumns?.call(Firearm.t),
      updateWhere: updateWhere?.call(Firearm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Firearm] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [Firearm] will have its `id` field set.
  Future<Firearm?> upsertRow(
    _is.DatabaseSession session,
    Firearm row, {
    required _is.ColumnSelections<FirearmTable> conflictColumns,
    _is.ColumnSelections<FirearmTable>? updateColumns,
    _is.WhereExpressionBuilder<FirearmTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Firearm>(
      row,
      conflictColumns: conflictColumns(Firearm.t),
      updateColumns: updateColumns?.call(Firearm.t),
      updateWhere: updateWhere?.call(Firearm.t),
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> update(
    _is.DatabaseSession session,
    List<Firearm> rows, {
    _is.ColumnSelections<FirearmTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Firearm>(
      rows,
      columns: columns?.call(Firearm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Firearm]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Firearm> updateRow(
    _is.DatabaseSession session,
    Firearm row, {
    _is.ColumnSelections<FirearmTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Firearm>(
      row,
      columns: columns?.call(Firearm.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Firearm] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Firearm?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Firearm>(
      id,
      columnValues: columnValues(Firearm.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<FirearmTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Firearm>(
      columnValues: columnValues(Firearm.t.updateTable),
      where: where(Firearm.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Firearm]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> delete(
    _is.DatabaseSession session,
    List<Firearm> rows, {
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Firearm>(
      rows,
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Firearm].
  Future<Firearm> deleteRow(
    _is.DatabaseSession session,
    Firearm row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Firearm>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Firearm>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FirearmTable> where,
    _is.OrderByBuilder<FirearmTable>? orderBy,
    _is.OrderByListBuilder<FirearmTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Firearm>(
      where: where(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Firearm>(
      where: where?.call(Firearm.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Firearm] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<FirearmTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Firearm>(
      where: where(Firearm.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class FirearmAttachRowRepository {
  const FirearmAttachRowRepository._();

  /// Creates a relation between the given [Firearm] and [UserProfile]
  /// by setting the [Firearm]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _is.DatabaseSession session,
    Firearm firearm,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
  }) async {
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $firearm = firearm.copyWith(userId: user.id);
    await session.db.updateRow<Firearm>(
      $firearm,
      columns: [Firearm.t.userId],
      transaction: transaction,
    );
  }
}

class FirearmDetachRowRepository {
  const FirearmDetachRowRepository._();

  /// Detaches the relation between this [Firearm] and the [UserProfile] set in `user`
  /// by setting the [Firearm]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _is.DatabaseSession session,
    Firearm firearm, {
    _is.Transaction? transaction,
  }) async {
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $firearm = firearm.copyWith(userId: null);
    await session.db.updateRow<Firearm>(
      $firearm,
      columns: [Firearm.t.userId],
      transaction: transaction,
    );
  }
}
