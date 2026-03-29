// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval $15m = RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._('15m');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval $1h = RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._('1h');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval $1d = RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._('1d');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval $1w = RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval._('1w');

static const List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionAggInterval($value)'; } 
 }
