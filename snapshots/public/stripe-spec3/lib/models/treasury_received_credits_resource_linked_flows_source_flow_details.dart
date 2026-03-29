// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_received_credits_resource_source_flows_details.dart';/// The expandable object of the source flow.
final class TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails {const TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails({this.treasuryReceivedCreditsResourceSourceFlowsDetails});

factory TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails(
  treasuryReceivedCreditsResourceSourceFlowsDetails: TreasuryReceivedCreditsResourceSourceFlowsDetails.canParse(json) ? TreasuryReceivedCreditsResourceSourceFlowsDetails.fromJson(json) : null,
); }

final TreasuryReceivedCreditsResourceSourceFlowsDetails? treasuryReceivedCreditsResourceSourceFlowsDetails;

/// At least one variant must be present.
bool get isValid { return treasuryReceivedCreditsResourceSourceFlowsDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryReceivedCreditsResourceSourceFlowsDetails?.toJson(),
}; } 
 }
