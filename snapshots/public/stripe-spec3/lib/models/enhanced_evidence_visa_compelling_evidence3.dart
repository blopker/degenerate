// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence_visa_compelling_evidence3_disputed_transaction.dart';import 'enhanced_evidence_visa_compelling_evidence3_prior_undisputed_transactions.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3 {const EnhancedEvidenceVisaCompellingEvidence3({this.disputedTransaction, this.priorUndisputedTransactions, });

factory EnhancedEvidenceVisaCompellingEvidence3.fromJson(Map<String, dynamic> json) { return EnhancedEvidenceVisaCompellingEvidence3(
  disputedTransaction: json['disputed_transaction'] != null ? EnhancedEvidenceVisaCompellingEvidence3DisputedTransaction.fromJson(json['disputed_transaction'] as Map<String, dynamic>) : null,
  priorUndisputedTransactions: (json['prior_undisputed_transactions'] as List<dynamic>?)?.map((e) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final EnhancedEvidenceVisaCompellingEvidence3DisputedTransaction? disputedTransaction;

final List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactions>? priorUndisputedTransactions;

Map<String, dynamic> toJson() { return {
  if (disputedTransaction != null) 'disputed_transaction': disputedTransaction?.toJson(),
  if (priorUndisputedTransactions != null) 'prior_undisputed_transactions': priorUndisputedTransactions?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disputed_transaction', 'prior_undisputed_transactions'}.contains(key)); } 
EnhancedEvidenceVisaCompellingEvidence3 copyWith({EnhancedEvidenceVisaCompellingEvidence3DisputedTransaction Function()? disputedTransaction, List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactions> Function()? priorUndisputedTransactions, }) { return EnhancedEvidenceVisaCompellingEvidence3(
  disputedTransaction: disputedTransaction != null ? disputedTransaction() : this.disputedTransaction,
  priorUndisputedTransactions: priorUndisputedTransactions != null ? priorUndisputedTransactions() : this.priorUndisputedTransactions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3 &&
          disputedTransaction == other.disputedTransaction &&
          listEquals(priorUndisputedTransactions, other.priorUndisputedTransactions); } 
@override int get hashCode { return Object.hash(disputedTransaction, Object.hashAll(priorUndisputedTransactions ?? const [])); } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3(disputedTransaction: $disputedTransaction, priorUndisputedTransactions: $priorUndisputedTransactions)'; } 
 }
