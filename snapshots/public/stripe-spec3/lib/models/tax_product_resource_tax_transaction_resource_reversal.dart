// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class TaxProductResourceTaxTransactionResourceReversal {const TaxProductResourceTaxTransactionResourceReversal({this.originalTransaction});

factory TaxProductResourceTaxTransactionResourceReversal.fromJson(Map<String, dynamic> json) { return TaxProductResourceTaxTransactionResourceReversal(
  originalTransaction: json['original_transaction'] as String?,
); }

/// The `id` of the reversed `Transaction` object.
final String? originalTransaction;

Map<String, dynamic> toJson() { return {
  'original_transaction': ?originalTransaction,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TaxProductResourceTaxTransactionResourceReversal copyWith({String? Function()? originalTransaction}) { return TaxProductResourceTaxTransactionResourceReversal(
  originalTransaction: originalTransaction != null ? originalTransaction() : this.originalTransaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceTaxTransactionResourceReversal &&
          originalTransaction == other.originalTransaction; } 
@override int get hashCode { return originalTransaction.hashCode; } 
@override String toString() { return 'TaxProductResourceTaxTransactionResourceReversal(originalTransaction: $originalTransaction)'; } 
 }
