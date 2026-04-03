// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByIpVersionSpf {const RadarGetEmailRoutingSummaryByIpVersionSpf._(this.value);

factory RadarGetEmailRoutingSummaryByIpVersionSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByIpVersionSpf._(json),
}; }

static const RadarGetEmailRoutingSummaryByIpVersionSpf pass = RadarGetEmailRoutingSummaryByIpVersionSpf._('PASS');

static const RadarGetEmailRoutingSummaryByIpVersionSpf none = RadarGetEmailRoutingSummaryByIpVersionSpf._('NONE');

static const RadarGetEmailRoutingSummaryByIpVersionSpf fail = RadarGetEmailRoutingSummaryByIpVersionSpf._('FAIL');

static const List<RadarGetEmailRoutingSummaryByIpVersionSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByIpVersionSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByIpVersionSpf($value)'; } 
 }
