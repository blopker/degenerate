// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval {const RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._(this.value);

factory RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval $15m = RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._('15m');

static const RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval $1h = RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._('1h');

static const RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval $1d = RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._('1d');

static const RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval $1w = RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval._('1w');

static const List<RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByDeviceTypeAggInterval($value)'; } 
 }
