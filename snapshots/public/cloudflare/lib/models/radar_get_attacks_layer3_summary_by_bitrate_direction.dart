// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies whether the `location` filter applies to the source or target location.
final class RadarGetAttacksLayer3SummaryByBitrateDirection {const RadarGetAttacksLayer3SummaryByBitrateDirection._(this.value);

factory RadarGetAttacksLayer3SummaryByBitrateDirection.fromJson(String json) { return switch (json) {
  'ORIGIN' => origin,
  'TARGET' => target,
  _ => RadarGetAttacksLayer3SummaryByBitrateDirection._(json),
}; }

static const RadarGetAttacksLayer3SummaryByBitrateDirection origin = RadarGetAttacksLayer3SummaryByBitrateDirection._('ORIGIN');

static const RadarGetAttacksLayer3SummaryByBitrateDirection target = RadarGetAttacksLayer3SummaryByBitrateDirection._('TARGET');

static const List<RadarGetAttacksLayer3SummaryByBitrateDirection> values = [origin, target];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByBitrateDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByBitrateDirection($value)'; } 
 }
