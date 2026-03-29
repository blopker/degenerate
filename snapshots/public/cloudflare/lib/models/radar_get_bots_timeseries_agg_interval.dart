// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetBotsTimeseriesAggInterval {const RadarGetBotsTimeseriesAggInterval._(this.value);

factory RadarGetBotsTimeseriesAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetBotsTimeseriesAggInterval._(json),
}; }

static const RadarGetBotsTimeseriesAggInterval $15m = RadarGetBotsTimeseriesAggInterval._('15m');

static const RadarGetBotsTimeseriesAggInterval $1h = RadarGetBotsTimeseriesAggInterval._('1h');

static const RadarGetBotsTimeseriesAggInterval $1d = RadarGetBotsTimeseriesAggInterval._('1d');

static const RadarGetBotsTimeseriesAggInterval $1w = RadarGetBotsTimeseriesAggInterval._('1w');

static const List<RadarGetBotsTimeseriesAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsTimeseriesAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesAggInterval($value)'; } 
 }
