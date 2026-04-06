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
import 'package:serverpod/serverpod.dart' as _i1;

enum AsaasWebhookEventType implements _i1.SerializableModel {
  paymentAuthorized,
  paymentAwaitingRiskAnalysis,
  paymentApprovedByRiskAnalysis,
  paymentReprovedByRiskAnalysis,
  paymentCreated,
  paymentUpdated,
  paymentConfirmed,
  paymentReceived,
  paymentAnticipated,
  paymentOverdue,
  paymentDeleted,
  paymentRestored,
  paymentRefunded,
  paymentRefundInProgress,
  paymentRefundDenied,
  paymentReceivedInCashUndone,
  paymentChargebackRequested,
  paymentChargebackDispute,
  paymentAwaitingChargebackReversal,
  paymentDunningReceived,
  paymentDunningRequested,
  paymentBankSlipCancelled,
  paymentCreditCardCaptureRefused,
  paymentPartiallyRefunded,
  transferCreated,
  transferPending,
  transferInBankProcessing,
  transferBlocked,
  transferDone,
  transferFailed,
  transferCancelled,
  accountStatusBankAccountInfoApproved,
  accountStatusBankAccountInfoRejected,
  accountStatusCommercialInfoApproved,
  accountStatusCommercialInfoRejected,
  accountStatusDocumentApproved,
  accountStatusDocumentRejected,
  accountStatusGeneralApprovalApproved,
  accountStatusGeneralApprovalRejected,
  balanceValueBlocked,
  balanceValueUnblocked,
  internalTransferCredit,
  internalTransferDebit,
  subscriptionCreated,
  subscriptionUpdated,
  subscriptionInactivated,
  checkoutPaid,
  checkoutCancelled,
  checkoutExpired,
  unknown;

  static AsaasWebhookEventType fromJson(String name) {
    switch (name) {
      case 'paymentAuthorized':
        return AsaasWebhookEventType.paymentAuthorized;
      case 'paymentAwaitingRiskAnalysis':
        return AsaasWebhookEventType.paymentAwaitingRiskAnalysis;
      case 'paymentApprovedByRiskAnalysis':
        return AsaasWebhookEventType.paymentApprovedByRiskAnalysis;
      case 'paymentReprovedByRiskAnalysis':
        return AsaasWebhookEventType.paymentReprovedByRiskAnalysis;
      case 'paymentCreated':
        return AsaasWebhookEventType.paymentCreated;
      case 'paymentUpdated':
        return AsaasWebhookEventType.paymentUpdated;
      case 'paymentConfirmed':
        return AsaasWebhookEventType.paymentConfirmed;
      case 'paymentReceived':
        return AsaasWebhookEventType.paymentReceived;
      case 'paymentAnticipated':
        return AsaasWebhookEventType.paymentAnticipated;
      case 'paymentOverdue':
        return AsaasWebhookEventType.paymentOverdue;
      case 'paymentDeleted':
        return AsaasWebhookEventType.paymentDeleted;
      case 'paymentRestored':
        return AsaasWebhookEventType.paymentRestored;
      case 'paymentRefunded':
        return AsaasWebhookEventType.paymentRefunded;
      case 'paymentRefundInProgress':
        return AsaasWebhookEventType.paymentRefundInProgress;
      case 'paymentRefundDenied':
        return AsaasWebhookEventType.paymentRefundDenied;
      case 'paymentReceivedInCashUndone':
        return AsaasWebhookEventType.paymentReceivedInCashUndone;
      case 'paymentChargebackRequested':
        return AsaasWebhookEventType.paymentChargebackRequested;
      case 'paymentChargebackDispute':
        return AsaasWebhookEventType.paymentChargebackDispute;
      case 'paymentAwaitingChargebackReversal':
        return AsaasWebhookEventType.paymentAwaitingChargebackReversal;
      case 'paymentDunningReceived':
        return AsaasWebhookEventType.paymentDunningReceived;
      case 'paymentDunningRequested':
        return AsaasWebhookEventType.paymentDunningRequested;
      case 'paymentBankSlipCancelled':
        return AsaasWebhookEventType.paymentBankSlipCancelled;
      case 'paymentCreditCardCaptureRefused':
        return AsaasWebhookEventType.paymentCreditCardCaptureRefused;
      case 'paymentPartiallyRefunded':
        return AsaasWebhookEventType.paymentPartiallyRefunded;
      case 'transferCreated':
        return AsaasWebhookEventType.transferCreated;
      case 'transferPending':
        return AsaasWebhookEventType.transferPending;
      case 'transferInBankProcessing':
        return AsaasWebhookEventType.transferInBankProcessing;
      case 'transferBlocked':
        return AsaasWebhookEventType.transferBlocked;
      case 'transferDone':
        return AsaasWebhookEventType.transferDone;
      case 'transferFailed':
        return AsaasWebhookEventType.transferFailed;
      case 'transferCancelled':
        return AsaasWebhookEventType.transferCancelled;
      case 'accountStatusBankAccountInfoApproved':
        return AsaasWebhookEventType.accountStatusBankAccountInfoApproved;
      case 'accountStatusBankAccountInfoRejected':
        return AsaasWebhookEventType.accountStatusBankAccountInfoRejected;
      case 'accountStatusCommercialInfoApproved':
        return AsaasWebhookEventType.accountStatusCommercialInfoApproved;
      case 'accountStatusCommercialInfoRejected':
        return AsaasWebhookEventType.accountStatusCommercialInfoRejected;
      case 'accountStatusDocumentApproved':
        return AsaasWebhookEventType.accountStatusDocumentApproved;
      case 'accountStatusDocumentRejected':
        return AsaasWebhookEventType.accountStatusDocumentRejected;
      case 'accountStatusGeneralApprovalApproved':
        return AsaasWebhookEventType.accountStatusGeneralApprovalApproved;
      case 'accountStatusGeneralApprovalRejected':
        return AsaasWebhookEventType.accountStatusGeneralApprovalRejected;
      case 'balanceValueBlocked':
        return AsaasWebhookEventType.balanceValueBlocked;
      case 'balanceValueUnblocked':
        return AsaasWebhookEventType.balanceValueUnblocked;
      case 'internalTransferCredit':
        return AsaasWebhookEventType.internalTransferCredit;
      case 'internalTransferDebit':
        return AsaasWebhookEventType.internalTransferDebit;
      case 'subscriptionCreated':
        return AsaasWebhookEventType.subscriptionCreated;
      case 'subscriptionUpdated':
        return AsaasWebhookEventType.subscriptionUpdated;
      case 'subscriptionInactivated':
        return AsaasWebhookEventType.subscriptionInactivated;
      case 'checkoutPaid':
        return AsaasWebhookEventType.checkoutPaid;
      case 'checkoutCancelled':
        return AsaasWebhookEventType.checkoutCancelled;
      case 'checkoutExpired':
        return AsaasWebhookEventType.checkoutExpired;
      case 'unknown':
        return AsaasWebhookEventType.unknown;
      default:
        throw ArgumentError(
          'Value "$name" cannot be converted to "AsaasWebhookEventType"',
        );
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
