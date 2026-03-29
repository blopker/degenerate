// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AmountDetailsShippingParam2ToPostalCodeVariant2 {const AmountDetailsShippingParam2ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam2ToPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam2ToPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam2ToPostalCodeVariant2 $empty = AmountDetailsShippingParam2ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam2ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam2ToPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam2ToPostalCodeVariant2($value)'; } 
 }
typedef AmountDetailsShippingParam2ToPostalCode = OneOf2<String,AmountDetailsShippingParam2ToPostalCodeVariant2>;