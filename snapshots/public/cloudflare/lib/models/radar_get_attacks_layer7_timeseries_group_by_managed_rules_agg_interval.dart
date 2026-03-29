// GENERATED CODE - DO NOT MODIFY BY HAND

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval {const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval $15m = RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._('15m');

static const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval $1h = RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._('1h');

static const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval $1d = RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._('1d');

static const RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval $1w = RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval._('1w');

static const List<RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByManagedRulesAggInterval($value)'; } 
 }
