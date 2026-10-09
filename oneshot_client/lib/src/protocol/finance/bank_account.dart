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
import '../enums/pix_key_type.dart' as _imwhqumt;

abstract class BankAccount
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  BankAccount._({
    _isc.UuidValue? id,
    required this.name,
    this.bankName,
    this.agency,
    this.agencyDigit,
    this.accountNumber,
    this.accountDigit,
    required this.balance,
    required this.status,
    required this.originModule,
    this.companyId,
    this.company,
    this.pixKey,
    this.pixKeyType,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory BankAccount({
    _isc.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  }) = _BankAccountImpl;

  factory BankAccount.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankAccount(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      bankName: jsonSerialization['bankName'] as String?,
      agency: jsonSerialization['agency'] as String?,
      agencyDigit: jsonSerialization['agencyDigit'] as String?,
      accountNumber: jsonSerialization['accountNumber'] as String?,
      accountDigit: jsonSerialization['accountDigit'] as String?,
      balance: (jsonSerialization['balance'] as num).toDouble(),
      status: jsonSerialization['status'] as String,
      originModule: jsonSerialization['originModule'] as String,
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
      pixKey: jsonSerialization['pixKey'] as String?,
      pixKeyType: jsonSerialization['pixKeyType'] == null
          ? null
          : _imwhqumt.PixKeyType.fromJson(
              (jsonSerialization['pixKeyType'] as String),
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  String name;

  String? bankName;

  String? agency;

  String? agencyDigit;

  String? accountNumber;

  String? accountDigit;

  double balance;

  String status;

  String originModule;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  String? pixKey;

  _imwhqumt.PixKeyType? pixKeyType;

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  BankAccount copyWith({
    _isc.UuidValue? id,
    String? name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    double? balance,
    String? status,
    String? originModule,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankAccount',
      'id': id.toJson(),
      'name': name,
      if (bankName != null) 'bankName': bankName,
      if (agency != null) 'agency': agency,
      if (agencyDigit != null) 'agencyDigit': agencyDigit,
      if (accountNumber != null) 'accountNumber': accountNumber,
      if (accountDigit != null) 'accountDigit': accountDigit,
      'balance': balance,
      'status': status,
      'originModule': originModule,
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
      if (pixKey != null) 'pixKey': pixKey,
      if (pixKeyType != null) 'pixKeyType': pixKeyType?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'BankAccount',
      'id': id.toJson(),
      'name': name,
      if (bankName != null) 'bankName': bankName,
      if (agency != null) 'agency': agency,
      if (agencyDigit != null) 'agencyDigit': agencyDigit,
      if (accountNumber != null) 'accountNumber': accountNumber,
      if (accountDigit != null) 'accountDigit': accountDigit,
      'balance': balance,
      'status': status,
      'originModule': originModule,
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJsonForProtocol(),
      if (pixKey != null) 'pixKey': pixKey,
      if (pixKeyType != null) 'pixKeyType': pixKeyType?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BankAccountImpl extends BankAccount {
  _BankAccountImpl({
    _isc.UuidValue? id,
    required String name,
    String? bankName,
    String? agency,
    String? agencyDigit,
    String? accountNumber,
    String? accountDigit,
    required double balance,
    required String status,
    required String originModule,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
    String? pixKey,
    _imwhqumt.PixKeyType? pixKeyType,
  }) : super._(
         id: id,
         name: name,
         bankName: bankName,
         agency: agency,
         agencyDigit: agencyDigit,
         accountNumber: accountNumber,
         accountDigit: accountDigit,
         balance: balance,
         status: status,
         originModule: originModule,
         companyId: companyId,
         company: company,
         pixKey: pixKey,
         pixKeyType: pixKeyType,
       );

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  BankAccount copyWith({
    _isc.UuidValue? id,
    String? name,
    Object? bankName = _Undefined,
    Object? agency = _Undefined,
    Object? agencyDigit = _Undefined,
    Object? accountNumber = _Undefined,
    Object? accountDigit = _Undefined,
    double? balance,
    String? status,
    String? originModule,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
    Object? pixKey = _Undefined,
    Object? pixKeyType = _Undefined,
  }) {
    return BankAccount(
      id: id ?? this.id,
      name: name ?? this.name,
      bankName: bankName is String? ? bankName : this.bankName,
      agency: agency is String? ? agency : this.agency,
      agencyDigit: agencyDigit is String? ? agencyDigit : this.agencyDigit,
      accountNumber: accountNumber is String?
          ? accountNumber
          : this.accountNumber,
      accountDigit: accountDigit is String? ? accountDigit : this.accountDigit,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      originModule: originModule ?? this.originModule,
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
      pixKey: pixKey is String? ? pixKey : this.pixKey,
      pixKeyType: pixKeyType is _imwhqumt.PixKeyType?
          ? pixKeyType
          : this.pixKeyType,
    );
  }
}
