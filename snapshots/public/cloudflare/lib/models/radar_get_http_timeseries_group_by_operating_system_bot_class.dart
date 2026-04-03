// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByOperatingSystemBotClass {const RadarGetHttpTimeseriesGroupByOperatingSystemBotClass._(this.value);

factory RadarGetHttpTimeseriesGroupByOperatingSystemBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesGroupByOperatingSystemBotClass._(json),
}; }

static const RadarGetHttpTimeseriesGroupByOperatingSystemBotClass likelyAutomated = RadarGetHttpTimeseriesGroupByOperatingSystemBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesGroupByOperatingSystemBotClass likelyHuman = RadarGetHttpTimeseriesGroupByOperatingSystemBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesGroupByOperatingSystemBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByOperatingSystemBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemBotClass($value)'; } 
 }
