// GENERATED CODE - DO NOT MODIFY BY HAND

/// The frequency of the test.
final class ObservatoryScheduleFrequency {const ObservatoryScheduleFrequency._(this.value);

factory ObservatoryScheduleFrequency.fromJson(String json) { return switch (json) {
  'DAILY' => daily,
  'WEEKLY' => weekly,
  _ => ObservatoryScheduleFrequency._(json),
}; }

static const ObservatoryScheduleFrequency daily = ObservatoryScheduleFrequency._('DAILY');

static const ObservatoryScheduleFrequency weekly = ObservatoryScheduleFrequency._('WEEKLY');

static const List<ObservatoryScheduleFrequency> values = [daily, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ObservatoryScheduleFrequency && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ObservatoryScheduleFrequency($value)'; } 
 }
