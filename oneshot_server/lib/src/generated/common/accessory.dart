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
import '../enums/accessory.enum.dart' as _iv3j3xuk;
import '../enums/conservation_state.enum.dart' as _im6njl07;
import '../enums/registry_body.enum.dart' as _ii1wmk2g;
import '../enums/usage_type.enum.dart' as _ivorkc39;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class Accessory
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  Accessory._({
    _is.UuidValue? id,
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
  }) : id = id ?? const _is.Uuid().v4obj();

  factory Accessory({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
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
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      firearmId: jsonSerialization['firearmId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['firearmId']),
      firearm: jsonSerialization['firearm'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_i25s0fp9.Firearm>(
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
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['acquisitionDate'],
            ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num?)?.toDouble(),
      invoiceNumber: jsonSerialization['invoiceNumber'] as String?,
      invoiceEmissionDate: jsonSerialization['invoiceEmissionDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
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
          : _iwflrbqm.Protocol().deserialize<List<String>>(
              jsonSerialization['images'],
            ),
    );
  }

  static final t = AccessoryTable();

  static const db = AccessoryRepository._();

  @override
  _is.UuidValue id;

  _is.UuidValue userId;

  _izifjpv2.UserProfile? user;

  _is.UuidValue? firearmId;

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

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [Accessory]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Accessory copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
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

  static AccessoryInclude include({
    _izifjpv2.UserProfileInclude? user,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    return AccessoryInclude._(user: user, firearm: firearm);
  }

  static AccessoryIncludeList includeList({
    _is.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    AccessoryInclude? include,
  }) {
    return AccessoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AccessoryImpl extends Accessory {
  _AccessoryImpl({
    _is.UuidValue? id,
    required _is.UuidValue userId,
    _izifjpv2.UserProfile? user,
    _is.UuidValue? firearmId,
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
  @_is.useResult
  @override
  Accessory copyWith({
    _is.UuidValue? id,
    _is.UuidValue? userId,
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
      firearmId: firearmId is _is.UuidValue? ? firearmId : this.firearmId,
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

class AccessoryUpdateTable extends _is.UpdateTable<AccessoryTable> {
  AccessoryUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(table.userId, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> firearmId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(table.firearmId, value);

  _is.ColumnValue<String, String> purpose(String? value) =>
      _is.ColumnValue(table.purpose, value);

  _is.ColumnValue<_iv3j3xuk.AccessoryType, _iv3j3xuk.AccessoryType> type(
    _iv3j3xuk.AccessoryType value,
  ) => _is.ColumnValue(table.type, value);

  _is.ColumnValue<String, String> serialNumber(String? value) =>
      _is.ColumnValue(table.serialNumber, value);

  _is.ColumnValue<String, String> manufactureCountry(String? value) =>
      _is.ColumnValue(table.manufactureCountry, value);

  _is.ColumnValue<String, String> manufacturer(String? value) =>
      _is.ColumnValue(table.manufacturer, value);

  _is.ColumnValue<String, String> model(String? value) =>
      _is.ColumnValue(table.model, value);

  _is.ColumnValue<String, String> description(String? value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<_im6njl07.ConservationState, _im6njl07.ConservationState>
  conservationState(_im6njl07.ConservationState? value) =>
      _is.ColumnValue(table.conservationState, value);

  _is.ColumnValue<_ivorkc39.UsageType, _ivorkc39.UsageType> usageType(
    _ivorkc39.UsageType? value,
  ) => _is.ColumnValue(table.usageType, value);

  _is.ColumnValue<String, String> dimensions(String? value) =>
      _is.ColumnValue(table.dimensions, value);

  _is.ColumnValue<double, double> weight(double? value) =>
      _is.ColumnValue(table.weight, value);

  _is.ColumnValue<String, String> color(String? value) =>
      _is.ColumnValue(table.color, value);

  _is.ColumnValue<String, String> finishMaterial(String? value) =>
      _is.ColumnValue(table.finishMaterial, value);

  _is.ColumnValue<DateTime, DateTime> acquisitionDate(DateTime? value) =>
      _is.ColumnValue(table.acquisitionDate, value);

  _is.ColumnValue<double, double> purchasePrice(double? value) =>
      _is.ColumnValue(table.purchasePrice, value);

  _is.ColumnValue<String, String> invoiceNumber(String? value) =>
      _is.ColumnValue(table.invoiceNumber, value);

  _is.ColumnValue<DateTime, DateTime> invoiceEmissionDate(DateTime? value) =>
      _is.ColumnValue(table.invoiceEmissionDate, value);

  _is.ColumnValue<String, String> sellerData(String? value) =>
      _is.ColumnValue(table.sellerData, value);

  _is.ColumnValue<_ii1wmk2g.RegistryBody, _ii1wmk2g.RegistryBody> registryBody(
    _ii1wmk2g.RegistryBody? value,
  ) => _is.ColumnValue(table.registryBody, value);

  _is.ColumnValue<String, String> customizations(String? value) =>
      _is.ColumnValue(table.customizations, value);

  _is.ColumnValue<String, String> maintenanceHistory(String? value) =>
      _is.ColumnValue(table.maintenanceHistory, value);

  _is.ColumnValue<List<String>, List<String>> images(List<String>? value) =>
      _is.ColumnValue(table.images, value);
}

class AccessoryTable extends _is.Table<_is.UuidValue> {
  AccessoryTable({super.tableRelation}) : super(tableName: 'accessories') {
    updateTable = AccessoryUpdateTable(this);
    userId = _is.ColumnUuid('userId', this);
    firearmId = _is.ColumnUuid('firearmId', this);
    purpose = _is.ColumnString('purpose', this);
    type = _is.ColumnEnum('type', this, _is.EnumSerialization.byName);
    serialNumber = _is.ColumnString('serialNumber', this);
    manufactureCountry = _is.ColumnString('manufactureCountry', this);
    manufacturer = _is.ColumnString('manufacturer', this);
    model = _is.ColumnString('model', this);
    description = _is.ColumnString('description', this);
    conservationState = _is.ColumnEnum(
      'conservationState',
      this,
      _is.EnumSerialization.byName,
    );
    usageType = _is.ColumnEnum('usageType', this, _is.EnumSerialization.byName);
    dimensions = _is.ColumnString('dimensions', this);
    weight = _is.ColumnDouble('weight', this);
    color = _is.ColumnString('color', this);
    finishMaterial = _is.ColumnString('finishMaterial', this);
    acquisitionDate = _is.ColumnDateTime('acquisitionDate', this);
    purchasePrice = _is.ColumnDouble('purchasePrice', this);
    invoiceNumber = _is.ColumnString('invoiceNumber', this);
    invoiceEmissionDate = _is.ColumnDateTime('invoiceEmissionDate', this);
    sellerData = _is.ColumnString('sellerData', this);
    registryBody = _is.ColumnEnum(
      'registryBody',
      this,
      _is.EnumSerialization.byName,
    );
    customizations = _is.ColumnString('customizations', this);
    maintenanceHistory = _is.ColumnString('maintenanceHistory', this);
    images = _is.ColumnSerializable<List<String>>('images', this);
  }

  late final AccessoryUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  _izifjpv2.UserProfileTable? _user;

  late final _is.ColumnUuid firearmId;

  _i25s0fp9.FirearmTable? _firearm;

  late final _is.ColumnString purpose;

  late final _is.ColumnEnum<_iv3j3xuk.AccessoryType> type;

  late final _is.ColumnString serialNumber;

  late final _is.ColumnString manufactureCountry;

  late final _is.ColumnString manufacturer;

  late final _is.ColumnString model;

  late final _is.ColumnString description;

  late final _is.ColumnEnum<_im6njl07.ConservationState> conservationState;

  late final _is.ColumnEnum<_ivorkc39.UsageType> usageType;

  late final _is.ColumnString dimensions;

  late final _is.ColumnDouble weight;

  late final _is.ColumnString color;

  late final _is.ColumnString finishMaterial;

  late final _is.ColumnDateTime acquisitionDate;

  late final _is.ColumnDouble purchasePrice;

  late final _is.ColumnString invoiceNumber;

  late final _is.ColumnDateTime invoiceEmissionDate;

  late final _is.ColumnString sellerData;

  late final _is.ColumnEnum<_ii1wmk2g.RegistryBody> registryBody;

  late final _is.ColumnString customizations;

  late final _is.ColumnString maintenanceHistory;

  late final _is.ColumnSerializable<List<String>> images;

  _izifjpv2.UserProfileTable get user {
    if (_user != null) return _user!;
    _user = _is.createRelationTable(
      relationFieldName: 'user',
      field: Accessory.t.userId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i25s0fp9.FirearmTable get firearm {
    if (_firearm != null) return _firearm!;
    _firearm = _is.createRelationTable(
      relationFieldName: 'firearm',
      field: Accessory.t.firearmId,
      foreignField: _i25s0fp9.Firearm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i25s0fp9.FirearmTable(tableRelation: foreignTableRelation),
    );
    return _firearm!;
  }

  @override
  List<_is.Column> get columns => [
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
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'firearm') {
      return firearm;
    }
    return null;
  }
}

class AccessoryInclude extends _is.IncludeObject {
  AccessoryInclude._({
    _izifjpv2.UserProfileInclude? user,
    _i25s0fp9.FirearmInclude? firearm,
  }) {
    _user = user;
    _firearm = firearm;
  }

  _izifjpv2.UserProfileInclude? _user;

  _i25s0fp9.FirearmInclude? _firearm;

  @override
  Map<String, _is.Include?> get includes => {
    'user': _user,
    'firearm': _firearm,
  };

  @override
  _is.Table<_is.UuidValue> get table => Accessory.t;
}

class AccessoryIncludeList extends _is.IncludeList {
  AccessoryIncludeList._({
    _is.WhereExpressionBuilder<AccessoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Accessory.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => Accessory.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    _is.Transaction? transaction,
    AccessoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AccessoryTable>? where,
    int? offset,
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    _is.Transaction? transaction,
    AccessoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Accessory>(
      where: where?.call(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Accessory] by its [id] or null if no such row exists.
  Future<Accessory?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    AccessoryInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Accessory>> insert(
    _is.DatabaseSession session,
    List<Accessory> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Accessory>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Accessory] and returns the inserted row.
  ///
  /// The returned [Accessory] will have its `id` field set.
  Future<Accessory> insertRow(
    _is.DatabaseSession session,
    Accessory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Accessory>(row, transaction: transaction);
  }

  /// Upserts all [Accessory]s in the list and returns the resulting rows.
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
  /// The returned [Accessory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Accessory>> upsert(
    _is.DatabaseSession session,
    List<Accessory> rows, {
    required _is.ColumnSelections<AccessoryTable> conflictColumns,
    _is.ColumnSelections<AccessoryTable>? updateColumns,
    _is.WhereExpressionBuilder<AccessoryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Accessory>(
      rows,
      conflictColumns: conflictColumns(Accessory.t),
      updateColumns: updateColumns?.call(Accessory.t),
      updateWhere: updateWhere?.call(Accessory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Accessory] and returns the resulting row.
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
  /// The returned [Accessory] will have its `id` field set.
  Future<Accessory?> upsertRow(
    _is.DatabaseSession session,
    Accessory row, {
    required _is.ColumnSelections<AccessoryTable> conflictColumns,
    _is.ColumnSelections<AccessoryTable>? updateColumns,
    _is.WhereExpressionBuilder<AccessoryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Accessory>(
      row,
      conflictColumns: conflictColumns(Accessory.t),
      updateColumns: updateColumns?.call(Accessory.t),
      updateWhere: updateWhere?.call(Accessory.t),
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Accessory>> update(
    _is.DatabaseSession session,
    List<Accessory> rows, {
    _is.ColumnSelections<AccessoryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Accessory>(
      rows,
      columns: columns?.call(Accessory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Accessory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Accessory> updateRow(
    _is.DatabaseSession session,
    Accessory row, {
    _is.ColumnSelections<AccessoryTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Accessory>(
      id,
      columnValues: columnValues(Accessory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Accessory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Accessory>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<AccessoryUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<AccessoryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Accessory>(
      columnValues: columnValues(Accessory.t.updateTable),
      where: where(Accessory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Accessory]s in the list and returns the deleted rows.
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
  Future<List<Accessory>> delete(
    _is.DatabaseSession session,
    List<Accessory> rows, {
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Accessory>(
      rows,
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Accessory].
  Future<Accessory> deleteRow(
    _is.DatabaseSession session,
    Accessory row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Accessory>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Accessory>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AccessoryTable> where,
    _is.OrderByBuilder<AccessoryTable>? orderBy,
    _is.OrderByListBuilder<AccessoryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Accessory>(
      where: where(Accessory.t),
      orderBy: orderBy?.call(Accessory.t),
      orderByList: orderByList?.call(Accessory.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<AccessoryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Accessory>(
      where: where?.call(Accessory.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Accessory] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<AccessoryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    Accessory accessory,
    _izifjpv2.UserProfile user, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Accessory accessory,
    _i25s0fp9.Firearm firearm, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    Accessory accessory, {
    _is.Transaction? transaction,
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
