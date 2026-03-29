// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_received_credits_resource_reversal_details.dart';/// Details describing when a ReceivedCredit may be reversed.
final class TreasuryReceivedCreditReversalDetails {const TreasuryReceivedCreditReversalDetails({this.treasuryReceivedCreditsResourceReversalDetails});

factory TreasuryReceivedCreditReversalDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditReversalDetails(
  treasuryReceivedCreditsResourceReversalDetails: TreasuryReceivedCreditsResourceReversalDetails.canParse(json) ? TreasuryReceivedCreditsResourceReversalDetails.fromJson(json) : null,
); }

final TreasuryReceivedCreditsResourceReversalDetails? treasuryReceivedCreditsResourceReversalDetails;

/// At least one variant must be present.
bool get isValid { return treasuryReceivedCreditsResourceReversalDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryReceivedCreditsResourceReversalDetails?.toJson(),
}; } 
 }
