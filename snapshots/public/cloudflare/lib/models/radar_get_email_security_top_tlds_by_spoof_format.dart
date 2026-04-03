// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTopTldsBySpoofFormat {const RadarGetEmailSecurityTopTldsBySpoofFormat._(this.value);

factory RadarGetEmailSecurityTopTldsBySpoofFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTopTldsBySpoofFormat._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpoofFormat $json = RadarGetEmailSecurityTopTldsBySpoofFormat._('JSON');

static const RadarGetEmailSecurityTopTldsBySpoofFormat csv = RadarGetEmailSecurityTopTldsBySpoofFormat._('CSV');

static const List<RadarGetEmailSecurityTopTldsBySpoofFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpoofFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofFormat($value)'; } 
 }
