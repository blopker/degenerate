// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesHttpVersion {const RadarGetHttpTimeseriesHttpVersion._(this.value);

factory RadarGetHttpTimeseriesHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpTimeseriesHttpVersion._(json),
}; }

static const RadarGetHttpTimeseriesHttpVersion httPv1 = RadarGetHttpTimeseriesHttpVersion._('HTTPv1');

static const RadarGetHttpTimeseriesHttpVersion httPv2 = RadarGetHttpTimeseriesHttpVersion._('HTTPv2');

static const RadarGetHttpTimeseriesHttpVersion httPv3 = RadarGetHttpTimeseriesHttpVersion._('HTTPv3');

static const List<RadarGetHttpTimeseriesHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesHttpVersion($value)'; } 
 }
