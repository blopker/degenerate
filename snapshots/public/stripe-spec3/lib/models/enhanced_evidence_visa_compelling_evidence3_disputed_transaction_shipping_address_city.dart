// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2($value)'; } 
 }
typedef EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity = OneOf2<String,EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2>;