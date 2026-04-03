// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAnnotationsOutagesTopFormat {const RadarGetAnnotationsOutagesTopFormat._(this.value);

factory RadarGetAnnotationsOutagesTopFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAnnotationsOutagesTopFormat._(json),
}; }

static const RadarGetAnnotationsOutagesTopFormat $json = RadarGetAnnotationsOutagesTopFormat._('JSON');

static const RadarGetAnnotationsOutagesTopFormat csv = RadarGetAnnotationsOutagesTopFormat._('CSV');

static const List<RadarGetAnnotationsOutagesTopFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAnnotationsOutagesTopFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAnnotationsOutagesTopFormat($value)'; } 
 }
