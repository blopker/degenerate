// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 now = PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._('now');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesStartDate = OneOf2<int,PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2>;
