// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AmountDetailsShippingParam3ToPostalCodeVariant2 {const AmountDetailsShippingParam3ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam3ToPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam3ToPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam3ToPostalCodeVariant2 $empty = AmountDetailsShippingParam3ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam3ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam3ToPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam3ToPostalCodeVariant2($value)'; } 
 }
typedef AmountDetailsShippingParam3ToPostalCode = OneOf2<String,AmountDetailsShippingParam3ToPostalCodeVariant2>;