// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetDnsAs112TopLocationsByEdnsFormat {const RadarGetDnsAs112TopLocationsByEdnsFormat._(this.value);

factory RadarGetDnsAs112TopLocationsByEdnsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsAs112TopLocationsByEdnsFormat._(json),
}; }

static const RadarGetDnsAs112TopLocationsByEdnsFormat $json = RadarGetDnsAs112TopLocationsByEdnsFormat._('JSON');

static const RadarGetDnsAs112TopLocationsByEdnsFormat csv = RadarGetDnsAs112TopLocationsByEdnsFormat._('CSV');

static const List<RadarGetDnsAs112TopLocationsByEdnsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TopLocationsByEdnsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByEdnsFormat($value)'; } 
 }
