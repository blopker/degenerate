// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_transactions_resource_flow_details.dart';/// Details of the flow that created the Transaction.
final class TreasuryTransactionFlowDetails {const TreasuryTransactionFlowDetails({this.treasuryTransactionsResourceFlowDetails});

factory TreasuryTransactionFlowDetails.fromJson(Map<String, dynamic> json) { return TreasuryTransactionFlowDetails(
  treasuryTransactionsResourceFlowDetails: TreasuryTransactionsResourceFlowDetails.canParse(json) ? TreasuryTransactionsResourceFlowDetails.fromJson(json) : null,
); }

final TreasuryTransactionsResourceFlowDetails? treasuryTransactionsResourceFlowDetails;

/// At least one variant must be present.
bool get isValid { return treasuryTransactionsResourceFlowDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryTransactionsResourceFlowDetails?.toJson(),
}; } 
 }
