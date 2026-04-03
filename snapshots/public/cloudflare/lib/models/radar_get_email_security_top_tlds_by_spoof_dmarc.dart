// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsBySpoofDmarc {const RadarGetEmailSecurityTopTldsBySpoofDmarc._(this.value);

factory RadarGetEmailSecurityTopTldsBySpoofDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsBySpoofDmarc._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpoofDmarc pass = RadarGetEmailSecurityTopTldsBySpoofDmarc._('PASS');

static const RadarGetEmailSecurityTopTldsBySpoofDmarc none = RadarGetEmailSecurityTopTldsBySpoofDmarc._('NONE');

static const RadarGetEmailSecurityTopTldsBySpoofDmarc fail = RadarGetEmailSecurityTopTldsBySpoofDmarc._('FAIL');

static const List<RadarGetEmailSecurityTopTldsBySpoofDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpoofDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofDmarc($value)'; } 
 }
