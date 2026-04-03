// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_shipping3.dart';@immutable final class PostCustomersCustomerRequestShippingVariant2 {const PostCustomersCustomerRequestShippingVariant2._(this.value);

factory PostCustomersCustomerRequestShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestShippingVariant2._(json),
}; }

static const PostCustomersCustomerRequestShippingVariant2 $empty = PostCustomersCustomerRequestShippingVariant2._('');

static const List<PostCustomersCustomerRequestShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestShippingVariant2($value)'; } 
 }
typedef PostCustomersCustomerRequestShipping = OneOf2<CustomerShipping3,PostCustomersCustomerRequestShippingVariant2>;
