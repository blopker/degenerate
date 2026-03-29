// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval {const RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._(this.value);

factory RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval $15m = RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._('15m');

static const RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval $1h = RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._('1h');

static const RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval $1d = RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._('1d');

static const RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval $1w = RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval._('1w');

static const List<RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemAggInterval($value)'; } 
 }
