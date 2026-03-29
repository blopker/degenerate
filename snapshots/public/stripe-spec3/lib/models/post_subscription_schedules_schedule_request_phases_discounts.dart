// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_discounts_variant1.dart';final class PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesDiscounts = OneOf2<List<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1>,PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2>;