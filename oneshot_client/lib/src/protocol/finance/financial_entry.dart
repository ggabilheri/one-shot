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
import 'package:oneshot_client/src/protocol/protocol.dart' as _i7;

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
    required this.bankAccountId,
    this.bankAccount,
    required this.invoiceId,
    this.invoice,
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
    required _i1.UuidValue bankAccountId,
    _i5.BankAccount? bankAccount,
    required _i1.UuidValue invoiceId,
    _i6.Invoice? invoice,
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
      bankAccountId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['bankAccountId'],
      ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _i7.Protocol().deserialize<_i5.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      invoiceId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['invoiceId'],
      ),
      invoice: jsonSerialization['invoice'] == null
          ? null
          : _i7.Protocol().deserialize<_i6.Invoice>(
              jsonSerialization['invoice'],
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

  _i1.UuidValue bankAccountId;

  _i5.BankAccount? bankAccount;

  _i1.UuidValue invoiceId;

  _i6.Invoice? invoice;

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
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      'invoiceId': invoiceId.toJson(),
      if (invoice != null) 'invoice': invoice?.toJson(),
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
    required _i1.UuidValue bankAccountId,
    _i5.BankAccount? bankAccount,
    required _i1.UuidValue invoiceId,
    _i6.Invoice? invoice,
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
    _i1.UuidValue? bankAccountId,
    Object? bankAccount = _Undefined,
    _i1.UuidValue? invoiceId,
    Object? invoice = _Undefined,
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
      bankAccountId: bankAccountId ?? this.bankAccountId,
      bankAccount: bankAccount is _i5.BankAccount?
          ? bankAccount
          : this.bankAccount?.copyWith(),
      invoiceId: invoiceId ?? this.invoiceId,
      invoice: invoice is _i6.Invoice? ? invoice : this.invoice?.copyWith(),
    );
  }
}
