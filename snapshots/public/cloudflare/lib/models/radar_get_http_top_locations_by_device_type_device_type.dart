// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Device type.
@immutable final class RadarGetHttpTopLocationsByDeviceTypeDeviceType {const RadarGetHttpTopLocationsByDeviceTypeDeviceType._(this.value);

factory RadarGetHttpTopLocationsByDeviceTypeDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopLocationsByDeviceTypeDeviceType._(json),
}; }

static const RadarGetHttpTopLocationsByDeviceTypeDeviceType desktop = RadarGetHttpTopLocationsByDeviceTypeDeviceType._('DESKTOP');

static const RadarGetHttpTopLocationsByDeviceTypeDeviceType mobile = RadarGetHttpTopLocationsByDeviceTypeDeviceType._('MOBILE');

static const RadarGetHttpTopLocationsByDeviceTypeDeviceType $other = RadarGetHttpTopLocationsByDeviceTypeDeviceType._('OTHER');

static const List<RadarGetHttpTopLocationsByDeviceTypeDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByDeviceTypeDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByDeviceTypeDeviceType($value)'; } 
 }
