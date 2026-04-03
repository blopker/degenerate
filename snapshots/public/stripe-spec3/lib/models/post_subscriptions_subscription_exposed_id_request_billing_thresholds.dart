// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param9.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds = OneOf2<BillingThresholdsParam9,PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2>;
