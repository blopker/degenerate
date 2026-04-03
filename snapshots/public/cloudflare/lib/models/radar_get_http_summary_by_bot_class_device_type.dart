// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByBotClassDeviceType {const RadarGetHttpSummaryByBotClassDeviceType._(this.value);

factory RadarGetHttpSummaryByBotClassDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpSummaryByBotClassDeviceType._(json),
}; }

static const RadarGetHttpSummaryByBotClassDeviceType desktop = RadarGetHttpSummaryByBotClassDeviceType._('DESKTOP');

static const RadarGetHttpSummaryByBotClassDeviceType mobile = RadarGetHttpSummaryByBotClassDeviceType._('MOBILE');

static const RadarGetHttpSummaryByBotClassDeviceType $other = RadarGetHttpSummaryByBotClassDeviceType._('OTHER');

static const List<RadarGetHttpSummaryByBotClassDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassDeviceType($value)'; } 
 }
