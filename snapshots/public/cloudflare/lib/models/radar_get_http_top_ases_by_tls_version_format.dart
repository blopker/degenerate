// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetHttpTopAsesByTlsVersionFormat {const RadarGetHttpTopAsesByTlsVersionFormat._(this.value);

factory RadarGetHttpTopAsesByTlsVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByTlsVersionFormat._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionFormat $json = RadarGetHttpTopAsesByTlsVersionFormat._('JSON');

static const RadarGetHttpTopAsesByTlsVersionFormat csv = RadarGetHttpTopAsesByTlsVersionFormat._('CSV');

static const List<RadarGetHttpTopAsesByTlsVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionFormat($value)'; } 
 }
