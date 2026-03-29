// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param8.dart';final class PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds = OneOf2<ItemBillingThresholdsParam8,PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2>;