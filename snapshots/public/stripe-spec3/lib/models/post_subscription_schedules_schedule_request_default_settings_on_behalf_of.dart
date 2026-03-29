// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf = OneOf2<String,PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2>;