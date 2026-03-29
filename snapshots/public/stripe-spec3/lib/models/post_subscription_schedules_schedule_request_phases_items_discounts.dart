// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_items_discounts_variant1.dart';final class PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts = OneOf2<List<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1>,PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2>;