// GENERATED CODE - DO NOT MODIFY BY HAND

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization {const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization percentage = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization min0Max = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByHttpVersionNormalization($value)'; } 
 }
