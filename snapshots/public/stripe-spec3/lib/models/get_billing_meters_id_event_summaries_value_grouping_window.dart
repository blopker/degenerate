// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetBillingMetersIdEventSummariesValueGroupingWindow {const GetBillingMetersIdEventSummariesValueGroupingWindow._(this.value);

factory GetBillingMetersIdEventSummariesValueGroupingWindow.fromJson(String json) { return switch (json) {
  'day' => day,
  'hour' => hour,
  _ => GetBillingMetersIdEventSummariesValueGroupingWindow._(json),
}; }

static const GetBillingMetersIdEventSummariesValueGroupingWindow day = GetBillingMetersIdEventSummariesValueGroupingWindow._('day');

static const GetBillingMetersIdEventSummariesValueGroupingWindow hour = GetBillingMetersIdEventSummariesValueGroupingWindow._('hour');

static const List<GetBillingMetersIdEventSummariesValueGroupingWindow> values = [day, hour];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetBillingMetersIdEventSummariesValueGroupingWindow && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetBillingMetersIdEventSummariesValueGroupingWindow($value)'; } 
 }
