// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetOriginsFormat {const RadarGetOriginsFormat._(this.value);

factory RadarGetOriginsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginsFormat._(json),
}; }

static const RadarGetOriginsFormat $json = RadarGetOriginsFormat._('JSON');

static const RadarGetOriginsFormat csv = RadarGetOriginsFormat._('CSV');

static const List<RadarGetOriginsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsFormat($value)'; } 
 }
