// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpTimeseriesFormat {const RadarGetBgpTimeseriesFormat._(this.value);

factory RadarGetBgpTimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpTimeseriesFormat._(json),
}; }

static const RadarGetBgpTimeseriesFormat $json = RadarGetBgpTimeseriesFormat._('JSON');

static const RadarGetBgpTimeseriesFormat csv = RadarGetBgpTimeseriesFormat._('CSV');

static const List<RadarGetBgpTimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpTimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpTimeseriesFormat($value)'; } 
 }
