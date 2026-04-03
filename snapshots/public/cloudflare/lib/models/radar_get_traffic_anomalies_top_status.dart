// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetTrafficAnomaliesTopStatus {const RadarGetTrafficAnomaliesTopStatus._(this.value);

factory RadarGetTrafficAnomaliesTopStatus.fromJson(String json) { return switch (json) {
  'VERIFIED' => verified,
  'UNVERIFIED' => unverified,
  _ => RadarGetTrafficAnomaliesTopStatus._(json),
}; }

static const RadarGetTrafficAnomaliesTopStatus verified = RadarGetTrafficAnomaliesTopStatus._('VERIFIED');

static const RadarGetTrafficAnomaliesTopStatus unverified = RadarGetTrafficAnomaliesTopStatus._('UNVERIFIED');

static const List<RadarGetTrafficAnomaliesTopStatus> values = [verified, unverified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTrafficAnomaliesTopStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTrafficAnomaliesTopStatus($value)'; } 
 }
