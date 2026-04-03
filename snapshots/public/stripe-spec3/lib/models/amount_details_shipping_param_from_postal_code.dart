// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParamFromPostalCodeVariant2 {const AmountDetailsShippingParamFromPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParamFromPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParamFromPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParamFromPostalCodeVariant2 $empty = AmountDetailsShippingParamFromPostalCodeVariant2._('');

static const List<AmountDetailsShippingParamFromPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParamFromPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParamFromPostalCodeVariant2($value)'; } 
 }
typedef AmountDetailsShippingParamFromPostalCode = OneOf2<String,AmountDetailsShippingParamFromPostalCodeVariant2>;
