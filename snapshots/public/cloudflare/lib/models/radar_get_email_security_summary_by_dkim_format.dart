// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecuritySummaryByDkimFormat {const RadarGetEmailSecuritySummaryByDkimFormat._(this.value);

factory RadarGetEmailSecuritySummaryByDkimFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecuritySummaryByDkimFormat._(json),
}; }

static const RadarGetEmailSecuritySummaryByDkimFormat $json = RadarGetEmailSecuritySummaryByDkimFormat._('JSON');

static const RadarGetEmailSecuritySummaryByDkimFormat csv = RadarGetEmailSecuritySummaryByDkimFormat._('CSV');

static const List<RadarGetEmailSecuritySummaryByDkimFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDkimFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimFormat($value)'; } 
 }
