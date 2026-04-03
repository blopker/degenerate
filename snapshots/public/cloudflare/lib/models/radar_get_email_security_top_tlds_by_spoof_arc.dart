// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsBySpoofArc {const RadarGetEmailSecurityTopTldsBySpoofArc._(this.value);

factory RadarGetEmailSecurityTopTldsBySpoofArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsBySpoofArc._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpoofArc pass = RadarGetEmailSecurityTopTldsBySpoofArc._('PASS');

static const RadarGetEmailSecurityTopTldsBySpoofArc none = RadarGetEmailSecurityTopTldsBySpoofArc._('NONE');

static const RadarGetEmailSecurityTopTldsBySpoofArc fail = RadarGetEmailSecurityTopTldsBySpoofArc._('FAIL');

static const List<RadarGetEmailSecurityTopTldsBySpoofArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpoofArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofArc($value)'; } 
 }
