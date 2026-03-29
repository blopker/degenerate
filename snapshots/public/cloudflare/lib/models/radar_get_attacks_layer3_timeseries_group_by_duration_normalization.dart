// GENERATED CODE - DO NOT MODIFY BY HAND

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization {const RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByDurationNormalization($value)'; } 
 }
