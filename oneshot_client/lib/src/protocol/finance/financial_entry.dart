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
import '../enums/financial_entry_type.dart' as _i2;
import '../enums/financial_entry_status.dart' as _i3;
import '../enums/platform_app.enum.dart' as _i4;
import '../finance/bank_account.dart' as _i5;
import '../finance/invoice.dart' as _i6;
import '../company/company.dart' as _i7;
import 'package:oneshot_client/src/protocol/protocol.dart' as _i8;

abstract class FinancialEntry implements _i1.SerializableModel {
  FinancialEntry._({
    _i1.UuidValue? id,
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
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory FinancialEntry({
    _i1.UuidValue? id,
    required _i2.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _i3.FinancialEntryStatus status,
    required _i4.PlatformApp originModule,
    _i1.UuidValue? bankAccountId,
    _i5.BankAccount? bankAccount,
    _i1.UuidValue? invoiceId,
    _i6.Invoice? invoice,
    _i1.UuidValue? companyId,
    _i7.Company? company,
  }) = _FinancialEntryImpl;

  factory FinancialEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return FinancialEntry(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      type: _i2.FinancialEntryType.fromJson(
        (jsonSerialization['type'] as String),
      ),
      description: jsonSerialization['description'] as String,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      dueDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dueDate']),
      paymentDate: jsonSerialization['paymentDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['paymentDate'],
            ),
      status: _i3.FinancialEntryStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      originModule: _i4.PlatformApp.fromJson(
        (jsonSerialization['originModule'] as String),
      ),
      bankAccountId: jsonSerialization['bankAccountId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['bankAccountId'],
            ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _i8.Protocol().deserialize<_i5.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['invoiceId']),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i8.Protocol().deserialize<_i6.Invoice>(
              jsonSerialization['invoice'],
            ),
      companyId: jsonSerialization['companyId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['companyId']),
      company: jsonSerialization['company'] == null
          ? null
          : _i8.Protocol().deserialize<_i7.Company>(
              jsonSerialization['company'],
            ),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  _i2.FinancialEntryType type;

  String description;

  double amount;

  DateTime dueDate;

  DateTime? paymentDate;

  _i3.FinancialEntryStatus status;

  _i4.PlatformApp originModule;

  _i1.UuidValue? bankAccountId;

  _i5.BankAccount? bankAccount;

  _i1.UuidValue? invoiceId;

  _i6.Invoice? invoice;

  _i1.UuidValue? companyId;

  _i7.Company? company;

  /// Returns a shallow copy of this [FinancialEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  FinancialEntry copyWith({
    _i1.UuidValue? id,
    _i2.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    DateTime? paymentDate,
    _i3.FinancialEntryStatus? status,
    _i4.PlatformApp? originModule,
    _i1.UuidValue? bankAccountId,
    _i5.BankAccount? bankAccount,
    _i1.UuidValue? invoiceId,
    _i6.Invoice? invoice,
    _i1.UuidValue? companyId,
    _i7.Company? company,
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
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FinancialEntryImpl extends FinancialEntry {
  _FinancialEntryImpl({
    _i1.UuidValue? id,
    required _i2.FinancialEntryType type,
    required String description,
    required double amount,
    required DateTime dueDate,
    DateTime? paymentDate,
    required _i3.FinancialEntryStatus status,
    required _i4.PlatformApp originModule,
    _i1.UuidValue? bankAccountId,
    _i5.BankAccount? bankAccount,
    _i1.UuidValue? invoiceId,
    _i6.Invoice? invoice,
    _i1.UuidValue? companyId,
    _i7.Company? company,
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
  @_i1.useResult
  @override
  FinancialEntry copyWith({
    _i1.UuidValue? id,
    _i2.FinancialEntryType? type,
    String? description,
    double? amount,
    DateTime? dueDate,
    Object? paymentDate = _Undefined,
    _i3.FinancialEntryStatus? status,
    _i4.PlatformApp? originModule,
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
      bankAccountId: bankAccountId is _i1.UuidValue?
          ? bankAccountId
          : this.bankAccountId,
      bankAccount: bankAccount is _i5.BankAccount?
          ? bankAccount
          : this.bankAccount?.copyWith(),
      invoiceId: invoiceId is _i1.UuidValue? ? invoiceId : this.invoiceId,
      invoice: invoice is _i6.Invoice? ? invoice : this.invoice?.copyWith(),
      companyId: companyId is _i1.UuidValue? ? companyId : this.companyId,
      company: company is _i7.Company? ? company : this.company?.copyWith(),
    );
  }
}
