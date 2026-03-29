// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAiInferenceTimeseriesGroupAggInterval {const RadarGetAiInferenceTimeseriesGroupAggInterval._(this.value);

factory RadarGetAiInferenceTimeseriesGroupAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAiInferenceTimeseriesGroupAggInterval._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupAggInterval $15m = RadarGetAiInferenceTimeseriesGroupAggInterval._('15m');

static const RadarGetAiInferenceTimeseriesGroupAggInterval $1h = RadarGetAiInferenceTimeseriesGroupAggInterval._('1h');

static const RadarGetAiInferenceTimeseriesGroupAggInterval $1d = RadarGetAiInferenceTimeseriesGroupAggInterval._('1d');

static const RadarGetAiInferenceTimeseriesGroupAggInterval $1w = RadarGetAiInferenceTimeseriesGroupAggInterval._('1w');

static const List<RadarGetAiInferenceTimeseriesGroupAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupAggInterval($value)'; } 
 }
