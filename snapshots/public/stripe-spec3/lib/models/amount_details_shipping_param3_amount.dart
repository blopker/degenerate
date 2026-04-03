// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam3AmountVariant2 {const AmountDetailsShippingParam3AmountVariant2._(this.value);

factory AmountDetailsShippingParam3AmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam3AmountVariant2._(json),
}; }

static const AmountDetailsShippingParam3AmountVariant2 $empty = AmountDetailsShippingParam3AmountVariant2._('');

static const List<AmountDetailsShippingParam3AmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam3AmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam3AmountVariant2($value)'; } 
 }
typedef AmountDetailsShippingParam3Amount = OneOf2<int,AmountDetailsShippingParam3AmountVariant2>;
