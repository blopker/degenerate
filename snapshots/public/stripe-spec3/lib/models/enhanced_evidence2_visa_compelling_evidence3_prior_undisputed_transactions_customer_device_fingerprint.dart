// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 {const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._(this.value);

factory EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._(json),
}; }

static const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 $empty = EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._('');

static const List<EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2($value)'; } 
 }
typedef EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint = OneOf2<String,EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2>;
