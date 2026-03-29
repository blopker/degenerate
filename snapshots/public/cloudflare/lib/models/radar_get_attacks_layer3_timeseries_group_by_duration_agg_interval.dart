// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval {const RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval $15m = RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._('15m');

static const RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval $1h = RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._('1h');

static const RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval $1d = RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._('1d');

static const RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval $1w = RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval._('1w');

static const List<RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByDurationAggInterval($value)'; } 
 }
