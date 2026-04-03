// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc pass = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc none = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc fail = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryArc($value)'; } 
 }
