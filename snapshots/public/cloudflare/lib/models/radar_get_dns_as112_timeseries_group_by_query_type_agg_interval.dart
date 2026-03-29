// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval {const RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval $15m = RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._('15m');

static const RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval $1h = RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._('1h');

static const RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval $1d = RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._('1d');

static const RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval $1w = RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval._('1w');

static const List<RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByQueryTypeAggInterval($value)'; } 
 }
