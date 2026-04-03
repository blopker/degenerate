// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryBySpamSpf {const RadarGetEmailSecuritySummaryBySpamSpf._(this.value);

factory RadarGetEmailSecuritySummaryBySpamSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpamSpf._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpamSpf pass = RadarGetEmailSecuritySummaryBySpamSpf._('PASS');

static const RadarGetEmailSecuritySummaryBySpamSpf none = RadarGetEmailSecuritySummaryBySpamSpf._('NONE');

static const RadarGetEmailSecuritySummaryBySpamSpf fail = RadarGetEmailSecuritySummaryBySpamSpf._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpamSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpamSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamSpf($value)'; } 
 }
