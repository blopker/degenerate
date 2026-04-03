// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 {const PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 now = PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._('now');

static const List<PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestTrialEnd = OneOf2<PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1,int>;
