// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecuritySummaryByThreatCategoryFormat {const RadarGetEmailSecuritySummaryByThreatCategoryFormat._(this.value);

factory RadarGetEmailSecuritySummaryByThreatCategoryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecuritySummaryByThreatCategoryFormat._(json),
}; }

static const RadarGetEmailSecuritySummaryByThreatCategoryFormat $json = RadarGetEmailSecuritySummaryByThreatCategoryFormat._('JSON');

static const RadarGetEmailSecuritySummaryByThreatCategoryFormat csv = RadarGetEmailSecuritySummaryByThreatCategoryFormat._('CSV');

static const List<RadarGetEmailSecuritySummaryByThreatCategoryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByThreatCategoryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByThreatCategoryFormat($value)'; } 
 }
