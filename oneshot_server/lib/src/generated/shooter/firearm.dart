/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../common/user_profile.dart' as _i2;
import '../enums/firearm_purpose.enum.dart' as _i3;
import '../enums/firearm_type.enum.dart' as _i4;
import '../enums/firearm_action.enum.dart' as _i5;
import '../enums/usage_type.enum.dart' as _i6;
import '../enums/conservation_state.enum.dart' as _i7;
import 'package:oneshot_server/src/generated/protocol.dart' as _i8;

abstract class Firearm
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = FirearmTable();

  static const db = FirearmRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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

  static FirearmInclude include({_i2.UserProfileInclude? user}) {
    return FirearmInclude._(user: user);
  }

  static FirearmIncludeList includeList({
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    FirearmInclude? include,
  }) {
    return FirearmIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Firearm.t),
      include: include,
    );
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

class FirearmUpdateTable extends _i1.UpdateTable<FirearmTable> {
  FirearmUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<_i3.FirearmPurpose, _i3.FirearmPurpose> purpose(
    _i3.FirearmPurpose value,
  ) => _i1.ColumnValue(
    table.purpose,
    value,
  );

  _i1.ColumnValue<_i4.FirearmType, _i4.FirearmType> type(
    _i4.FirearmType value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<_i5.FirearmAction, _i5.FirearmAction> action(
    _i5.FirearmAction value,
  ) => _i1.ColumnValue(
    table.action,
    value,
  );

  _i1.ColumnValue<_i6.UsageType, _i6.UsageType> usageType(
    _i6.UsageType value,
  ) => _i1.ColumnValue(
    table.usageType,
    value,
  );

  _i1.ColumnValue<String, String> serialNumber(String value) => _i1.ColumnValue(
    table.serialNumber,
    value,
  );

  _i1.ColumnValue<String, String> manufactureCountry(String value) =>
      _i1.ColumnValue(
        table.manufactureCountry,
        value,
      );

  _i1.ColumnValue<String, String> manufacturer(String value) => _i1.ColumnValue(
    table.manufacturer,
    value,
  );

  _i1.ColumnValue<String, String> model(String value) => _i1.ColumnValue(
    table.model,
    value,
  );

  _i1.ColumnValue<String, String> bolt(String? value) => _i1.ColumnValue(
    table.bolt,
    value,
  );

  _i1.ColumnValue<String, String> frame(String? value) => _i1.ColumnValue(
    table.frame,
    value,
  );

  _i1.ColumnValue<String, String> grip(String? value) => _i1.ColumnValue(
    table.grip,
    value,
  );

  _i1.ColumnValue<_i7.ConservationState, _i7.ConservationState>
  conservationState(_i7.ConservationState value) => _i1.ColumnValue(
    table.conservationState,
    value,
  );

  _i1.ColumnValue<String, String> caliber(String value) => _i1.ColumnValue(
    table.caliber,
    value,
  );

  _i1.ColumnValue<int, int> barrelsCount(int? value) => _i1.ColumnValue(
    table.barrelsCount,
    value,
  );

  _i1.ColumnValue<String, String> barrelLength(String? value) =>
      _i1.ColumnValue(
        table.barrelLength,
        value,
      );

  _i1.ColumnValue<String, String> soulType(String? value) => _i1.ColumnValue(
    table.soulType,
    value,
  );

  _i1.ColumnValue<String, String> sightType(String? value) => _i1.ColumnValue(
    table.sightType,
    value,
  );

  _i1.ColumnValue<int, int> riflingCount(int? value) => _i1.ColumnValue(
    table.riflingCount,
    value,
  );

  _i1.ColumnValue<String, String> riflingDirection(String? value) =>
      _i1.ColumnValue(
        table.riflingDirection,
        value,
      );

  _i1.ColumnValue<int, int> magazineCapacity(int value) => _i1.ColumnValue(
    table.magazineCapacity,
    value,
  );

  _i1.ColumnValue<int, int> magazineCount(int? value) => _i1.ColumnValue(
    table.magazineCount,
    value,
  );

  _i1.ColumnValue<String, String> dimensions(String? value) => _i1.ColumnValue(
    table.dimensions,
    value,
  );

  _i1.ColumnValue<double, double> weight(double? value) => _i1.ColumnValue(
    table.weight,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _i1.ColumnValue(
        table.acquisitionDate,
        value,
      );

  _i1.ColumnValue<double, double> purchasePrice(double? value) =>
      _i1.ColumnValue(
        table.purchasePrice,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> saleDate(DateTime? value) =>
      _i1.ColumnValue(
        table.saleDate,
        value,
      );

  _i1.ColumnValue<double, double> salePrice(double? value) => _i1.ColumnValue(
    table.salePrice,
    value,
  );

  _i1.ColumnValue<String, String> buyerData(String? value) => _i1.ColumnValue(
    table.buyerData,
    value,
  );

  _i1.ColumnValue<String, String> customizations(String? value) =>
      _i1.ColumnValue(
        table.customizations,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> images(List<String>? value) =>
      _i1.ColumnValue(
        table.images,
        value,
      );

  _i1.ColumnValue<String, String> cleaningHistory(String? value) =>
      _i1.ColumnValue(
        table.cleaningHistory,
        value,
      );

  _i1.ColumnValue<String, String> maintenanceHistory(String? value) =>
      _i1.ColumnValue(
        table.maintenanceHistory,
        value,
      );

  _i1.ColumnValue<int, int> totalShots(int? value) => _i1.ColumnValue(
    table.totalShots,
    value,
  );
}

class FirearmTable extends _i1.Table<_i1.UuidValue> {
  FirearmTable({super.tableRelation}) : super(tableName: 'firearms') {
    updateTable = FirearmUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    purpose = _i1.ColumnEnum(
      'purpose',
      this,
      _i1.EnumSerialization.byName,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    action = _i1.ColumnEnum(
      'action',
      this,
      _i1.EnumSerialization.byName,
    );
    usageType = _i1.ColumnEnum(
      'usageType',
      this,
      _i1.EnumSerialization.byName,
    );
    serialNumber = _i1.ColumnString(
      'serialNumber',
      this,
    );
    manufactureCountry = _i1.ColumnString(
      'manufactureCountry',
      this,
    );
    manufacturer = _i1.ColumnString(
      'manufacturer',
      this,
    );
    model = _i1.ColumnString(
      'model',
      this,
    );
    bolt = _i1.ColumnString(
      'bolt',
      this,
    );
    frame = _i1.ColumnString(
      'frame',
      this,
    );
    grip = _i1.ColumnString(
      'grip',
      this,
    );
    conservationState = _i1.ColumnEnum(
      'conservationState',
      this,
      _i1.EnumSerialization.byName,
    );
    caliber = _i1.ColumnString(
      'caliber',
      this,
    );
    barrelsCount = _i1.ColumnInt(
      'barrelsCount',
      this,
    );
    barrelLength = _i1.ColumnString(
      'barrelLength',
      this,
    );
    soulType = _i1.ColumnString(
      'soulType',
      this,
    );
    sightType = _i1.ColumnString(
      'sightType',
      this,
    );
    riflingCount = _i1.ColumnInt(
      'riflingCount',
      this,
    );
    riflingDirection = _i1.ColumnString(
      'riflingDirection',
      this,
    );
    magazineCapacity = _i1.ColumnInt(
      'magazineCapacity',
      this,
    );
    magazineCount = _i1.ColumnInt(
      'magazineCount',
      this,
    );
    dimensions = _i1.ColumnString(
      'dimensions',
      this,
    );
    weight = _i1.ColumnDouble(
      'weight',
      this,
    );
    acquisitionDate = _i1.ColumnDateTime(
      'acquisitionDate',
      this,
    );
    purchasePrice = _i1.ColumnDouble(
      'purchasePrice',
      this,
    );
    saleDate = _i1.ColumnDateTime(
      'saleDate',
      this,
    );
    salePrice = _i1.ColumnDouble(
      'salePrice',
      this,
    );
    buyerData = _i1.ColumnString(
      'buyerData',
      this,
    );
    customizations = _i1.ColumnString(
      'customizations',
      this,
    );
    images = _i1.ColumnSerializable<List<String>>(
      'images',
      this,
    );
    cleaningHistory = _i1.ColumnString(
      'cleaningHistory',
      this,
    );
    maintenanceHistory = _i1.ColumnString(
      'maintenanceHistory',
      this,
    );
    totalShots = _i1.ColumnInt(
      'totalShots',
      this,
    );
  }

  late final FirearmUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  _i2.UserProfileTable? _user;

  late final _i1.ColumnEnum<_i3.FirearmPurpose> purpose;

  late final _i1.ColumnEnum<_i4.FirearmType> type;

  late final _i1.ColumnEnum<_i5.FirearmAction> action;

  late final _i1.ColumnEnum<_i6.UsageType> usageType;

  late final _i1.ColumnString serialNumber;

  late final _i1.ColumnString manufactureCountry;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnString model;

  late final _i1.ColumnString bolt;

  late final _i1.ColumnString frame;

  late final _i1.ColumnString grip;

  late final _i1.ColumnEnum<_i7.ConservationState> conservationState;

  late final _i1.ColumnString caliber;

  late final _i1.ColumnInt barrelsCount;

  late final _i1.ColumnString barrelLength;

  late final _i1.ColumnString soulType;

  late final _i1.ColumnString sightType;

  late final _i1.ColumnInt riflingCount;

  late final _i1.ColumnString riflingDirection;

  late final _i1.ColumnInt magazineCapacity;

  late final _i1.ColumnInt magazineCount;

  late final _i1.ColumnString dimensions;

  late final _i1.ColumnDouble weight;

  late final _i1.ColumnDateTime acquisitionDate;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnDateTime saleDate;

  late final _i1.ColumnDouble salePrice;

  late final _i1.ColumnString buyerData;

  late final _i1.ColumnString customizations;

  late final _i1.ColumnSerializable<List<String>> images;

  late final _i1.ColumnString cleaningHistory;

  late final _i1.ColumnString maintenanceHistory;

  late final _i1.ColumnInt totalShots;

  _i2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Firearm.t.userId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
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
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class FirearmInclude extends _i1.IncludeObject {
  FirearmInclude._({_i2.UserProfileInclude? user}) {
    _user = user;
  }

  _i2.UserProfileInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table<_i1.UuidValue> get table => Firearm.t;
}

class FirearmIncludeList extends _i1.IncludeList {
  FirearmIncludeList._({
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Firearm.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Firearm.t;
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
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
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Firearm>(
      where: where?.call(Firearm.t),
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Firearm] by its [id] or null if no such row exists.
  Future<Firearm?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    FirearmInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
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
  Future<List<Firearm>> insert(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Firearm>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Firearm] and returns the inserted row.
  ///
  /// The returned [Firearm] will have its `id` field set.
  Future<Firearm> insertRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Firearm>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Firearm>> update(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.ColumnSelections<FirearmTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Firearm>(
      rows,
      columns: columns?.call(Firearm.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Firearm]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Firearm> updateRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.ColumnSelections<FirearmTable>? columns,
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Firearm>(
      id,
      columnValues: columnValues(Firearm.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Firearm]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Firearm>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<FirearmUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FirearmTable>? orderBy,
    _i1.OrderByListBuilder<FirearmTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Firearm>(
      columnValues: columnValues(Firearm.t.updateTable),
      where: where(Firearm.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Firearm.t),
      orderByList: orderByList?.call(Firearm.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Firearm]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Firearm>> delete(
    _i1.DatabaseSession session,
    List<Firearm> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Firearm>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Firearm].
  Future<Firearm> deleteRow(
    _i1.DatabaseSession session,
    Firearm row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Firearm>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Firearm>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Firearm>(
      where: where(Firearm.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FirearmTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Firearm>(
      where: where?.call(Firearm.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Firearm] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FirearmTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
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
    _i1.DatabaseSession session,
    Firearm firearm,
    _i2.UserProfile user, {
    _i1.Transaction? transaction,
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
    _i1.DatabaseSession session,
    Firearm firearm, {
    _i1.Transaction? transaction,
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
