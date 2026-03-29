// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval {const RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval $15m = RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._('15m');

static const RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval $1h = RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._('1h');

static const RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval $1d = RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._('1d');

static const RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval $1w = RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval._('1w');

static const List<RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByIpVersionAggInterval($value)'; } 
 }
