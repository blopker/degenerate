// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestCancelAtVariant2 {const PostSubscriptionsRequestCancelAtVariant2._(this.value);

factory PostSubscriptionsRequestCancelAtVariant2.fromJson(String json) { return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostSubscriptionsRequestCancelAtVariant2._(json),
}; }

static const PostSubscriptionsRequestCancelAtVariant2 maxPeriodEnd = PostSubscriptionsRequestCancelAtVariant2._('max_period_end');

static const PostSubscriptionsRequestCancelAtVariant2 minPeriodEnd = PostSubscriptionsRequestCancelAtVariant2._('min_period_end');

static const List<PostSubscriptionsRequestCancelAtVariant2> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestCancelAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestCancelAtVariant2($value)'; } 
 }
typedef PostSubscriptionsRequestCancelAt = OneOf2<int,PostSubscriptionsRequestCancelAtVariant2>;
