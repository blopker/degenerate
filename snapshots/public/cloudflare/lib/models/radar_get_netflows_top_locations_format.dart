// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetNetflowsTopLocationsFormat {const RadarGetNetflowsTopLocationsFormat._(this.value);

factory RadarGetNetflowsTopLocationsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetNetflowsTopLocationsFormat._(json),
}; }

static const RadarGetNetflowsTopLocationsFormat $json = RadarGetNetflowsTopLocationsFormat._('JSON');

static const RadarGetNetflowsTopLocationsFormat csv = RadarGetNetflowsTopLocationsFormat._('CSV');

static const List<RadarGetNetflowsTopLocationsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTopLocationsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTopLocationsFormat($value)'; } 
 }
