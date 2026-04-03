// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval {const RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._(this.value);

factory RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._(json),
}; }

static const RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval $15m = RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._('15m');

static const RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval $1h = RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._('1h');

static const RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval $1d = RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._('1d');

static const RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval $1w = RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval._('1w');

static const List<RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsTimeseriesGroupByUserAgentAggInterval($value)'; } 
 }
