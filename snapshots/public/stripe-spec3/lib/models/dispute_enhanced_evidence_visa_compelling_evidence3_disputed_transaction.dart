// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dispute_visa_compelling_evidence3_disputed_transaction.dart';/// Disputed transaction details for Visa Compelling Evidence 3.0 evidence submission.
final class DisputeEnhancedEvidenceVisaCompellingEvidence3DisputedTransaction {const DisputeEnhancedEvidenceVisaCompellingEvidence3DisputedTransaction({this.disputeVisaCompellingEvidence3DisputedTransaction});

factory DisputeEnhancedEvidenceVisaCompellingEvidence3DisputedTransaction.fromJson(Map<String, dynamic> json) { return DisputeEnhancedEvidenceVisaCompellingEvidence3DisputedTransaction(
  disputeVisaCompellingEvidence3DisputedTransaction: DisputeVisaCompellingEvidence3DisputedTransaction.canParse(json) ? DisputeVisaCompellingEvidence3DisputedTransaction.fromJson(json) : null,
); }

final DisputeVisaCompellingEvidence3DisputedTransaction? disputeVisaCompellingEvidence3DisputedTransaction;

/// At least one variant must be present.
bool get isValid { return disputeVisaCompellingEvidence3DisputedTransaction != null; } 
Map<String, dynamic> toJson() { return {
  ...?disputeVisaCompellingEvidence3DisputedTransaction?.toJson(),
}; } 
 }
