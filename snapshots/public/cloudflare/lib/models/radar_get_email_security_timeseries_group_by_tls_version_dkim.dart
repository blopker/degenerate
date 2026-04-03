// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim {const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim pass = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim none = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim fail = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByTlsVersionDkim($value)'; } 
 }
