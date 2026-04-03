// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByHttpVersionDeviceType {const RadarGetHttpTimeseriesGroupByHttpVersionDeviceType._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTimeseriesGroupByHttpVersionDeviceType._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpVersionDeviceType desktop = RadarGetHttpTimeseriesGroupByHttpVersionDeviceType._('DESKTOP');

static const RadarGetHttpTimeseriesGroupByHttpVersionDeviceType mobile = RadarGetHttpTimeseriesGroupByHttpVersionDeviceType._('MOBILE');

static const RadarGetHttpTimeseriesGroupByHttpVersionDeviceType $other = RadarGetHttpTimeseriesGroupByHttpVersionDeviceType._('OTHER');

static const List<RadarGetHttpTimeseriesGroupByHttpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpVersionDeviceType($value)'; } 
 }
