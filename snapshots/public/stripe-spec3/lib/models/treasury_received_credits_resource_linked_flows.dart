// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_received_credits_resource_source_flows_details.dart';/// 
@immutable final class TreasuryReceivedCreditsResourceLinkedFlows {const TreasuryReceivedCreditsResourceLinkedFlows({this.creditReversal = const Omittable.absent(), this.issuingAuthorization = const Omittable.absent(), this.issuingTransaction = const Omittable.absent(), this.sourceFlow = const Omittable.absent(), this.sourceFlowDetails = const Omittable.absent(), this.sourceFlowType = const Omittable.absent(), });

factory TreasuryReceivedCreditsResourceLinkedFlows.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceLinkedFlows(
  creditReversal: json.containsKey('credit_reversal') ? Omittable(json['credit_reversal'] as String?) : const Omittable.absent(),
  issuingAuthorization: json.containsKey('issuing_authorization') ? Omittable(json['issuing_authorization'] as String?) : const Omittable.absent(),
  issuingTransaction: json.containsKey('issuing_transaction') ? Omittable(json['issuing_transaction'] as String?) : const Omittable.absent(),
  sourceFlow: json.containsKey('source_flow') ? Omittable(json['source_flow'] as String?) : const Omittable.absent(),
  sourceFlowDetails: json.containsKey('source_flow_details') ? Omittable(json['source_flow_details'] != null ? TreasuryReceivedCreditsResourceSourceFlowsDetails.fromJson(json['source_flow_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  sourceFlowType: json.containsKey('source_flow_type') ? Omittable(json['source_flow_type'] as String?) : const Omittable.absent(),
); }

/// The CreditReversal created as a result of this ReceivedCredit being reversed.
final Omittable<String?> creditReversal;

/// Set if the ReceivedCredit was created due to an [Issuing Authorization](https://api.stripe.com#issuing_authorizations) object.
final Omittable<String?> issuingAuthorization;

/// Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://api.stripe.com#issuing_transactions) object.
final Omittable<String?> issuingTransaction;

/// ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
final Omittable<String?> sourceFlow;

/// The expandable object of the source flow.
final Omittable<TreasuryReceivedCreditsResourceSourceFlowsDetails?> sourceFlowDetails;

/// The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
final Omittable<String?> sourceFlowType;

Map<String, dynamic> toJson() { return {
  if (creditReversal.isPresent) 'credit_reversal': creditReversal.value,
  if (issuingAuthorization.isPresent) 'issuing_authorization': issuingAuthorization.value,
  if (issuingTransaction.isPresent) 'issuing_transaction': issuingTransaction.value,
  if (sourceFlow.isPresent) 'source_flow': sourceFlow.value,
  if (sourceFlowDetails.isPresent) 'source_flow_details': sourceFlowDetails.value?.toJson(),
  if (sourceFlowType.isPresent) 'source_flow_type': sourceFlowType.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'credit_reversal', 'issuing_authorization', 'issuing_transaction', 'source_flow', 'source_flow_details', 'source_flow_type'}.contains(key)); } 
TreasuryReceivedCreditsResourceLinkedFlows copyWith({Omittable<String?>? creditReversal, Omittable<String?>? issuingAuthorization, Omittable<String?>? issuingTransaction, Omittable<String?>? sourceFlow, Omittable<TreasuryReceivedCreditsResourceSourceFlowsDetails?>? sourceFlowDetails, Omittable<String?>? sourceFlowType, }) { return TreasuryReceivedCreditsResourceLinkedFlows(
  creditReversal: creditReversal ?? this.creditReversal,
  issuingAuthorization: issuingAuthorization ?? this.issuingAuthorization,
  issuingTransaction: issuingTransaction ?? this.issuingTransaction,
  sourceFlow: sourceFlow ?? this.sourceFlow,
  sourceFlowDetails: sourceFlowDetails ?? this.sourceFlowDetails,
  sourceFlowType: sourceFlowType ?? this.sourceFlowType,
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
