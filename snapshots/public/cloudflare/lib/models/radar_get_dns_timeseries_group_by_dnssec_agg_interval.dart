// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByDnssecAggInterval {const RadarGetDnsTimeseriesGroupByDnssecAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsTimeseriesGroupByDnssecAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecAggInterval $15m = RadarGetDnsTimeseriesGroupByDnssecAggInterval._('15m');

static const RadarGetDnsTimeseriesGroupByDnssecAggInterval $1h = RadarGetDnsTimeseriesGroupByDnssecAggInterval._('1h');

static const RadarGetDnsTimeseriesGroupByDnssecAggInterval $1d = RadarGetDnsTimeseriesGroupByDnssecAggInterval._('1d');

static const RadarGetDnsTimeseriesGroupByDnssecAggInterval $1w = RadarGetDnsTimeseriesGroupByDnssecAggInterval._('1w');

static const List<RadarGetDnsTimeseriesGroupByDnssecAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecAggInterval($value)'; } 
 }
