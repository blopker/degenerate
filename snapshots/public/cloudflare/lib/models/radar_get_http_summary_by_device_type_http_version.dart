// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByDeviceTypeHttpVersion {const RadarGetHttpSummaryByDeviceTypeHttpVersion._(this.value);

factory RadarGetHttpSummaryByDeviceTypeHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpSummaryByDeviceTypeHttpVersion._(json),
}; }

static const RadarGetHttpSummaryByDeviceTypeHttpVersion httPv1 = RadarGetHttpSummaryByDeviceTypeHttpVersion._('HTTPv1');

static const RadarGetHttpSummaryByDeviceTypeHttpVersion httPv2 = RadarGetHttpSummaryByDeviceTypeHttpVersion._('HTTPv2');

static const RadarGetHttpSummaryByDeviceTypeHttpVersion httPv3 = RadarGetHttpSummaryByDeviceTypeHttpVersion._('HTTPv3');

static const List<RadarGetHttpSummaryByDeviceTypeHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByDeviceTypeHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByDeviceTypeHttpVersion($value)'; } 
 }
