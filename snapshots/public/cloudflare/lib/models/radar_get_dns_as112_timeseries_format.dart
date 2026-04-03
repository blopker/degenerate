// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsAs112TimeseriesFormat {const RadarGetDnsAs112TimeseriesFormat._(this.value);

factory RadarGetDnsAs112TimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsAs112TimeseriesFormat._(json),
}; }

static const RadarGetDnsAs112TimeseriesFormat $json = RadarGetDnsAs112TimeseriesFormat._('JSON');

static const RadarGetDnsAs112TimeseriesFormat csv = RadarGetDnsAs112TimeseriesFormat._('CSV');

static const List<RadarGetDnsAs112TimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesFormat($value)'; } 
 }
