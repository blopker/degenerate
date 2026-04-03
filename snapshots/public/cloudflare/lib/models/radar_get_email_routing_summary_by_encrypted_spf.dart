// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryByEncryptedSpf {const RadarGetEmailRoutingSummaryByEncryptedSpf._(this.value);

factory RadarGetEmailRoutingSummaryByEncryptedSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByEncryptedSpf._(json),
}; }

static const RadarGetEmailRoutingSummaryByEncryptedSpf pass = RadarGetEmailRoutingSummaryByEncryptedSpf._('PASS');

static const RadarGetEmailRoutingSummaryByEncryptedSpf none = RadarGetEmailRoutingSummaryByEncryptedSpf._('NONE');

static const RadarGetEmailRoutingSummaryByEncryptedSpf fail = RadarGetEmailRoutingSummaryByEncryptedSpf._('FAIL');

static const List<RadarGetEmailRoutingSummaryByEncryptedSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByEncryptedSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByEncryptedSpf($value)'; } 
 }
