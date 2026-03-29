// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies whether the `location` filter applies to the source or target location.
final class RadarGetAttacksLayer3TimeseriesByBytesDirection {const RadarGetAttacksLayer3TimeseriesByBytesDirection._(this.value);

factory RadarGetAttacksLayer3TimeseriesByBytesDirection.fromJson(String json) { return switch (json) {
  'ORIGIN' => origin,
  'TARGET' => target,
  _ => RadarGetAttacksLayer3TimeseriesByBytesDirection._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesByBytesDirection origin = RadarGetAttacksLayer3TimeseriesByBytesDirection._('ORIGIN');

static const RadarGetAttacksLayer3TimeseriesByBytesDirection target = RadarGetAttacksLayer3TimeseriesByBytesDirection._('TARGET');

static const List<RadarGetAttacksLayer3TimeseriesByBytesDirection> values = [origin, target];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesByBytesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesByBytesDirection($value)'; } 
 }
