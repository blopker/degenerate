// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param.dart';final class PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsRequestBillingThresholds = OneOf2<BillingThresholdsParam,PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2>;