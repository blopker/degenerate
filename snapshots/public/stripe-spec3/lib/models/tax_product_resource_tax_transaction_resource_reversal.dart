// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TaxProductResourceTaxTransactionResourceReversal {const TaxProductResourceTaxTransactionResourceReversal({this.originalTransaction = const Omittable.absent()});

factory TaxProductResourceTaxTransactionResourceReversal.fromJson(Map<String, dynamic> json) { return TaxProductResourceTaxTransactionResourceReversal(
  originalTransaction: json.containsKey('original_transaction') ? Omittable(json['original_transaction'] as String?) : const Omittable.absent(),
); }

/// The `id` of the reversed `Transaction` object.
final Omittable<String?> originalTransaction;

Map<String, dynamic> toJson() { return {
  if (originalTransaction.isPresent) 'original_transaction': originalTransaction.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'original_transaction'}.contains(key)); } 
TaxProductResourceTaxTransactionResourceReversal copyWith({Omittable<String?>? originalTransaction}) { return TaxProductResourceTaxTransactionResourceReversal(
  originalTransaction: originalTransaction ?? this.originalTransaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceTaxTransactionResourceReversal &&
          originalTransaction == other.originalTransaction; } 
@override int get hashCode { return originalTransaction.hashCode; } 
@override String toString() { return 'TaxProductResourceTaxTransactionResourceReversal(originalTransaction: $originalTransaction)'; } 
 }
