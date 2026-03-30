// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_received_credits_resource_source_flows_details.dart';/// 
final class TreasuryReceivedCreditsResourceLinkedFlows {const TreasuryReceivedCreditsResourceLinkedFlows({this.creditReversal, this.issuingAuthorization, this.issuingTransaction, this.sourceFlow, this.sourceFlowDetails, this.sourceFlowType, });

factory TreasuryReceivedCreditsResourceLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceLinkedFlows(
  creditReversal: json['credit_reversal'] as String?,
  issuingAuthorization: json['issuing_authorization'] as String?,
  issuingTransaction: json['issuing_transaction'] as String?,
  sourceFlow: json['source_flow'] as String?,
  sourceFlowDetails: json['source_flow_details'] != null ? TreasuryReceivedCreditsResourceSourceFlowsDetails.fromJson(json['source_flow_details'] as Map<String, dynamic>) : null,
  sourceFlowType: json['source_flow_type'] as String?,
); }

/// The CreditReversal created as a result of this ReceivedCredit being reversed.
final String? creditReversal;

/// Set if the ReceivedCredit was created due to an [Issuing Authorization](https://api.stripe.com#issuing_authorizations) object.
final String? issuingAuthorization;

/// Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://api.stripe.com#issuing_transactions) object.
final String? issuingTransaction;

/// ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
final String? sourceFlow;

/// The expandable object of the source flow.
final TreasuryReceivedCreditsResourceSourceFlowsDetails? sourceFlowDetails;

/// The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
final String? sourceFlowType;

Map<String, dynamic> toJson() { return {
  'credit_reversal': ?creditReversal,
  'issuing_authorization': ?issuingAuthorization,
  'issuing_transaction': ?issuingTransaction,
  'source_flow': ?sourceFlow,
  if (sourceFlowDetails != null) 'source_flow_details': sourceFlowDetails?.toJson(),
  'source_flow_type': ?sourceFlowType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'credit_reversal', 'issuing_authorization', 'issuing_transaction', 'source_flow', 'source_flow_details', 'source_flow_type'}.contains(key)); } 
TreasuryReceivedCreditsResourceLinkedFlows copyWith({String? Function()? creditReversal, String? Function()? issuingAuthorization, String? Function()? issuingTransaction, String? Function()? sourceFlow, TreasuryReceivedCreditsResourceSourceFlowsDetails? Function()? sourceFlowDetails, String? Function()? sourceFlowType, }) { return TreasuryReceivedCreditsResourceLinkedFlows(
  creditReversal: creditReversal != null ? creditReversal() : this.creditReversal,
  issuingAuthorization: issuingAuthorization != null ? issuingAuthorization() : this.issuingAuthorization,
  issuingTransaction: issuingTransaction != null ? issuingTransaction() : this.issuingTransaction,
  sourceFlow: sourceFlow != null ? sourceFlow() : this.sourceFlow,
  sourceFlowDetails: sourceFlowDetails != null ? sourceFlowDetails() : this.sourceFlowDetails,
  sourceFlowType: sourceFlowType != null ? sourceFlowType() : this.sourceFlowType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCreditsResourceLinkedFlows &&
          creditReversal == other.creditReversal &&
          issuingAuthorization == other.issuingAuthorization &&
          issuingTransaction == other.issuingTransaction &&
          sourceFlow == other.sourceFlow &&
          sourceFlowDetails == other.sourceFlowDetails &&
          sourceFlowType == other.sourceFlowType; } 
@override int get hashCode { return Object.hash(creditReversal, issuingAuthorization, issuingTransaction, sourceFlow, sourceFlowDetails, sourceFlowType); } 
@override String toString() { return 'TreasuryReceivedCreditsResourceLinkedFlows(creditReversal: $creditReversal, issuingAuthorization: $issuingAuthorization, issuingTransaction: $issuingTransaction, sourceFlow: $sourceFlow, sourceFlowDetails: $sourceFlowDetails, sourceFlowType: $sourceFlowType)'; } 
 }
