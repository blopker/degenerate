// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetQualityIndexTimeseriesGroupAggInterval {const RadarGetQualityIndexTimeseriesGroupAggInterval._(this.value);

factory RadarGetQualityIndexTimeseriesGroupAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetQualityIndexTimeseriesGroupAggInterval._(json),
}; }

static const RadarGetQualityIndexTimeseriesGroupAggInterval $15m = RadarGetQualityIndexTimeseriesGroupAggInterval._('15m');

static const RadarGetQualityIndexTimeseriesGroupAggInterval $1h = RadarGetQualityIndexTimeseriesGroupAggInterval._('1h');

static const RadarGetQualityIndexTimeseriesGroupAggInterval $1d = RadarGetQualityIndexTimeseriesGroupAggInterval._('1d');

static const RadarGetQualityIndexTimeseriesGroupAggInterval $1w = RadarGetQualityIndexTimeseriesGroupAggInterval._('1w');

static const List<RadarGetQualityIndexTimeseriesGroupAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualityIndexTimeseriesGroupAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupAggInterval($value)'; } 
 }
