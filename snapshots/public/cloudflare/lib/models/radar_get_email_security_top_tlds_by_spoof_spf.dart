// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsBySpoofSpf {const RadarGetEmailSecurityTopTldsBySpoofSpf._(this.value);

factory RadarGetEmailSecurityTopTldsBySpoofSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsBySpoofSpf._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpoofSpf pass = RadarGetEmailSecurityTopTldsBySpoofSpf._('PASS');

static const RadarGetEmailSecurityTopTldsBySpoofSpf none = RadarGetEmailSecurityTopTldsBySpoofSpf._('NONE');

static const RadarGetEmailSecurityTopTldsBySpoofSpf fail = RadarGetEmailSecurityTopTldsBySpoofSpf._('FAIL');

static const List<RadarGetEmailSecurityTopTldsBySpoofSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpoofSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofSpf($value)'; } 
 }
