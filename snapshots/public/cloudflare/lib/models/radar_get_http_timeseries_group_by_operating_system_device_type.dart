// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType {const RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType._(this.value);

factory RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType._(json),
}; }

static const RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType desktop = RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType._('DESKTOP');

static const RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType mobile = RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType._('MOBILE');

static const RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType $other = RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType._('OTHER');

static const List<RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemDeviceType($value)'; } 
 }
