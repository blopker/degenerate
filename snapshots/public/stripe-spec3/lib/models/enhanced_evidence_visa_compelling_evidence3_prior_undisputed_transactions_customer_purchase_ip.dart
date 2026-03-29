// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2 {const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2($value)'; } 
 }
typedef EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp = OneOf2<String,EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2>;