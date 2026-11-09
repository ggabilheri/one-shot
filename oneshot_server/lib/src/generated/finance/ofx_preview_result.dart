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
import 'package:oneshot_server/src/generated/protocol.dart' as _iwflrbqm;
import 'package:serverpod/serverpod.dart' as _is;

import '../finance/bank_transaction.dart' as _i9pzvnx4;

abstract class OfxPreviewResult
    implements _is.SerializableModel, _is.ProtocolSerialization {
  OfxPreviewResult._({
    this.bankId,
    this.branchId,
    this.acctId,
    this.startDate,
    this.endDate,
    this.ledgerBalance,
    required this.transactions,
    required this.totalCredits,
    required this.totalDebits,
    required this.newTransactionsCount,
    required this.duplicatedTransactionsCount,
    required this.isAccountMatched,
    this.accountMatchMessage,
  });

  factory OfxPreviewResult({
    String? bankId,
    String? branchId,
    String? acctId,
    DateTime? startDate,
    DateTime? endDate,
    double? ledgerBalance,
    required List<_i9pzvnx4.BankTransaction> transactions,
    required double totalCredits,
    required double totalDebits,
    required int newTransactionsCount,
    required int duplicatedTransactionsCount,
    required bool isAccountMatched,
    String? accountMatchMessage,
  }) = _OfxPreviewResultImpl;

  factory OfxPreviewResult.fromJson(Map<String, dynamic> jsonSerialization) {
    return OfxPreviewResult(
      bankId: jsonSerialization['bankId'] as String?,
      branchId: jsonSerialization['branchId'] as String?,
      acctId: jsonSerialization['acctId'] as String?,
      startDate: jsonSerialization['startDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['startDate']),
      endDate: jsonSerialization['endDate'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      ledgerBalance: (jsonSerialization['ledgerBalance'] as num?)?.toDouble(),
      transactions: _iwflrbqm.Protocol()
          .deserialize<List<_i9pzvnx4.BankTransaction>>(
            jsonSerialization['transactions'],
          ),
      totalCredits: (jsonSerialization['totalCredits'] as num).toDouble(),
      totalDebits: (jsonSerialization['totalDebits'] as num).toDouble(),
      newTransactionsCount: jsonSerialization['newTransactionsCount'] as int,
      duplicatedTransactionsCount:
          jsonSerialization['duplicatedTransactionsCount'] as int,
      isAccountMatched: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isAccountMatched'],
      ),
      accountMatchMessage: jsonSerialization['accountMatchMessage'] as String?,
    );
  }

  String? bankId;

  String? branchId;

  String? acctId;

  DateTime? startDate;

  DateTime? endDate;

  double? ledgerBalance;

  List<_i9pzvnx4.BankTransaction> transactions;

  double totalCredits;

  double totalDebits;

  int newTransactionsCount;

  int duplicatedTransactionsCount;

  bool isAccountMatched;

  String? accountMatchMessage;

  /// Returns a shallow copy of this [OfxPreviewResult]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  OfxPreviewResult copyWith({
    String? bankId,
    String? branchId,
    String? acctId,
    DateTime? startDate = const _is.$UndefinedDateTime(),
    DateTime? endDate = const _is.$UndefinedDateTime(),
    double? ledgerBalance,
    List<_i9pzvnx4.BankTransaction>? transactions,
    double? totalCredits,
    double? totalDebits,
    int? newTransactionsCount,
    int? duplicatedTransactionsCount,
    bool? isAccountMatched,
    String? accountMatchMessage,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'OfxPreviewResult',
      if (bankId != null) 'bankId': bankId,
      if (branchId != null) 'branchId': branchId,
      if (acctId != null) 'acctId': acctId,
      if (startDate != null) 'startDate': startDate?.toJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
      if (ledgerBalance != null) 'ledgerBalance': ledgerBalance,
      'transactions': transactions.toJson(valueToJson: (v) => v.toJson()),
      'totalCredits': totalCredits,
      'totalDebits': totalDebits,
      'newTransactionsCount': newTransactionsCount,
      'duplicatedTransactionsCount': duplicatedTransactionsCount,
      'isAccountMatched': isAccountMatched,
      if (accountMatchMessage != null)
        'accountMatchMessage': accountMatchMessage,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'OfxPreviewResult',
      if (bankId != null) 'bankId': bankId,
      if (branchId != null) 'branchId': branchId,
      if (acctId != null) 'acctId': acctId,
      if (startDate != null) 'startDate': startDate?.toJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
      if (ledgerBalance != null) 'ledgerBalance': ledgerBalance,
      'transactions': transactions.toJson(
        valueToJson: (v) => v.toJsonForProtocol(),
      ),
      'totalCredits': totalCredits,
      'totalDebits': totalDebits,
      'newTransactionsCount': newTransactionsCount,
      'duplicatedTransactionsCount': duplicatedTransactionsCount,
      'isAccountMatched': isAccountMatched,
      if (accountMatchMessage != null)
        'accountMatchMessage': accountMatchMessage,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OfxPreviewResultImpl extends OfxPreviewResult {
  _OfxPreviewResultImpl({
    String? bankId,
    String? branchId,
    String? acctId,
    DateTime? startDate,
    DateTime? endDate,
    double? ledgerBalance,
    required List<_i9pzvnx4.BankTransaction> transactions,
    required double totalCredits,
    required double totalDebits,
    required int newTransactionsCount,
    required int duplicatedTransactionsCount,
    required bool isAccountMatched,
    String? accountMatchMessage,
  }) : super._(
         bankId: bankId,
         branchId: branchId,
         acctId: acctId,
         startDate: startDate,
         endDate: endDate,
         ledgerBalance: ledgerBalance,
         transactions: transactions,
         totalCredits: totalCredits,
         totalDebits: totalDebits,
         newTransactionsCount: newTransactionsCount,
         duplicatedTransactionsCount: duplicatedTransactionsCount,
         isAccountMatched: isAccountMatched,
         accountMatchMessage: accountMatchMessage,
       );

  /// Returns a shallow copy of this [OfxPreviewResult]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  OfxPreviewResult copyWith({
    Object? bankId = _Undefined,
    Object? branchId = _Undefined,
    Object? acctId = _Undefined,
    DateTime? startDate = const _is.$UndefinedDateTime(),
    DateTime? endDate = const _is.$UndefinedDateTime(),
    Object? ledgerBalance = _Undefined,
    List<_i9pzvnx4.BankTransaction>? transactions,
    double? totalCredits,
    double? totalDebits,
    int? newTransactionsCount,
    int? duplicatedTransactionsCount,
    bool? isAccountMatched,
    Object? accountMatchMessage = _Undefined,
  }) {
    return OfxPreviewResult(
      bankId: bankId is String? ? bankId : this.bankId,
      branchId: branchId is String? ? branchId : this.branchId,
      acctId: acctId is String? ? acctId : this.acctId,
      startDate: startDate is _is.UndefinedSentinel
          ? this.startDate
          : startDate,
      endDate: endDate is _is.UndefinedSentinel ? this.endDate : endDate,
      ledgerBalance: ledgerBalance is double?
          ? ledgerBalance
          : this.ledgerBalance,
      transactions:
          transactions ?? this.transactions.map((e0) => e0.copyWith()).toList(),
      totalCredits: totalCredits ?? this.totalCredits,
      totalDebits: totalDebits ?? this.totalDebits,
      newTransactionsCount: newTransactionsCount ?? this.newTransactionsCount,
      duplicatedTransactionsCount:
          duplicatedTransactionsCount ?? this.duplicatedTransactionsCount,
      isAccountMatched: isAccountMatched ?? this.isAccountMatched,
      accountMatchMessage: accountMatchMessage is String?
          ? accountMatchMessage
          : this.accountMatchMessage,
    );
  }
}
