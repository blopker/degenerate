// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetHttpTimeseriesGroupByBotClassAggInterval {const RadarGetHttpTimeseriesGroupByBotClassAggInterval._(this.value);

factory RadarGetHttpTimeseriesGroupByBotClassAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetHttpTimeseriesGroupByBotClassAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBotClassAggInterval $15m = RadarGetHttpTimeseriesGroupByBotClassAggInterval._('15m');

static const RadarGetHttpTimeseriesGroupByBotClassAggInterval $1h = RadarGetHttpTimeseriesGroupByBotClassAggInterval._('1h');

static const RadarGetHttpTimeseriesGroupByBotClassAggInterval $1d = RadarGetHttpTimeseriesGroupByBotClassAggInterval._('1d');

static const RadarGetHttpTimeseriesGroupByBotClassAggInterval $1w = RadarGetHttpTimeseriesGroupByBotClassAggInterval._('1w');

static const List<RadarGetHttpTimeseriesGroupByBotClassAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBotClassAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBotClassAggInterval($value)'; } 
 }
