// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7TopOriginLocationFormat {const RadarGetAttacksLayer7TopOriginLocationFormat._(this.value);

factory RadarGetAttacksLayer7TopOriginLocationFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7TopOriginLocationFormat._(json),
}; }

static const RadarGetAttacksLayer7TopOriginLocationFormat $json = RadarGetAttacksLayer7TopOriginLocationFormat._('JSON');

static const RadarGetAttacksLayer7TopOriginLocationFormat csv = RadarGetAttacksLayer7TopOriginLocationFormat._('CSV');

static const List<RadarGetAttacksLayer7TopOriginLocationFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopOriginLocationFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginLocationFormat($value)'; } 
 }
