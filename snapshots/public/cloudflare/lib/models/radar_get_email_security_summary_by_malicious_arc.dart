// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByMaliciousArc {const RadarGetEmailSecuritySummaryByMaliciousArc._(this.value);

factory RadarGetEmailSecuritySummaryByMaliciousArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByMaliciousArc._(json),
}; }

static const RadarGetEmailSecuritySummaryByMaliciousArc pass = RadarGetEmailSecuritySummaryByMaliciousArc._('PASS');

static const RadarGetEmailSecuritySummaryByMaliciousArc none = RadarGetEmailSecuritySummaryByMaliciousArc._('NONE');

static const RadarGetEmailSecuritySummaryByMaliciousArc fail = RadarGetEmailSecuritySummaryByMaliciousArc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByMaliciousArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByMaliciousArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByMaliciousArc($value)'; } 
 }
