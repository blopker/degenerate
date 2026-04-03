// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent = OneOf2<double,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2>;
