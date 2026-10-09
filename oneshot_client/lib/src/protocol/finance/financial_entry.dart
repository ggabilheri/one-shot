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
import '../enums/financial_entry_status.dart' as _ig5968cj;
import '../enums/financial_entry_type.dart' as _i3i99b7x;
import '../enums/platform_app.enum.dart' as _ie17db6d;
import '../finance/bank_account.dart' as _iqlw3pat;
import '../finance/invoice.dart' as _i3d856q3;

abstract class FinancialEntry
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  FinancialEntry._({
    _isc.UuidValue? id,
    required this.type,
    required this.description,
    required this.amount,
    required this.dueDate,
    this.paymentDate,
    required this.status,
    required this.originModule,
    this.bankAccountId,
    this.bankAccount,
    this.invoiceId,
    this.invoice,
    this.companyId,
    this.company,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory FinancialEntry({
    _isc.UuidValue? id,
    required _i3i99b7x.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _ig5968cj.FinancialEntryStatus status,
    required _ie17db6d.PlatformApp originModule,
    _isc.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) = _FinancialEntryImpl;

  factory FinancialEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return FinancialEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      type: _i3i99b7x.FinancialEntryType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      description: jsonSerialization['description'] as String,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      dueDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['dueDate'],
      ),
      paymentDate: jsonSerialization['paymentDate'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['paymentDate'],
            ),
      status: _ig5968cj.FinancialEntryStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      originModule: _ie17db6d.PlatformApp.fromJson(
        (jsonSerialization['originModule'] as String),
      ),
      bankAccountId: jsonSerialization['bankAccountId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['bankAccountId'],
            ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iqlw3pat.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceId'],
            ),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_i3d856q3.Invoice>(
              jsonSerialization['invoice'],
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

  _i3i99b7x.FinancialEntryType type;

  String description;

  double amount;

  DateTime dueDate;

  DateTime? paymentDate;

  _ig5968cj.FinancialEntryStatus status;

  _ie17db6d.PlatformApp originModule;

  _isc.UuidValue? bankAccountId;

  _iqlw3pat.BankAccount? bankAccount;

  _isc.UuidValue? invoiceId;

  _i3d856q3.Invoice? invoice;

  _isc.UuidValue? companyId;

  _iocy1ifk.Company? company;

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  FinancialEntry copyWith({
    _isc.UuidValue? id,
    _i3i99b7x.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    DateTime? paymentDate,
    _ig5968cj.FinancialEntryStatus? status,
    _ie17db6d.PlatformApp? originModule,
    _isc.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'FinancialEntry',
      'id': id.toJson(),
      'type': type.toJson(),
      'description': description,
      'amount': amount,
      'dueDate': dueDate.toJson(),
      if (paymentDate != null) 'paymentDate': paymentDate?.toJson(),
      'status': status.toJson(),
      'originModule': originModule.toJson(),
      if (bankAccountId != null) 'bankAccountId': bankAccountId?.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
      if (companyId != null) 'companyId': companyId?.toJson(),
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'FinancialEntry',
      'id': id.toJson(),
      'type': type.toJson(),
      'description': description,
      'amount': amount,
      'dueDate': dueDate.toJson(),
      if (paymentDate != null) 'paymentDate': paymentDate?.toJson(),
      'status': status.toJson(),
      'originModule': originModule.toJson(),
      if (bankAccountId != null) 'bankAccountId': bankAccountId?.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJsonForProtocol(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      if (invoice != null) 'invoice': invoice?.toJsonForProtocol(),
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

class _FinancialEntryImpl extends FinancialEntry {
  _FinancialEntryImpl({
    _isc.UuidValue? id,
    required _i3i99b7x.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _ig5968cj.FinancialEntryStatus status,
    required _ie17db6d.PlatformApp originModule,
    _isc.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    _isc.UuidValue? invoiceId,
    _i3d856q3.Invoice? invoice,
    _isc.UuidValue? companyId,
    _iocy1ifk.Company? company,
  }) : super._(
         id: id,
         type: type,
         description: description,
         amount: amount,
         dueDate: dueDate,
         paymentDate: paymentDate,
         status: status,
         originModule: originModule,
         bankAccountId: bankAccountId,
         bankAccount: bankAccount,
         invoiceId: invoiceId,
         invoice: invoice,
         companyId: companyId,
         company: company,
       );

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  FinancialEntry copyWith({
    _isc.UuidValue? id,
    _i3i99b7x.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    Object? paymentDate = _Undefined,
    _ig5968cj.FinancialEntryStatus? status,
    _ie17db6d.PlatformApp? originModule,
    Object? bankAccountId = _Undefined,
    Object? bankAccount = _Undefined,
    Object? invoiceId = _Undefined,
    Object? invoice = _Undefined,
    Object? companyId = _Undefined,
    Object? company = _Undefined,
  }) {
    return FinancialEntry(
      id: id ?? this.id,
      type: type ?? this.type,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      dueDate: dueDate ?? this.dueDate,
      paymentDate: paymentDate is DateTime? ? paymentDate : this.paymentDate,
      status: status ?? this.status,
      originModule: originModule ?? this.originModule,
      bankAccountId: bankAccountId is _isc.UuidValue?
          ? bankAccountId
          : this.bankAccountId,
      bankAccount: bankAccount is _iqlw3pat.BankAccount?
          ? bankAccount
          : this.bankAccount?.copyWith(),
      invoiceId: invoiceId is _isc.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i3d856q3.Invoice?
          ? invoice
          : this.invoice?.copyWith(),
      companyId: companyId is _isc.UuidValue? ? companyId : this.companyId,
      company: company is _iocy1ifk.Company?
          ? company
          : this.company?.copyWith(),
    );
  }
}
