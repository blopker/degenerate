// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByIpVersionDeviceType {const RadarGetHttpTopAsesByIpVersionDeviceType._(this.value);

factory RadarGetHttpTopAsesByIpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopAsesByIpVersionDeviceType._(json),
}; }

static const RadarGetHttpTopAsesByIpVersionDeviceType desktop = RadarGetHttpTopAsesByIpVersionDeviceType._('DESKTOP');

static const RadarGetHttpTopAsesByIpVersionDeviceType mobile = RadarGetHttpTopAsesByIpVersionDeviceType._('MOBILE');

static const RadarGetHttpTopAsesByIpVersionDeviceType $other = RadarGetHttpTopAsesByIpVersionDeviceType._('OTHER');

static const List<RadarGetHttpTopAsesByIpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByIpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByIpVersionDeviceType($value)'; } 
 }
