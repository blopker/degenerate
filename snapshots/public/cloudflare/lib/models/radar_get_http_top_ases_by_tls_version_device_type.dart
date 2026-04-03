// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByTlsVersionDeviceType {const RadarGetHttpTopAsesByTlsVersionDeviceType._(this.value);

factory RadarGetHttpTopAsesByTlsVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopAsesByTlsVersionDeviceType._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionDeviceType desktop = RadarGetHttpTopAsesByTlsVersionDeviceType._('DESKTOP');

static const RadarGetHttpTopAsesByTlsVersionDeviceType mobile = RadarGetHttpTopAsesByTlsVersionDeviceType._('MOBILE');

static const RadarGetHttpTopAsesByTlsVersionDeviceType $other = RadarGetHttpTopAsesByTlsVersionDeviceType._('OTHER');

static const List<RadarGetHttpTopAsesByTlsVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionDeviceType($value)'; } 
 }
