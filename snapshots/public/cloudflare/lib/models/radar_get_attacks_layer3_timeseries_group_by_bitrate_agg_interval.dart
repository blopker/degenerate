// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval {const RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval $15m = RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._('15m');

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval $1h = RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._('1h');

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval $1d = RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._('1d');

static const RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval $1w = RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval._('1w');

static const List<RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByBitrateAggInterval($value)'; } 
 }
