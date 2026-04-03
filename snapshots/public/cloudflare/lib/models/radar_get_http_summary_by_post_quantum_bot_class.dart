// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByPostQuantumBotClass {const RadarGetHttpSummaryByPostQuantumBotClass._(this.value);

factory RadarGetHttpSummaryByPostQuantumBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpSummaryByPostQuantumBotClass._(json),
}; }

static const RadarGetHttpSummaryByPostQuantumBotClass likelyAutomated = RadarGetHttpSummaryByPostQuantumBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpSummaryByPostQuantumBotClass likelyHuman = RadarGetHttpSummaryByPostQuantumBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpSummaryByPostQuantumBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByPostQuantumBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumBotClass($value)'; } 
 }
