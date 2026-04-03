// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByTlsVersionHttpVersion {const RadarGetHttpTopAsesByTlsVersionHttpVersion._(this.value);

factory RadarGetHttpTopAsesByTlsVersionHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpTopAsesByTlsVersionHttpVersion._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionHttpVersion httPv1 = RadarGetHttpTopAsesByTlsVersionHttpVersion._('HTTPv1');

static const RadarGetHttpTopAsesByTlsVersionHttpVersion httPv2 = RadarGetHttpTopAsesByTlsVersionHttpVersion._('HTTPv2');

static const RadarGetHttpTopAsesByTlsVersionHttpVersion httPv3 = RadarGetHttpTopAsesByTlsVersionHttpVersion._('HTTPv3');

static const List<RadarGetHttpTopAsesByTlsVersionHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionHttpVersion($value)'; } 
 }
