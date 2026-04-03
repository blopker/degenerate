// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetOriginsTimeseriesGroupAggInterval {const RadarGetOriginsTimeseriesGroupAggInterval._(this.value);

factory RadarGetOriginsTimeseriesGroupAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetOriginsTimeseriesGroupAggInterval._(json),
}; }

static const RadarGetOriginsTimeseriesGroupAggInterval $15m = RadarGetOriginsTimeseriesGroupAggInterval._('15m');

static const RadarGetOriginsTimeseriesGroupAggInterval $1h = RadarGetOriginsTimeseriesGroupAggInterval._('1h');

static const RadarGetOriginsTimeseriesGroupAggInterval $1d = RadarGetOriginsTimeseriesGroupAggInterval._('1d');

static const RadarGetOriginsTimeseriesGroupAggInterval $1w = RadarGetOriginsTimeseriesGroupAggInterval._('1w');

static const List<RadarGetOriginsTimeseriesGroupAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesGroupAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesGroupAggInterval($value)'; } 
 }
