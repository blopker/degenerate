// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAnnotationsOutagesFormat {const RadarGetAnnotationsOutagesFormat._(this.value);

factory RadarGetAnnotationsOutagesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAnnotationsOutagesFormat._(json),
}; }

static const RadarGetAnnotationsOutagesFormat $json = RadarGetAnnotationsOutagesFormat._('JSON');

static const RadarGetAnnotationsOutagesFormat csv = RadarGetAnnotationsOutagesFormat._('CSV');

static const List<RadarGetAnnotationsOutagesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAnnotationsOutagesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAnnotationsOutagesFormat($value)'; } 
 }
