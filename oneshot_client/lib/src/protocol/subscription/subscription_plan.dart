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
import '../company/company.dart' as _iocy1ifk;
import '../enums/plan_periodicity.enum.dart' as _i183hlh8;
import '../enums/plan_status.enum.dart' as _i2ytazif;
import '../enums/plan_type.enum.dart' as _izm4hmla;

abstract class SubscriptionPlan
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SubscriptionPlan._({
    _isc.UuidValue? id,
    required this.name,
    required this.planType,
    required this.unitValue,
    required this.quantity,
    required this.totalValue,
    required this.periodicity,
    required this.status,
    this.companyId,
    this.company,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory SubscriptionPlan({
    _isc.UuidValue? id,
    required String name,
    required _izm4hmla.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i183hlh8.PlanPeriodicity periodicity,
    required _i2ytazif.PlanStatus status,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _SubscriptionPlanImpl;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> jsonSerialization) {
    return SubscriptionPlan(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      planType: _izm4hmla.PlanType.fromJson(
        (jsonSerialization['planType'] as String),
      ),
      unitValue: (jsonSerialization['unitValue'] as num).toDouble(),
      quantity: jsonSerialization['quantity'] as int,
      totalValue: (jsonSerialization['totalValue'] as num).toDouble(),
      periodicity: _i183hlh8.PlanPeriodicity.fromJson(
        (jsonSerialization['periodicity'] as String),
      ),
      status: _i2ytazif.PlanStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['companyId'],
            ),
      company: jsonSerialization['company'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iocy1ifk.Company>(
              jsonSerialization['company'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  _izm4hmla.PlanType planType;

  double unitValue;

  int quantity;

  double totalValue;

  _i183hlh8.PlanPeriodicity periodicity;

  _i2ytazif.PlanStatus status;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SubscriptionPlan copyWith({
    _isc.UuidValue? id,
    String? name,
    _izm4hmla.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i183hlh8.PlanPeriodicity? periodicity,
    _i2ytazif.PlanStatus? status,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SubscriptionPlan',
      'id': id.toJson(),
      'name': name,
      'planType': planType.toJson(),
      'unitValue': unitValue,
      'quantity': quantity,
      'totalValue': totalValue,
      'periodicity': periodicity.toJson(),
      'status': status.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SubscriptionPlan',
      'id': id.toJson(),
      'name': name,
      'planType': planType.toJson(),
      'unitValue': unitValue,
      'quantity': quantity,
      'totalValue': totalValue,
      'periodicity': periodicity.toJson(),
      'status': status.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SubscriptionPlanImpl extends SubscriptionPlan {
  _SubscriptionPlanImpl({
    _isc.UuidValue? id,
    required String name,
    required _izm4hmla.PlanType planType,
    required double unitValue,
    required int quantity,
    required double totalValue,
    required _i183hlh8.PlanPeriodicity periodicity,
    required _i2ytazif.PlanStatus status,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) : super._(
         id: id,
         name: name,
         planType: planType,
         unitValue: unitValue,
         quantity: quantity,
         totalValue: totalValue,
         periodicity: periodicity,
         status: status,
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [SubscriptionPlan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SubscriptionPlan copyWith({
    _isc.UuidValue? id,
    String? name,
    _izm4hmla.PlanType? planType,
    double? unitValue,
    int? quantity,
    double? totalValue,
    _i183hlh8.PlanPeriodicity? periodicity,
    _i2ytazif.PlanStatus? status,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
  }) {
    return SubscriptionPlan(
      id: id ?? this.id,
      name: name ?? this.name,
      planType: planType ?? this.planType,
      unitValue: unitValue ?? this.unitValue,
      quantity: quantity ?? this.quantity,
      totalValue: totalValue ?? this.totalValue,
      periodicity: periodicity ?? this.periodicity,
      status: status ?? this.status,
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
    );
  }
}
