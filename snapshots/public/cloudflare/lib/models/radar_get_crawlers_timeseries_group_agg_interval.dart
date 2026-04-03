// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetCrawlersTimeseriesGroupAggInterval {const RadarGetCrawlersTimeseriesGroupAggInterval._(this.value);

factory RadarGetCrawlersTimeseriesGroupAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetCrawlersTimeseriesGroupAggInterval._(json),
}; }

static const RadarGetCrawlersTimeseriesGroupAggInterval $15m = RadarGetCrawlersTimeseriesGroupAggInterval._('15m');

static const RadarGetCrawlersTimeseriesGroupAggInterval $1h = RadarGetCrawlersTimeseriesGroupAggInterval._('1h');

static const RadarGetCrawlersTimeseriesGroupAggInterval $1d = RadarGetCrawlersTimeseriesGroupAggInterval._('1d');

static const RadarGetCrawlersTimeseriesGroupAggInterval $1w = RadarGetCrawlersTimeseriesGroupAggInterval._('1w');

static const List<RadarGetCrawlersTimeseriesGroupAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCrawlersTimeseriesGroupAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCrawlersTimeseriesGroupAggInterval($value)'; } 
 }
