// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource = OneOf2<String,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2>;