// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSubscriptionsRequestTrialEndVariant1 {const PostSubscriptionsRequestTrialEndVariant1._(this.value);

factory PostSubscriptionsRequestTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostSubscriptionsRequestTrialEndVariant1._(json),
}; }

static const PostSubscriptionsRequestTrialEndVariant1 now = PostSubscriptionsRequestTrialEndVariant1._('now');

static const List<PostSubscriptionsRequestTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestTrialEndVariant1($value)'; } 
 }
typedef PostSubscriptionsRequestTrialEnd = OneOf2<PostSubscriptionsRequestTrialEndVariant1,int>;