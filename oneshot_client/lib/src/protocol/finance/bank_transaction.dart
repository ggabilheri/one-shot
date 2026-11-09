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

import '../finance/bank_account.dart' as _iqlw3pat;
import '../finance/financial_entry.dart' as _ihdy8ekq;

abstract class BankTransaction
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  BankTransaction._({
    _isc.UuidValue? id,
    required this.bankAccountId,
    this.bankAccount,
    required this.fitId,
    required this.transactionType,
    required this.date,
    required this.amount,
    this.memo,
    this.financialEntryId,
    this.financialEntry,
    required this.isReconciled,
    this.reconciledAt,
  }) : id = id ?? const _isc.Uuid().v4obj();

  factory BankTransaction({
    _isc.UuidValue? id,
    required _isc.UuidValue bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    required String fitId,
    required String transactionType,
    required DateTime date,
    required double amount,
    String? memo,
    _isc.UuidValue? financialEntryId,
    _ihdy8ekq.FinancialEntry? financialEntry,
    required bool isReconciled,
    DateTime? reconciledAt,
  }) = _BankTransactionImpl;

  factory BankTransaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankTransaction(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      bankAccountId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['bankAccountId'],
      ),
      bankAccount: jsonSerialization['bankAccount'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_iqlw3pat.BankAccount>(
              jsonSerialization['bankAccount'],
            ),
      fitId: jsonSerialization['fitId'] as String,
      transactionType: jsonSerialization['transactionType'] as String,
      date: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      amount: (jsonSerialization['amount'] as num).toDouble(),
      memo: jsonSerialization['memo'] as String?,
      financialEntryId: jsonSerialization['financialEntryId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['financialEntryId'],
            ),
      financialEntry: jsonSerialization['financialEntry'] == null
          ? null
          : _itys55mc.Protocol().deserialize<_ihdy8ekq.FinancialEntry>(
              jsonSerialization['financialEntry'],
            ),
      isReconciled: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isReconciled'],
      ),
      reconciledAt: jsonSerialization['reconciledAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['reconciledAt'],
            ),
    );
  }

  /// The id of the object.
  _isc.UuidValue id;

  _isc.UuidValue bankAccountId;

  _iqlw3pat.BankAccount? bankAccount;

  String fitId;

  String transactionType;

  DateTime date;

  double amount;

  String? memo;

  _isc.UuidValue? financialEntryId;

  _ihdy8ekq.FinancialEntry? financialEntry;

  bool isReconciled;

  DateTime? reconciledAt;

  /// Returns a shallow copy of this [BankTransaction]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  BankTransaction copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount =
        const _UndefinedBankTransaction$bankAccount(),
    String? fitId,
    String? transactionType,
    DateTime? date,
    double? amount,
    String? memo,
    _isc.UuidValue? financialEntryId = const _isc.$UndefinedUuidValue(),
    _ihdy8ekq.FinancialEntry? financialEntry =
        const _UndefinedBankTransaction$financialEntry(),
    bool? isReconciled,
    DateTime? reconciledAt = const _isc.$UndefinedDateTime(),
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankTransaction',
      'id': id.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJson(),
      'fitId': fitId,
      'transactionType': transactionType,
      'date': date.toJson(),
      'amount': amount,
      if (memo != null) 'memo': memo,
      if (financialEntryId != null)
        'financialEntryId': financialEntryId?.toJson(),
      if (financialEntry != null) 'financialEntry': financialEntry?.toJson(),
      'isReconciled': isReconciled,
      if (reconciledAt != null) 'reconciledAt': reconciledAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'BankTransaction',
      'id': id.toJson(),
      'bankAccountId': bankAccountId.toJson(),
      if (bankAccount != null) 'bankAccount': bankAccount?.toJsonForProtocol(),
      'fitId': fitId,
      'transactionType': transactionType,
      'date': date.toJson(),
      'amount': amount,
      if (memo != null) 'memo': memo,
      if (financialEntryId != null)
        'financialEntryId': financialEntryId?.toJson(),
      if (financialEntry != null)
        'financialEntry': financialEntry?.toJsonForProtocol(),
      'isReconciled': isReconciled,
      if (reconciledAt != null) 'reconciledAt': reconciledAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UndefinedBankTransaction$bankAccount extends _isc.UndefinedSentinel
    implements _iqlw3pat.BankAccount {
  const _UndefinedBankTransaction$bankAccount();
}

class _UndefinedBankTransaction$financialEntry extends _isc.UndefinedSentinel
    implements _ihdy8ekq.FinancialEntry {
  const _UndefinedBankTransaction$financialEntry();
}

class _BankTransactionImpl extends BankTransaction {
  _BankTransactionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue bankAccountId,
    _iqlw3pat.BankAccount? bankAccount,
    required String fitId,
    required String transactionType,
    required DateTime date,
    required double amount,
    String? memo,
    _isc.UuidValue? financialEntryId,
    _ihdy8ekq.FinancialEntry? financialEntry,
    required bool isReconciled,
    DateTime? reconciledAt,
  }) : super._(
         id: id,
         bankAccountId: bankAccountId,
         bankAccount: bankAccount,
         fitId: fitId,
         transactionType: transactionType,
         date: date,
         amount: amount,
         memo: memo,
         financialEntryId: financialEntryId,
         financialEntry: financialEntry,
         isReconciled: isReconciled,
         reconciledAt: reconciledAt,
       );

  /// Returns a shallow copy of this [BankTransaction]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  BankTransaction copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? bankAccountId,
    _iqlw3pat.BankAccount? bankAccount =
        const _UndefinedBankTransaction$bankAccount(),
    String? fitId,
    String? transactionType,
    DateTime? date,
    double? amount,
    Object? memo = _Undefined,
    _isc.UuidValue? financialEntryId = const _isc.$UndefinedUuidValue(),
    _ihdy8ekq.FinancialEntry? financialEntry =
        const _UndefinedBankTransaction$financialEntry(),
    bool? isReconciled,
    DateTime? reconciledAt = const _isc.$UndefinedDateTime(),
  }) {
    return BankTransaction(
      id: id ?? this.id,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      bankAccount: bankAccount is _isc.UndefinedSentinel
          ? this.bankAccount?.copyWith()
          : bankAccount,
      fitId: fitId ?? this.fitId,
      transactionType: transactionType ?? this.transactionType,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      memo: memo is String? ? memo : this.memo,
      financialEntryId: financialEntryId is _isc.UndefinedSentinel
          ? this.financialEntryId
          : financialEntryId,
      financialEntry: financialEntry is _isc.UndefinedSentinel
          ? this.financialEntry?.copyWith()
          : financialEntry,
      isReconciled: isReconciled ?? this.isReconciled,
      reconciledAt: reconciledAt is _isc.UndefinedSentinel
          ? this.reconciledAt
          : reconciledAt,
    );
  }
}
