// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer3TopVerticalsFormat {const RadarGetAttacksLayer3TopVerticalsFormat._(this.value);

factory RadarGetAttacksLayer3TopVerticalsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3TopVerticalsFormat._(json),
}; }

static const RadarGetAttacksLayer3TopVerticalsFormat $json = RadarGetAttacksLayer3TopVerticalsFormat._('JSON');

static const RadarGetAttacksLayer3TopVerticalsFormat csv = RadarGetAttacksLayer3TopVerticalsFormat._('CSV');

static const List<RadarGetAttacksLayer3TopVerticalsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopVerticalsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopVerticalsFormat($value)'; } 
 }
