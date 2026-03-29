// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 {const PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._(this.value);

factory PaymentIntentParam2StatementDescriptorSuffixKanaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._(json),
}; }

static const PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 $empty = PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._('');

static const List<PaymentIntentParam2StatementDescriptorSuffixKanaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2StatementDescriptorSuffixKanaVariant2($value)'; } 
 }
typedef PaymentIntentParam2StatementDescriptorSuffixKana = OneOf2<String,PaymentIntentParam2StatementDescriptorSuffixKanaVariant2>;