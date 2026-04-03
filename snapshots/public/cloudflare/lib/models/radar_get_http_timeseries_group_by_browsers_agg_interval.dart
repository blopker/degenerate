// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetHttpTimeseriesGroupByBrowsersAggInterval {const RadarGetHttpTimeseriesGroupByBrowsersAggInterval._(this.value);

factory RadarGetHttpTimeseriesGroupByBrowsersAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetHttpTimeseriesGroupByBrowsersAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBrowsersAggInterval $15m = RadarGetHttpTimeseriesGroupByBrowsersAggInterval._('15m');

static const RadarGetHttpTimeseriesGroupByBrowsersAggInterval $1h = RadarGetHttpTimeseriesGroupByBrowsersAggInterval._('1h');

static const RadarGetHttpTimeseriesGroupByBrowsersAggInterval $1d = RadarGetHttpTimeseriesGroupByBrowsersAggInterval._('1d');

static const RadarGetHttpTimeseriesGroupByBrowsersAggInterval $1w = RadarGetHttpTimeseriesGroupByBrowsersAggInterval._('1w');

static const List<RadarGetHttpTimeseriesGroupByBrowsersAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBrowsersAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowsersAggInterval($value)'; } 
 }
