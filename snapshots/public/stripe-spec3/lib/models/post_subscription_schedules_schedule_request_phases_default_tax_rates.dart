// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2($value)'; } 
 }
typedef PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates = OneOf2<List<String>,PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2>;
