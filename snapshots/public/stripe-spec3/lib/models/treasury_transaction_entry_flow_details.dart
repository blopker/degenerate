// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_transactions_resource_flow_details.dart';/// Details of the flow associated with the TransactionEntry.
final class TreasuryTransactionEntryFlowDetails {const TreasuryTransactionEntryFlowDetails({this.treasuryTransactionsResourceFlowDetails});

factory TreasuryTransactionEntryFlowDetails.fromJson(Map<String, dynamic> json) { return TreasuryTransactionEntryFlowDetails(
  treasuryTransactionsResourceFlowDetails: TreasuryTransactionsResourceFlowDetails.canParse(json) ? TreasuryTransactionsResourceFlowDetails.fromJson(json) : null,
); }

final TreasuryTransactionsResourceFlowDetails? treasuryTransactionsResourceFlowDetails;

/// At least one variant must be present.
bool get isValid { return treasuryTransactionsResourceFlowDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?treasuryTransactionsResourceFlowDetails?.toJson(),
}; } 
 }
