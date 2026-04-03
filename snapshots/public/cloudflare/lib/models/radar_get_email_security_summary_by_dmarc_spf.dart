// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByDmarcSpf {const RadarGetEmailSecuritySummaryByDmarcSpf._(this.value);

factory RadarGetEmailSecuritySummaryByDmarcSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByDmarcSpf._(json),
}; }

static const RadarGetEmailSecuritySummaryByDmarcSpf pass = RadarGetEmailSecuritySummaryByDmarcSpf._('PASS');

static const RadarGetEmailSecuritySummaryByDmarcSpf none = RadarGetEmailSecuritySummaryByDmarcSpf._('NONE');

static const RadarGetEmailSecuritySummaryByDmarcSpf fail = RadarGetEmailSecuritySummaryByDmarcSpf._('FAIL');

static const List<RadarGetEmailSecuritySummaryByDmarcSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDmarcSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDmarcSpf($value)'; } 
 }
