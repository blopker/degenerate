// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByIpVersionDeviceType {const RadarGetHttpTimeseriesGroupByIpVersionDeviceType._(this.value);

factory RadarGetHttpTimeseriesGroupByIpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTimeseriesGroupByIpVersionDeviceType._(json),
}; }

static const RadarGetHttpTimeseriesGroupByIpVersionDeviceType desktop = RadarGetHttpTimeseriesGroupByIpVersionDeviceType._('DESKTOP');

static const RadarGetHttpTimeseriesGroupByIpVersionDeviceType mobile = RadarGetHttpTimeseriesGroupByIpVersionDeviceType._('MOBILE');

static const RadarGetHttpTimeseriesGroupByIpVersionDeviceType $other = RadarGetHttpTimeseriesGroupByIpVersionDeviceType._('OTHER');

static const List<RadarGetHttpTimeseriesGroupByIpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByIpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByIpVersionDeviceType($value)'; } 
 }
