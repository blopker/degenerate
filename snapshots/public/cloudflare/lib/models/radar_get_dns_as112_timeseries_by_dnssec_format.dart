// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsAs112TimeseriesByDnssecFormat {const RadarGetDnsAs112TimeseriesByDnssecFormat._(this.value);

factory RadarGetDnsAs112TimeseriesByDnssecFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsAs112TimeseriesByDnssecFormat._(json),
}; }

static const RadarGetDnsAs112TimeseriesByDnssecFormat $json = RadarGetDnsAs112TimeseriesByDnssecFormat._('JSON');

static const RadarGetDnsAs112TimeseriesByDnssecFormat csv = RadarGetDnsAs112TimeseriesByDnssecFormat._('CSV');

static const List<RadarGetDnsAs112TimeseriesByDnssecFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByDnssecFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByDnssecFormat($value)'; } 
 }
