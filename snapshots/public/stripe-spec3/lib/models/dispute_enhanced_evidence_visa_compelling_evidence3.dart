// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dispute_visa_compelling_evidence3_disputed_transaction.dart';import 'dispute_visa_compelling_evidence3_prior_undisputed_transaction.dart';/// 
final class DisputeEnhancedEvidenceVisaCompellingEvidence3 {const DisputeEnhancedEvidenceVisaCompellingEvidence3({this.disputedTransaction, required this.priorUndisputedTransactions, });

factory DisputeEnhancedEvidenceVisaCompellingEvidence3.fromJson(Map<String, dynamic> json) { return DisputeEnhancedEvidenceVisaCompellingEvidence3(
  disputedTransaction: json['disputed_transaction'] != null ? DisputeVisaCompellingEvidence3DisputedTransaction.fromJson(json['disputed_transaction'] as Map<String, dynamic>) : null,
  priorUndisputedTransactions: (json['prior_undisputed_transactions'] as List<dynamic>).map((e) => DisputeVisaCompellingEvidence3PriorUndisputedTransaction.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Disputed transaction details for Visa Compelling Evidence 3.0 evidence submission.
final DisputeVisaCompellingEvidence3DisputedTransaction? disputedTransaction;

/// List of exactly two prior undisputed transaction objects for Visa Compelling Evidence 3.0 evidence submission.
final List<DisputeVisaCompellingEvidence3PriorUndisputedTransaction> priorUndisputedTransactions;

Map<String, dynamic> toJson() { return {
  if (disputedTransaction != null) 'disputed_transaction': disputedTransaction?.toJson(),
  'prior_undisputed_transactions': priorUndisputedTransactions.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prior_undisputed_transactions'); } 
DisputeEnhancedEvidenceVisaCompellingEvidence3 copyWith({DisputeVisaCompellingEvidence3DisputedTransaction? Function()? disputedTransaction, List<DisputeVisaCompellingEvidence3PriorUndisputedTransaction>? priorUndisputedTransactions, }) { return DisputeEnhancedEvidenceVisaCompellingEvidence3(
  disputedTransaction: disputedTransaction != null ? disputedTransaction() : this.disputedTransaction,
  priorUndisputedTransactions: priorUndisputedTransactions ?? this.priorUndisputedTransactions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputeEnhancedEvidenceVisaCompellingEvidence3 &&
          disputedTransaction == other.disputedTransaction &&
          listEquals(priorUndisputedTransactions, other.priorUndisputedTransactions); } 
@override int get hashCode { return Object.hash(disputedTransaction, Object.hashAll(priorUndisputedTransactions)); } 
@override String toString() { return 'DisputeEnhancedEvidenceVisaCompellingEvidence3(disputedTransaction: $disputedTransaction, priorUndisputedTransactions: $priorUndisputedTransactions)'; } 
 }
