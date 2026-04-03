// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2($value)'; } 
 }
typedef PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsComment = OneOf2<String,PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancellationDetailsCommentVariant2>;
