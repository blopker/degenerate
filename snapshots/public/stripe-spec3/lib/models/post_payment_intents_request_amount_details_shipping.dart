// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param.dart';final class PostPaymentIntentsRequestAmountDetailsShippingVariant2 {const PostPaymentIntentsRequestAmountDetailsShippingVariant2._(this.value);

factory PostPaymentIntentsRequestAmountDetailsShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestAmountDetailsShippingVariant2._(json),
}; }

static const PostPaymentIntentsRequestAmountDetailsShippingVariant2 $empty = PostPaymentIntentsRequestAmountDetailsShippingVariant2._('');

static const List<PostPaymentIntentsRequestAmountDetailsShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsShippingVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestAmountDetailsShipping = OneOf2<AmountDetailsShippingParam,PostPaymentIntentsRequestAmountDetailsShippingVariant2>;