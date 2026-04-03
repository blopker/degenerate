// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsAs112TopLocationsByIpVersionFormat {const RadarGetDnsAs112TopLocationsByIpVersionFormat._(this.value);

factory RadarGetDnsAs112TopLocationsByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsAs112TopLocationsByIpVersionFormat._(json),
}; }

static const RadarGetDnsAs112TopLocationsByIpVersionFormat $json = RadarGetDnsAs112TopLocationsByIpVersionFormat._('JSON');

static const RadarGetDnsAs112TopLocationsByIpVersionFormat csv = RadarGetDnsAs112TopLocationsByIpVersionFormat._('CSV');

static const List<RadarGetDnsAs112TopLocationsByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TopLocationsByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionFormat($value)'; } 
 }
