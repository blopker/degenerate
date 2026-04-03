// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopBrowserFamiliesFormat {const RadarGetHttpTopBrowserFamiliesFormat._(this.value);

factory RadarGetHttpTopBrowserFamiliesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopBrowserFamiliesFormat._(json),
}; }

static const RadarGetHttpTopBrowserFamiliesFormat $json = RadarGetHttpTopBrowserFamiliesFormat._('JSON');

static const RadarGetHttpTopBrowserFamiliesFormat csv = RadarGetHttpTopBrowserFamiliesFormat._('CSV');

static const List<RadarGetHttpTopBrowserFamiliesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowserFamiliesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesFormat($value)'; } 
 }
