// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 now = PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._('now');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesEndDate = OneOf2<int,PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2>;
