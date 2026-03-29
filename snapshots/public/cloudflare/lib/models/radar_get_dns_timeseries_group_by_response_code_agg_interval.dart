// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByResponseCodeAggInterval {const RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseCodeAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseCodeAggInterval $15m = RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._('15m');

static const RadarGetDnsTimeseriesGroupByResponseCodeAggInterval $1h = RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._('1h');

static const RadarGetDnsTimeseriesGroupByResponseCodeAggInterval $1d = RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._('1d');

static const RadarGetDnsTimeseriesGroupByResponseCodeAggInterval $1w = RadarGetDnsTimeseriesGroupByResponseCodeAggInterval._('1w');

static const List<RadarGetDnsTimeseriesGroupByResponseCodeAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseCodeAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseCodeAggInterval($value)'; } 
 }
