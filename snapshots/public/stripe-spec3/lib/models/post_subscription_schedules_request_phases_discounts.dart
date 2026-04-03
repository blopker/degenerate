// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_phases_discounts_variant1.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 {const PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesDiscountsVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesRequestPhasesDiscounts = OneOf2<List<PostSubscriptionSchedulesRequestPhasesDiscountsVariant1>,PostSubscriptionSchedulesRequestPhasesDiscountsVariant2>;
