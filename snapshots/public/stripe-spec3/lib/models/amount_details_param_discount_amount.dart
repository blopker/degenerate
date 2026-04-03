// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsParamDiscountAmountVariant2 {const AmountDetailsParamDiscountAmountVariant2._(this.value);

factory AmountDetailsParamDiscountAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParamDiscountAmountVariant2._(json),
}; }

static const AmountDetailsParamDiscountAmountVariant2 $empty = AmountDetailsParamDiscountAmountVariant2._('');

static const List<AmountDetailsParamDiscountAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParamDiscountAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParamDiscountAmountVariant2($value)'; } 
 }
typedef AmountDetailsParamDiscountAmount = OneOf2<int,AmountDetailsParamDiscountAmountVariant2>;
