// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param4.dart';final class AmountDetailsParam2ShippingVariant2 {const AmountDetailsParam2ShippingVariant2._(this.value);

factory AmountDetailsParam2ShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParam2ShippingVariant2._(json),
}; }

static const AmountDetailsParam2ShippingVariant2 $empty = AmountDetailsParam2ShippingVariant2._('');

static const List<AmountDetailsParam2ShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2ShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2ShippingVariant2($value)'; } 
 }
typedef AmountDetailsParam2Shipping = OneOf2<AmountDetailsShippingParam4,AmountDetailsParam2ShippingVariant2>;