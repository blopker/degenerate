// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_inbound_transfers_resource_failure_details.dart';/// Details about this InboundTransfer's failure. Only set when status is `failed`.
final class TreasuryInboundTransferFailureDetails {const TreasuryInboundTransferFailureDetails({this.treasuryInboundTransfersResourceFailureDetails});

factory TreasuryInboundTransferFailureDetails.fromJson(Map<String, dynamic> json) { return TreasuryInboundTransferFailureDetails(
  treasuryInboundTransfersResourceFailureDetails: TreasuryInboundTransfersResourceFailureDetails.canParse(json) ? TreasuryInboundTransfersResourceFailureDetails.fromJson(json) : null,
); }

final TreasuryInboundTransfersResourceFailureDetails? treasuryInboundTransfersResourceFailureDetails;

/// At least one variant must be present.
bool get isValid { return treasuryInboundTransfersResourceFailureDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryInboundTransfersResourceFailureDetails?.toJson(),
}; } 
 }
