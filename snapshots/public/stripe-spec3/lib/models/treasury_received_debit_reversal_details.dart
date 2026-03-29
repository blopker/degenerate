// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_received_debits_resource_reversal_details.dart';/// Details describing when a ReceivedDebit might be reversed.
final class TreasuryReceivedDebitReversalDetails {const TreasuryReceivedDebitReversalDetails({this.treasuryReceivedDebitsResourceReversalDetails});

factory TreasuryReceivedDebitReversalDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitReversalDetails(
  treasuryReceivedDebitsResourceReversalDetails: TreasuryReceivedDebitsResourceReversalDetails.canParse(json) ? TreasuryReceivedDebitsResourceReversalDetails.fromJson(json) : null,
); }

final TreasuryReceivedDebitsResourceReversalDetails? treasuryReceivedDebitsResourceReversalDetails;

/// At least one variant must be present.
bool get isValid { return treasuryReceivedDebitsResourceReversalDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryReceivedDebitsResourceReversalDetails?.toJson(),
}; } 
 }
