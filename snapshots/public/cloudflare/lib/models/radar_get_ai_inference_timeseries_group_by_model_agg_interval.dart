// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAiInferenceTimeseriesGroupByModelAggInterval {const RadarGetAiInferenceTimeseriesGroupByModelAggInterval._(this.value);

factory RadarGetAiInferenceTimeseriesGroupByModelAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAiInferenceTimeseriesGroupByModelAggInterval._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupByModelAggInterval $15m = RadarGetAiInferenceTimeseriesGroupByModelAggInterval._('15m');

static const RadarGetAiInferenceTimeseriesGroupByModelAggInterval $1h = RadarGetAiInferenceTimeseriesGroupByModelAggInterval._('1h');

static const RadarGetAiInferenceTimeseriesGroupByModelAggInterval $1d = RadarGetAiInferenceTimeseriesGroupByModelAggInterval._('1d');

static const RadarGetAiInferenceTimeseriesGroupByModelAggInterval $1w = RadarGetAiInferenceTimeseriesGroupByModelAggInterval._('1w');

static const List<RadarGetAiInferenceTimeseriesGroupByModelAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupByModelAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByModelAggInterval($value)'; } 
 }
