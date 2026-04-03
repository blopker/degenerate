// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByOperatingSystemDeviceType {const RadarGetHttpTopLocationsByOperatingSystemDeviceType._(this.value);

factory RadarGetHttpTopLocationsByOperatingSystemDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopLocationsByOperatingSystemDeviceType._(json),
}; }

static const RadarGetHttpTopLocationsByOperatingSystemDeviceType desktop = RadarGetHttpTopLocationsByOperatingSystemDeviceType._('DESKTOP');

static const RadarGetHttpTopLocationsByOperatingSystemDeviceType mobile = RadarGetHttpTopLocationsByOperatingSystemDeviceType._('MOBILE');

static const RadarGetHttpTopLocationsByOperatingSystemDeviceType $other = RadarGetHttpTopLocationsByOperatingSystemDeviceType._('OTHER');

static const List<RadarGetHttpTopLocationsByOperatingSystemDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByOperatingSystemDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByOperatingSystemDeviceType($value)'; } 
 }
