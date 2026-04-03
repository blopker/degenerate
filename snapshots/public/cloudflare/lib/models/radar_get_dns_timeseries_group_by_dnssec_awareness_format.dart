// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat {const RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat $json = RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat._('JSON');

static const RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat csv = RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat._('CSV');

static const List<RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecAwarenessFormat($value)'; } 
 }
