// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval {const RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval $15m = RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._('15m');

static const RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval $1h = RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._('1h');

static const RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval $1d = RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._('1d');

static const RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval $1w = RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval._('1w');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpamAggInterval($value)'; } 
 }
