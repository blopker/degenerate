// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TopTargetLocationFormat {const RadarGetAttacksLayer7TopTargetLocationFormat._(this.value);

factory RadarGetAttacksLayer7TopTargetLocationFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TopTargetLocationFormat._(json),
}; }

static const RadarGetAttacksLayer7TopTargetLocationFormat $json = RadarGetAttacksLayer7TopTargetLocationFormat._('JSON');

static const RadarGetAttacksLayer7TopTargetLocationFormat csv = RadarGetAttacksLayer7TopTargetLocationFormat._('CSV');

static const List<RadarGetAttacksLayer7TopTargetLocationFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopTargetLocationFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopTargetLocationFormat($value)'; } 
 }
