// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 now = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._('now');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd = OneOf2<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1,int>;