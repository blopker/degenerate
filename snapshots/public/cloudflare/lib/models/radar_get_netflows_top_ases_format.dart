// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetNetflowsTopAsesFormat {const RadarGetNetflowsTopAsesFormat._(this.value);

factory RadarGetNetflowsTopAsesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetNetflowsTopAsesFormat._(json),
}; }

static const RadarGetNetflowsTopAsesFormat $json = RadarGetNetflowsTopAsesFormat._('JSON');

static const RadarGetNetflowsTopAsesFormat csv = RadarGetNetflowsTopAsesFormat._('CSV');

static const List<RadarGetNetflowsTopAsesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTopAsesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTopAsesFormat($value)'; } 
 }
