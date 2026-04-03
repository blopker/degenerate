// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates = OneOf2<List<String>,PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2>;
