// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies whether the `location` filter applies to the source or target location.
final class RadarGetAttacksLayer3SummaryByVectorDirection {const RadarGetAttacksLayer3SummaryByVectorDirection._(this.value);

factory RadarGetAttacksLayer3SummaryByVectorDirection.fromJson(String json) { return switch (json) {
  'ORIGIN' => origin,
  'TARGET' => target,
  _ => RadarGetAttacksLayer3SummaryByVectorDirection._(json),
}; }

static const RadarGetAttacksLayer3SummaryByVectorDirection origin = RadarGetAttacksLayer3SummaryByVectorDirection._('ORIGIN');

static const RadarGetAttacksLayer3SummaryByVectorDirection target = RadarGetAttacksLayer3SummaryByVectorDirection._('TARGET');

static const List<RadarGetAttacksLayer3SummaryByVectorDirection> values = [origin, target];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByVectorDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVectorDirection($value)'; } 
 }
