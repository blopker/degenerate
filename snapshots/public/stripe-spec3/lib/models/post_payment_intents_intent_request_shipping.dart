// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_shipping.dart';final class PostPaymentIntentsIntentRequestShippingVariant2 {const PostPaymentIntentsIntentRequestShippingVariant2._(this.value);

factory PostPaymentIntentsIntentRequestShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestShippingVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestShippingVariant2 $empty = PostPaymentIntentsIntentRequestShippingVariant2._('');

static const List<PostPaymentIntentsIntentRequestShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestShippingVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestShipping = OneOf2<OptionalFieldsShipping,PostPaymentIntentsIntentRequestShippingVariant2>;