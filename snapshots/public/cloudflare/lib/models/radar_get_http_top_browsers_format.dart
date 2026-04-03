// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopBrowsersFormat {const RadarGetHttpTopBrowsersFormat._(this.value);

factory RadarGetHttpTopBrowsersFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopBrowsersFormat._(json),
}; }

static const RadarGetHttpTopBrowsersFormat $json = RadarGetHttpTopBrowsersFormat._('JSON');

static const RadarGetHttpTopBrowsersFormat csv = RadarGetHttpTopBrowsersFormat._('CSV');

static const List<RadarGetHttpTopBrowsersFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersFormat($value)'; } 
 }
