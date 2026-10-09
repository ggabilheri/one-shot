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
import '../company/company.dart' as _iocy1ifk;
import '../shooter/firearm.dart' as _i25s0fp9;

abstract class RangeVisit
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  RangeVisit._({
    _isc.UuidValue? id,
    this.userId,
    this.user,
    this.companyId,
    this.company,
    this.firearmId,
    this.firearm,
    required this.checkIn,
    this.checkOut,
    int? shotsFired,
    this.notes,
    bool? habitualityReportGenerated,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       shotsFired = shotsFired ?? 0,
       habitualityReportGenerated = habitualityReportGenerated ?? false;

  factory RangeVisit({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) = _RangeVisitImpl;

  factory RangeVisit.fromJson(Map<String, dynamic> jsonSerialization) {
    return RangeVisit(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
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
      checkIn: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['checkIn'],
      ),
      checkOut: jsonSerialization['checkOut'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['checkOut']),
      shotsFired: jsonSerialization['shotsFired'] as int?,
      notes: jsonSerialization['notes'] as String?,
      habitualityReportGenerated:
          jsonSerialization['habitualityReportGenerated'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['habitualityReportGenerated'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  _isc.UuidValue? firearmId;

  _i25s0fp9.Firearm? firearm;

  DateTime checkIn;

  DateTime? checkOut;

  int shotsFired;

  String? notes;

  bool habitualityReportGenerated;

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  RangeVisit copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    DateTime? checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RangeVisit',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJson(),
      'checkIn': checkIn.toJson(),
      if (checkOut != null) 'checkOut': checkOut?.toJson(),
      'shotsFired': shotsFired,
      if (notes != null) 'notes': notes,
      'habitualityReportGenerated': habitualityReportGenerated,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RangeVisit',
      'id': id.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (firearmId != null) 'firearmId': firearmId?.toJson(),
      if (firearm != null) 'firearm': firearm?.toJsonForProtocol(),
      'checkIn': checkIn.toJson(),
      if (checkOut != null) 'checkOut': checkOut?.toJson(),
      'shotsFired': shotsFired,
      if (notes != null) 'notes': notes,
      'habitualityReportGenerated': habitualityReportGenerated,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RangeVisitImpl extends RangeVisit {
  _RangeVisitImpl({
    _isc.UuidValue? id,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? firearmId,
    _i25s0fp9.Firearm? firearm,
    required DateTime checkIn,
    DateTime? checkOut,
    int? shotsFired,
    String? notes,
    bool? habitualityReportGenerated,
  }) : super._(
         id: id,
         userId: userId,
         user: user,
         companyId: companyId,
         company: company,
         firearmId: firearmId,
         firearm: firearm,
         checkIn: checkIn,
         checkOut: checkOut,
         shotsFired: shotsFired,
         notes: notes,
         habitualityReportGenerated: habitualityReportGenerated,
       );

  /// Returns a shallow copy of this [RangeVisit]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  RangeVisit copyWith({
    _isc.UuidValue? id,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
    Object? firearmId = _Undefined,
    Object? firearm = _Undefined,
    DateTime? checkIn,
    Object? checkOut = _Undefined,
    int? shotsFired,
    Object? notes = _Undefined,
    bool? habitualityReportGenerated,
  }) {
    return RangeVisit(
      id: id ?? this.id,
      userId: userId is _isc.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      firearmId: firearmId is _isc.UuidValue? ? firearmId : this.firearmId,
      firearm: firearm is _i25s0fp9.Firearm?
          ? firearm
          : this.firearm?.copyWith(),
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut is DateTime? ? checkOut : this.checkOut,
      shotsFired: shotsFired ?? this.shotsFired,
      notes: notes is String? ? notes : this.notes,
      habitualityReportGenerated:
          habitualityReportGenerated ?? this.habitualityReportGenerated,
    );
  }
}
