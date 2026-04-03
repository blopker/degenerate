// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 {const PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 $empty = PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsRequestApplicationFeePercent = OneOf2<double,PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2>;
