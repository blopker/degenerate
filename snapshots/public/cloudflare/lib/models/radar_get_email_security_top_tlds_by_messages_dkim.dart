// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTopTldsByMessagesDkim {const RadarGetEmailSecurityTopTldsByMessagesDkim._(this.value);

factory RadarGetEmailSecurityTopTldsByMessagesDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsByMessagesDkim._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMessagesDkim pass = RadarGetEmailSecurityTopTldsByMessagesDkim._('PASS');

static const RadarGetEmailSecurityTopTldsByMessagesDkim none = RadarGetEmailSecurityTopTldsByMessagesDkim._('NONE');

static const RadarGetEmailSecurityTopTldsByMessagesDkim fail = RadarGetEmailSecurityTopTldsByMessagesDkim._('FAIL');

static const List<RadarGetEmailSecurityTopTldsByMessagesDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMessagesDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesDkim($value)'; } 
 }
