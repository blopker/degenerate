// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesDescriptionVariant2 {const PostSubscriptionSchedulesRequestPhasesDescriptionVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesDescriptionVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesDescriptionVariant2 $empty = PostSubscriptionSchedulesRequestPhasesDescriptionVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesDescriptionVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesRequestPhasesDescription = OneOf2<String,PostSubscriptionSchedulesRequestPhasesDescriptionVariant2>;
