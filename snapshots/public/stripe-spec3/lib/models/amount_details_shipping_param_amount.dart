// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParamAmountVariant2 {const AmountDetailsShippingParamAmountVariant2._(this.value);

factory AmountDetailsShippingParamAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParamAmountVariant2._(json),
}; }

static const AmountDetailsShippingParamAmountVariant2 $empty = AmountDetailsShippingParamAmountVariant2._('');

static const List<AmountDetailsShippingParamAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParamAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParamAmountVariant2($value)'; } 
 }
typedef AmountDetailsShippingParamAmount = OneOf2<int,AmountDetailsShippingParamAmountVariant2>;
