// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetOriginsTimeseriesAggInterval {const RadarGetOriginsTimeseriesAggInterval._(this.value);

factory RadarGetOriginsTimeseriesAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetOriginsTimeseriesAggInterval._(json),
}; }

static const RadarGetOriginsTimeseriesAggInterval $15m = RadarGetOriginsTimeseriesAggInterval._('15m');

static const RadarGetOriginsTimeseriesAggInterval $1h = RadarGetOriginsTimeseriesAggInterval._('1h');

static const RadarGetOriginsTimeseriesAggInterval $1d = RadarGetOriginsTimeseriesAggInterval._('1d');

static const RadarGetOriginsTimeseriesAggInterval $1w = RadarGetOriginsTimeseriesAggInterval._('1w');

static const List<RadarGetOriginsTimeseriesAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesAggInterval($value)'; } 
 }
