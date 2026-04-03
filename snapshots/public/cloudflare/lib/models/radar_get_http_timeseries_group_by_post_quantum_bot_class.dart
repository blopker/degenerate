// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByPostQuantumBotClass {const RadarGetHttpTimeseriesGroupByPostQuantumBotClass._(this.value);

factory RadarGetHttpTimeseriesGroupByPostQuantumBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesGroupByPostQuantumBotClass._(json),
}; }

static const RadarGetHttpTimeseriesGroupByPostQuantumBotClass likelyAutomated = RadarGetHttpTimeseriesGroupByPostQuantumBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesGroupByPostQuantumBotClass likelyHuman = RadarGetHttpTimeseriesGroupByPostQuantumBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesGroupByPostQuantumBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByPostQuantumBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByPostQuantumBotClass($value)'; } 
 }
