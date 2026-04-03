// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetTrafficAnomaliesStatus {const RadarGetTrafficAnomaliesStatus._(this.value);

factory RadarGetTrafficAnomaliesStatus.fromJson(String json) { return switch (json) {
  'VERIFIED' => verified,
  'UNVERIFIED' => unverified,
  _ => RadarGetTrafficAnomaliesStatus._(json),
}; }

static const RadarGetTrafficAnomaliesStatus verified = RadarGetTrafficAnomaliesStatus._('VERIFIED');

static const RadarGetTrafficAnomaliesStatus unverified = RadarGetTrafficAnomaliesStatus._('UNVERIFIED');

static const List<RadarGetTrafficAnomaliesStatus> values = [verified, unverified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTrafficAnomaliesStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTrafficAnomaliesStatus($value)'; } 
 }
