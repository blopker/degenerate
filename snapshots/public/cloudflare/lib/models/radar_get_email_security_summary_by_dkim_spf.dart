// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByDkimSpf {const RadarGetEmailSecuritySummaryByDkimSpf._(this.value);

factory RadarGetEmailSecuritySummaryByDkimSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByDkimSpf._(json),
}; }

static const RadarGetEmailSecuritySummaryByDkimSpf pass = RadarGetEmailSecuritySummaryByDkimSpf._('PASS');

static const RadarGetEmailSecuritySummaryByDkimSpf none = RadarGetEmailSecuritySummaryByDkimSpf._('NONE');

static const RadarGetEmailSecuritySummaryByDkimSpf fail = RadarGetEmailSecuritySummaryByDkimSpf._('FAIL');

static const List<RadarGetEmailSecuritySummaryByDkimSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDkimSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimSpf($value)'; } 
 }
