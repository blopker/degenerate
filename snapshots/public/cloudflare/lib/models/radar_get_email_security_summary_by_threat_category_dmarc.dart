// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByThreatCategoryDmarc {const RadarGetEmailSecuritySummaryByThreatCategoryDmarc._(this.value);

factory RadarGetEmailSecuritySummaryByThreatCategoryDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByThreatCategoryDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryByThreatCategoryDmarc pass = RadarGetEmailSecuritySummaryByThreatCategoryDmarc._('PASS');

static const RadarGetEmailSecuritySummaryByThreatCategoryDmarc none = RadarGetEmailSecuritySummaryByThreatCategoryDmarc._('NONE');

static const RadarGetEmailSecuritySummaryByThreatCategoryDmarc fail = RadarGetEmailSecuritySummaryByThreatCategoryDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByThreatCategoryDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByThreatCategoryDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByThreatCategoryDmarc($value)'; } 
 }
