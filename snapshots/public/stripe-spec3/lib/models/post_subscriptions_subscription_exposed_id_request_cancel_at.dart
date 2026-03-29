// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2($value)'; } 
 }
final class PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 {const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.fromJson(String json) { return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 maxPeriodEnd = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('max_period_end');

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 minPeriodEnd = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('min_period_end');

static const List<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestCancelAt = OneOf3<int,PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2,PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3>;