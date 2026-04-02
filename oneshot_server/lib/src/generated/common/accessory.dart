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
import '../shooter/firearm.dart' as _i3;
import '../enums/accessory.enum.dart' as _i4;
import '../enums/conservation_state.enum.dart' as _i5;
import '../enums/usage_type.enum.dart' as _i6;
import '../enums/registry_body.enum.dart' as _i7;
import 'package:oneshot_server/src/generated/protocol.dart' as _i8;

abstract class Accessory
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = AccessoryTable();

  static const db = AccessoryRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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

  static AccessoryInclude include({
    _i2.UserProfileInclude? user,
    _i3.FirearmInclude? firearm,
  }) {
    return AccessoryInclude._(
      user: user,
      firearm: firearm,
    );
  }

  static AccessoryIncludeList includeList({
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    AccessoryInclude? include,
  }) {
    return AccessoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Accessory.t),
      include: include,
    );
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

class AccessoryUpdateTable extends _i1.UpdateTable<AccessoryTable> {
  AccessoryUpdateTable(super.table);

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> userId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.userId,
        value,
      );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> firearmId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.firearmId,
    value,
  );

  _i1.ColumnValue<String, String> purpose(String? value) => _i1.ColumnValue(
    table.purpose,
    value,
  );

  _i1.ColumnValue<_i4.AccessoryType, _i4.AccessoryType> type(
    _i4.AccessoryType value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> serialNumber(String? value) =>
      _i1.ColumnValue(
        table.serialNumber,
        value,
      );

  _i1.ColumnValue<String, String> manufactureCountry(String? value) =>
      _i1.ColumnValue(
        table.manufactureCountry,
        value,
      );

  _i1.ColumnValue<String, String> manufacturer(String? value) =>
      _i1.ColumnValue(
        table.manufacturer,
        value,
      );

  _i1.ColumnValue<String, String> model(String? value) => _i1.ColumnValue(
    table.model,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<_i5.ConservationState, _i5.ConservationState>
  conservationState(_i5.ConservationState? value) => _i1.ColumnValue(
    table.conservationState,
    value,
  );

  _i1.ColumnValue<_i6.UsageType, _i6.UsageType> usageType(
    _i6.UsageType? value,
  ) => _i1.ColumnValue(
    table.usageType,
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

  _i1.ColumnValue<String, String> color(String? value) => _i1.ColumnValue(
    table.color,
    value,
  );

  _i1.ColumnValue<String, String> finishMaterial(String? value) =>
      _i1.ColumnValue(
        table.finishMaterial,
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

  _i1.ColumnValue<String, String> invoiceNumber(String? value) =>
      _i1.ColumnValue(
        table.invoiceNumber,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> invoiceEmissionDate(DateTime? value) =>
      _i1.ColumnValue(
        table.invoiceEmissionDate,
        value,
      );

  _i1.ColumnValue<String, String> sellerData(String? value) => _i1.ColumnValue(
    table.sellerData,
    value,
  );

  _i1.ColumnValue<_i7.RegistryBody, _i7.RegistryBody> registryBody(
    _i7.RegistryBody? value,
  ) => _i1.ColumnValue(
    table.registryBody,
    value,
  );

  _i1.ColumnValue<String, String> customizations(String? value) =>
      _i1.ColumnValue(
        table.customizations,
        value,
      );

  _i1.ColumnValue<String, String> maintenanceHistory(String? value) =>
      _i1.ColumnValue(
        table.maintenanceHistory,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> images(List<String>? value) =>
      _i1.ColumnValue(
        table.images,
        value,
      );
}

class AccessoryTable extends _i1.Table<_i1.UuidValue> {
  AccessoryTable({super.tableRelation}) : super(tableName: 'accessories') {
    updateTable = AccessoryUpdateTable(this);
    userId = _i1.ColumnUuid(
      'userId',
      this,
    );
    firearmId = _i1.ColumnUuid(
      'firearmId',
      this,
    );
    purpose = _i1.ColumnString(
      'purpose',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
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
    description = _i1.ColumnString(
      'description',
      this,
    );
    conservationState = _i1.ColumnEnum(
      'conservationState',
      this,
      _i1.EnumSerialization.byName,
    );
    usageType = _i1.ColumnEnum(
      'usageType',
      this,
      _i1.EnumSerialization.byName,
    );
    dimensions = _i1.ColumnString(
      'dimensions',
      this,
    );
    weight = _i1.ColumnDouble(
      'weight',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
    finishMaterial = _i1.ColumnString(
      'finishMaterial',
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
    invoiceNumber = _i1.ColumnString(
      'invoiceNumber',
      this,
    );
    invoiceEmissionDate = _i1.ColumnDateTime(
      'invoiceEmissionDate',
      this,
    );
    sellerData = _i1.ColumnString(
      'sellerData',
      this,
    );
    registryBody = _i1.ColumnEnum(
      'registryBody',
      this,
      _i1.EnumSerialization.byName,
    );
    customizations = _i1.ColumnString(
      'customizations',
      this,
    );
    maintenanceHistory = _i1.ColumnString(
      'maintenanceHistory',
      this,
    );
    images = _i1.ColumnSerializable<List<String>>(
      'images',
      this,
    );
  }

  late final AccessoryUpdateTable updateTable;

  late final _i1.ColumnUuid userId;

  _i2.UserProfileTable? _user;

  late final _i1.ColumnUuid firearmId;

  _i3.FirearmTable? _firearm;

  late final _i1.ColumnString purpose;

  late final _i1.ColumnEnum<_i4.AccessoryType> type;

  late final _i1.ColumnString serialNumber;

  late final _i1.ColumnString manufactureCountry;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnString model;

  late final _i1.ColumnString description;

  late final _i1.ColumnEnum<_i5.ConservationState> conservationState;

  late final _i1.ColumnEnum<_i6.UsageType> usageType;

  late final _i1.ColumnString dimensions;

  late final _i1.ColumnDouble weight;

  late final _i1.ColumnString color;

  late final _i1.ColumnString finishMaterial;

  late final _i1.ColumnDateTime acquisitionDate;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnString invoiceNumber;

  late final _i1.ColumnDateTime invoiceEmissionDate;

  late final _i1.ColumnString sellerData;

  late final _i1.ColumnEnum<_i7.RegistryBody> registryBody;

  late final _i1.ColumnString customizations;

  late final _i1.ColumnString maintenanceHistory;

  late final _i1.ColumnSerializable<List<String>> images;

  _i2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Accessory.t.userId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _i1.createRelationTable(
      relationFieldName: 'firearm',
      field: Accessory.t.firearmId,
      foreignField: _i3.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    firearmId,
    purpose,
    type,
    serialNumber,
    manufactureCountry,
    manufacturer,
    model,
    description,
    conservationState,
    usageType,
    dimensions,
    weight,
    color,
    finishMaterial,
    acquisitionDate,
    purchasePrice,
    invoiceNumber,
    invoiceEmissionDate,
    sellerData,
    registryBody,
    customizations,
    maintenanceHistory,
    images,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class AccessoryInclude extends _i1.IncludeObject {
  AccessoryInclude._({
    _i2.UserProfileInclude? user,
    _i3.FirearmInclude? firearm,
  }) {
    _user = user;
    _firearm = firearm;
  }

  _i2.UserProfileInclude? _user;

  _i3.FirearmInclude? _firearm;

  @override
  Map<String, _i1.Include?> get includes => {
    'user': _user,
    'firearm': _firearm,
  };

  @override
  _i1.Table<_i1.UuidValue> get table => Accessory.t;
}

class AccessoryIncludeList extends _i1.IncludeList {
  AccessoryIncludeList._({
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Accessory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Accessory.t;
}

class AccessoryRepository {
  const AccessoryRepository._();

  final attachRow = const AccessoryAttachRowRepository._();

  final detachRow = const AccessoryDetachRowRepository._();

  /// Returns a list of [Accessory]s matching the given query parameters.
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
  Future<List<Accessory>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Accessory] matching the given query parameters.
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
  Future<Accessory?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Accessory] by its [id] or null if no such row exists.
  Future<Accessory?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    AccessoryInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Accessory>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Accessory]s in the list and returns the inserted rows.
  ///
  /// The returned [Accessory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Accessory>> insert(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Accessory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Accessory] and returns the inserted row.
  ///
  /// The returned [Accessory] will have its `id` field set.
  Future<Accessory> insertRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Accessory>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Accessory>> update(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.ColumnSelections<AccessoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Accessory>(
      rows,
      columns: columns?.call(Accessory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Accessory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Accessory> updateRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.ColumnSelections<AccessoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Accessory>(
      row,
      columns: columns?.call(Accessory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Accessory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Accessory?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Accessory>(
      id,
      columnValues: columnValues(Accessory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Accessory>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AccessoryTable>? orderBy,
    _i1.OrderByListBuilder<AccessoryTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Accessory>(
      columnValues: columnValues(Accessory.t.updateTable),
      where: where(Accessory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Accessory]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Accessory>> delete(
    _i1.DatabaseSession session,
    List<Accessory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Accessory>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Accessory].
  Future<Accessory> deleteRow(
    _i1.DatabaseSession session,
    Accessory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Accessory>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Accessory>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Accessory>(
      where: where(Accessory.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Accessory>(
      where: where?.call(Accessory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Accessory] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AccessoryTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Accessory>(
      where: where(Accessory.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class AccessoryAttachRowRepository {
  const AccessoryAttachRowRepository._();

  /// Creates a relation between the given [Accessory] and [UserProfile]
  /// by setting the [Accessory]'s foreign key `userId` to refer to the [UserProfile].
  Future<void> user(
    _i1.DatabaseSession session,
    Accessory accessory,
    _i2.UserProfile user, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $accessory = accessory.copyWith(userId: user.id);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Accessory] and [Firearm]
  /// by setting the [Accessory]'s foreign key `firearmId` to refer to the [Firearm].
  Future<void> firearm(
    _i1.DatabaseSession session,
    Accessory accessory,
    _i3.Firearm firearm, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }
    if (firearm.id == null) {
      throw ArgumentError.notNull('firearm.id');
    }

    var $accessory = accessory.copyWith(firearmId: firearm.id);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.firearmId],
      transaction: transaction,
    );
  }
}

class AccessoryDetachRowRepository {
  const AccessoryDetachRowRepository._();

  /// Detaches the relation between this [Accessory] and the [Firearm] set in `firearm`
  /// by setting the [Accessory]'s foreign key `firearmId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> firearm(
    _i1.DatabaseSession session,
    Accessory accessory, {
    _i1.Transaction? transaction,
  }) async {
    if (accessory.id == null) {
      throw ArgumentError.notNull('accessory.id');
    }

    var $accessory = accessory.copyWith(firearmId: null);
    await session.db.updateRow<Accessory>(
      $accessory,
      columns: [Accessory.t.firearmId],
      transaction: transaction,
    );
  }
}
