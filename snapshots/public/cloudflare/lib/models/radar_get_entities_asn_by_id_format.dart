// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEntitiesAsnByIdFormat {const RadarGetEntitiesAsnByIdFormat._(this.value);

factory RadarGetEntitiesAsnByIdFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEntitiesAsnByIdFormat._(json),
}; }

static const RadarGetEntitiesAsnByIdFormat $json = RadarGetEntitiesAsnByIdFormat._('JSON');

static const RadarGetEntitiesAsnByIdFormat csv = RadarGetEntitiesAsnByIdFormat._('CSV');

static const List<RadarGetEntitiesAsnByIdFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEntitiesAsnByIdFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEntitiesAsnByIdFormat($value)'; } 
 }
