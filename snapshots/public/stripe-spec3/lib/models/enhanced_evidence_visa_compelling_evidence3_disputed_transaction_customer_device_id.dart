// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2($value)'; } 
 }
typedef EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceId = OneOf2<String,EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2>;
