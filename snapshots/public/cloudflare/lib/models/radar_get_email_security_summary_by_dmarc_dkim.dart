// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByDmarcDkim {const RadarGetEmailSecuritySummaryByDmarcDkim._(this.value);

factory RadarGetEmailSecuritySummaryByDmarcDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByDmarcDkim._(json),
}; }

static const RadarGetEmailSecuritySummaryByDmarcDkim pass = RadarGetEmailSecuritySummaryByDmarcDkim._('PASS');

static const RadarGetEmailSecuritySummaryByDmarcDkim none = RadarGetEmailSecuritySummaryByDmarcDkim._('NONE');

static const RadarGetEmailSecuritySummaryByDmarcDkim fail = RadarGetEmailSecuritySummaryByDmarcDkim._('FAIL');

static const List<RadarGetEmailSecuritySummaryByDmarcDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDmarcDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDmarcDkim($value)'; } 
 }
