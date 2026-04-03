// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsByMaliciousSpf {const RadarGetEmailSecurityTopTldsByMaliciousSpf._(this.value);

factory RadarGetEmailSecurityTopTldsByMaliciousSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsByMaliciousSpf._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMaliciousSpf pass = RadarGetEmailSecurityTopTldsByMaliciousSpf._('PASS');

static const RadarGetEmailSecurityTopTldsByMaliciousSpf none = RadarGetEmailSecurityTopTldsByMaliciousSpf._('NONE');

static const RadarGetEmailSecurityTopTldsByMaliciousSpf fail = RadarGetEmailSecurityTopTldsByMaliciousSpf._('FAIL');

static const List<RadarGetEmailSecurityTopTldsByMaliciousSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMaliciousSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMaliciousSpf($value)'; } 
 }
