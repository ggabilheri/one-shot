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
import '../enums/invoice_status.enum.dart' as _i2;
import '../enums/currency.enum.dart' as _i3;
import '../club/club.dart' as _i4;
import '../gunsmith/gunsmith.dart' as _i5;
import '../common/user_profile.dart' as _i6;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i7;

abstract class Invoice implements _i1.SerializableModel {
  Invoice._({
    _i1.UuidValue? id,
    required this.originModule,
    required this.direction,
    required this.status,
    required this.issueDate,
    required this.dueDate,
    required this.totalAmount,
    this.discount,
    required this.finalAmount,
    required this.currency,
    this.notes,
    bool? isRecurrent,
    this.asaasInstallmentId,
    this.asaasCustomerId,
    this.clubId,
    this.club,
    this.gunsmithId,
    this.gunsmith,
    this.userId,
    this.user,
    this.draweeId,
    this.drawee,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       isRecurrent = isRecurrent ?? false;

  factory Invoice({
    _i1.UuidValue? id,
    required String originModule,
    required String direction,
    required _i2.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _i3.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      originModule: jsonSerialization['originModule'] as String,
      direction: jsonSerialization['direction'] as String,
      status: _i2.InvoiceStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      issueDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['issueDate'],
      ),
      dueDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalAmount: (jsonSerialization['finalAmount'] as num).toDouble(),
      currency: _i3.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      notes: jsonSerialization['notes'] as String?,
      isRecurrent: jsonSerialization['isRecurrent'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['isRecurrent']),
      asaasInstallmentId: jsonSerialization['asaasInstallmentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
      clubId: jsonSerialization['clubId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['clubId']),
      club: jsonSerialization['club'] == null
          ? null
          : _i7.Protocol().deserialize<_i4.Club>(jsonSerialization['club']),
      gunsmithId: jsonSerialization['gunsmithId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithId'],
            ),
      gunsmith: jsonSerialization['gunsmith'] == null
          ? null
          : _i7.Protocol().deserialize<_i5.Gunsmith>(
              jsonSerialization['gunsmith'],
            ),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.UserProfile>(
              jsonSerialization['user'],
            ),
      draweeId: jsonSerialization['draweeId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['draweeId']),
      drawee: jsonSerialization['drawee'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.UserProfile>(
              jsonSerialization['drawee'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String originModule;

  String direction;

  _i2.InvoiceStatus status;

  DateTime issueDate;

  DateTime dueDate;

  double totalAmount;

  double? discount;

  double finalAmount;

  _i3.Currency currency;

  String? notes;

  bool isRecurrent;

  String? asaasInstallmentId;

  String? asaasCustomerId;

  _i1.UuidValue? clubId;

  _i4.Club? club;

  _i1.UuidValue? gunsmithId;

  _i5.Gunsmith? gunsmith;

  _i1.UuidValue? userId;

  _i6.UserProfile? user;

  _i1.UuidValue? draweeId;

  _i6.UserProfile? drawee;

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Invoice copyWith({
    _i1.UuidValue? id,
    String? originModule,
    String? direction,
    _i2.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    double? discount,
    double? finalAmount,
    _i3.Currency? currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Invoice',
      'id': id.toJson(),
      'originModule': originModule,
      'direction': direction,
      'status': status.toJson(),
      'issueDate': issueDate.toJson(),
      'dueDate': dueDate.toJson(),
      'totalAmount': totalAmount,
      if (discount != null) 'discount': discount,
      'finalAmount': finalAmount,
      'currency': currency.toJson(),
      if (notes != null) 'notes': notes,
      'isRecurrent': isRecurrent,
      if (asaasInstallmentId != null) 'asaasInstallmentId': asaasInstallmentId,
      if (asaasCustomerId != null) 'asaasCustomerId': asaasCustomerId,
      if (clubId != null) 'clubId': clubId?.toJson(),
      if (club != null) 'club': club?.toJson(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceImpl extends Invoice {
  _InvoiceImpl({
    _i1.UuidValue? id,
    required String originModule,
    required String direction,
    required _i2.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _i3.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _i1.UuidValue? clubId,
    _i4.Club? club,
    _i1.UuidValue? gunsmithId,
    _i5.Gunsmith? gunsmith,
    _i1.UuidValue? userId,
    _i6.UserProfile? user,
    _i1.UuidValue? draweeId,
    _i6.UserProfile? drawee,
  }) : super._(
         id: id,
         originModule: originModule,
         direction: direction,
         status: status,
         issueDate: issueDate,
         dueDate: dueDate,
         totalAmount: totalAmount,
         discount: discount,
         finalAmount: finalAmount,
         currency: currency,
         notes: notes,
         isRecurrent: isRecurrent,
         asaasInstallmentId: asaasInstallmentId,
         asaasCustomerId: asaasCustomerId,
         clubId: clubId,
         club: club,
         gunsmithId: gunsmithId,
         gunsmith: gunsmith,
         userId: userId,
         user: user,
         draweeId: draweeId,
         drawee: drawee,
       );

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Invoice copyWith({
    _i1.UuidValue? id,
    String? originModule,
    String? direction,
    _i2.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    Object? discount = _Undefined,
    double? finalAmount,
    _i3.Currency? currency,
    Object? notes = _Undefined,
    bool? isRecurrent,
    Object? asaasInstallmentId = _Undefined,
    Object? asaasCustomerId = _Undefined,
    Object? clubId = _Undefined,
    Object? club = _Undefined,
    Object? gunsmithId = _Undefined,
    Object? gunsmith = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? draweeId = _Undefined,
    Object? drawee = _Undefined,
  }) {
    return Invoice(
      id: id ?? this.id,
      originModule: originModule ?? this.originModule,
      direction: direction ?? this.direction,
      status: status ?? this.status,
      issueDate: issueDate ?? this.issueDate,
      dueDate: dueDate ?? this.dueDate,
      totalAmount: totalAmount ?? this.totalAmount,
      discount: discount is double? ? discount : this.discount,
      finalAmount: finalAmount ?? this.finalAmount,
      currency: currency ?? this.currency,
      notes: notes is String? ? notes : this.notes,
      isRecurrent: isRecurrent ?? this.isRecurrent,
      asaasInstallmentId: asaasInstallmentId is String?
          ? asaasInstallmentId
          : this.asaasInstallmentId,
      asaasCustomerId: asaasCustomerId is String?
          ? asaasCustomerId
          : this.asaasCustomerId,
      clubId: clubId is _i1.UuidValue? ? clubId : this.clubId,
      club: club is _i4.Club? ? club : this.club?.copyWith(),
      gunsmithId: gunsmithId is _i1.UuidValue? ? gunsmithId : this.gunsmithId,
      gunsmith: gunsmith is _i5.Gunsmith?
          ? gunsmith
          : this.gunsmith?.copyWith(),
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      user: user is _i6.UserProfile? ? user : this.user?.copyWith(),
      draweeId: draweeId is _i1.UuidValue? ? draweeId : this.draweeId,
      drawee: drawee is _i6.UserProfile? ? drawee : this.drawee?.copyWith(),
    );
  }
}
