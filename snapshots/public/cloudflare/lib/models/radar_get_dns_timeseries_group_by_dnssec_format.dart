// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsTimeseriesGroupByDnssecFormat {const RadarGetDnsTimeseriesGroupByDnssecFormat._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsTimeseriesGroupByDnssecFormat._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecFormat $json = RadarGetDnsTimeseriesGroupByDnssecFormat._('JSON');

static const RadarGetDnsTimeseriesGroupByDnssecFormat csv = RadarGetDnsTimeseriesGroupByDnssecFormat._('CSV');

static const List<RadarGetDnsTimeseriesGroupByDnssecFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecFormat($value)'; } 
 }
