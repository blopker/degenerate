// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat $json = RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat._('JSON');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat csv = RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat._('CSV');

static const List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionFormat($value)'; } 
 }
