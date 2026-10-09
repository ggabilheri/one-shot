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
import '../enums/currency.enum.dart' as _isdw5wvy;
import '../enums/invoice_status.enum.dart' as _ibd6zzmc;
import '../gunsmith/gunsmith.dart' as _inzvshfq;

abstract class Invoice
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Invoice._({
    _isc.UuidValue? id,
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
    this.companyId,
    this.company,
    this.gunsmithId,
    this.gunsmith,
    this.userId,
    this.user,
    this.draweeId,
    this.drawee,
  }) : id = id ?? const _isc.Uuid().v4obj(),
       isRecurrent = isRecurrent ?? false;

  factory Invoice({
    _isc.UuidValue? id,
    required String originModule,
    required String direction,
    required _ibd6zzmc.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _isdw5wvy.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
  }) = _InvoiceImpl;

  factory Invoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return Invoice(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      originModule: jsonSerialization['originModule'] as String,
      direction: jsonSerialization['direction'] as String,
      status: _ibd6zzmc.InvoiceStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      issueDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['issueDate'],
      ),
      dueDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['dueDate'],
      ),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      discount: (jsonSerialization['discount'] as num?)?.toDouble(),
      finalAmount: (jsonSerialization['finalAmount'] as num).toDouble(),
      currency: _isdw5wvy.Currency.fromJson(
        (jsonSerialization['currency'] as String),
      ),
      notes: jsonSerialization['notes'] as String?,
      isRecurrent: jsonSerialization['isRecurrent'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isRecurrent']),
      asaasInstallmentId: jsonSerialization['asaasInstallmentId'] as String?,
      asaasCustomerId: jsonSerialization['asaasCustomerId'] as String?,
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
      gunsmithId: jsonSerialization['gunsmithId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['gunsmithId'],
            ),
      gunsmith: jsonSerialization['gunsmith'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_inzvshfq.Gunsmith>(
              jsonSerialization['gunsmith'],
            ),
      userId: jsonSerialization['userId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      user: jsonSerialization['user'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['user'],
            ),
      draweeId: jsonSerialization['draweeId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['draweeId']),
      drawee: jsonSerialization['drawee'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['drawee'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String originModule;

  String direction;

  _ibd6zzmc.InvoiceStatus status;

  DateTime issueDate;

  DateTime dueDate;

  double totalAmount;

  double? discount;

  double finalAmount;

  _isdw5wvy.Currency currency;

  String? notes;

  bool isRecurrent;

  String? asaasInstallmentId;

  String? asaasCustomerId;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  _isc.UuidValue? gunsmithId;

  _inzvshfq.Gunsmith? gunsmith;

  _isc.UuidValue? userId;

  _izifjpv2.UserProfile? user;

  _isc.UuidValue? draweeId;

  _izifjpv2.UserProfile? drawee;

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Invoice copyWith({
    _isc.UuidValue? id,
    String? originModule,
    String? direction,
    _ibd6zzmc.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    double? discount,
    double? finalAmount,
    _isdw5wvy.Currency? currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
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
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJson(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
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
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (gunsmithId != null) 'gunsmithId': gunsmithId?.toJson(),
      if (gunsmith != null) 'gunsmith': gunsmith?.toJsonForProtocol(),
      if (userId != null) 'userId': userId?.toJson(),
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (draweeId != null) 'draweeId': draweeId?.toJson(),
      if (drawee != null) 'drawee': drawee?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InvoiceImpl extends Invoice {
  _InvoiceImpl({
    _isc.UuidValue? id,
    required String originModule,
    required String direction,
    required _ibd6zzmc.InvoiceStatus status,
    required DateTime issueDate,
    required DateTime dueDate,
    required double totalAmount,
    double? discount,
    required double finalAmount,
    required _isdw5wvy.Currency currency,
    String? notes,
    bool? isRecurrent,
    String? asaasInstallmentId,
    String? asaasCustomerId,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    _isc.UuidValue? gunsmithId,
    _inzvshfq.Gunsmith? gunsmith,
    _isc.UuidValue? userId,
    _izifjpv2.UserProfile? user,
    _isc.UuidValue? draweeId,
    _izifjpv2.UserProfile? drawee,
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
         companyId: companyId,
         company: company,
         gunsmithId: gunsmithId,
         gunsmith: gunsmith,
         userId: userId,
         user: user,
         draweeId: draweeId,
         drawee: drawee,
       );

  /// Returns a shallow copy of this [Invoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Invoice copyWith({
    _isc.UuidValue? id,
    String? originModule,
    String? direction,
    _ibd6zzmc.InvoiceStatus? status,
    DateTime? issueDate,
    DateTime? dueDate,
    double? totalAmount,
    Object? discount = _Undefined,
    double? finalAmount,
    _isdw5wvy.Currency? currency,
    Object? notes = _Undefined,
    bool? isRecurrent,
    Object? asaasInstallmentId = _Undefined,
    Object? asaasCustomerId = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
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
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      gunsmithId: gunsmithId is _isc.UuidValue? ? gunsmithId : this.gunsmithId,
      gunsmith: gunsmith is _inzvshfq.Gunsmith?
          ? gunsmith
          : this.gunsmith?.copyWith(),
      userId: userId is _isc.UuidValue? ? userId : this.userId,
      user: user is _izifjpv2.UserProfile? ? user : this.user?.copyWith(),
      draweeId: draweeId is _isc.UuidValue? ? draweeId : this.draweeId,
      drawee: drawee is _izifjpv2.UserProfile?
          ? drawee
          : this.drawee?.copyWith(),
    );
  }
}
