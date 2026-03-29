// GENERATED CODE - DO NOT MODIFY BY HAND

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization {const RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByBitrateNormalization($value)'; } 
 }
