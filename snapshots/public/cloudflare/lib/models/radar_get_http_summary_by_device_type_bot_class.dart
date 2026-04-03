// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByDeviceTypeBotClass {const RadarGetHttpSummaryByDeviceTypeBotClass._(this.value);

factory RadarGetHttpSummaryByDeviceTypeBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpSummaryByDeviceTypeBotClass._(json),
}; }

static const RadarGetHttpSummaryByDeviceTypeBotClass likelyAutomated = RadarGetHttpSummaryByDeviceTypeBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpSummaryByDeviceTypeBotClass likelyHuman = RadarGetHttpSummaryByDeviceTypeBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpSummaryByDeviceTypeBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByDeviceTypeBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByDeviceTypeBotClass($value)'; } 
 }
