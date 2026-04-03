// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpamArc {const RadarGetEmailSecuritySummaryBySpamArc._(this.value);

factory RadarGetEmailSecuritySummaryBySpamArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpamArc._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpamArc pass = RadarGetEmailSecuritySummaryBySpamArc._('PASS');

static const RadarGetEmailSecuritySummaryBySpamArc none = RadarGetEmailSecuritySummaryBySpamArc._('NONE');

static const RadarGetEmailSecuritySummaryBySpamArc fail = RadarGetEmailSecuritySummaryBySpamArc._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpamArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpamArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamArc($value)'; } 
 }
