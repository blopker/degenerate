// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam5ToPostalCodeVariant2 {const AmountDetailsShippingParam5ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam5ToPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam5ToPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam5ToPostalCodeVariant2 $empty = AmountDetailsShippingParam5ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam5ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam5ToPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam5ToPostalCodeVariant2($value)'; } 
 }
typedef AmountDetailsShippingParam5ToPostalCode = OneOf2<String,AmountDetailsShippingParam5ToPostalCodeVariant2>;
