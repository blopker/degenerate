// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds = OneOf2<ItemBillingThresholdsParam2,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2>;
