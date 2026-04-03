// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesBotClass {const RadarGetHttpTimeseriesBotClass._(this.value);

factory RadarGetHttpTimeseriesBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesBotClass._(json),
}; }

static const RadarGetHttpTimeseriesBotClass likelyAutomated = RadarGetHttpTimeseriesBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesBotClass likelyHuman = RadarGetHttpTimeseriesBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesBotClass($value)'; } 
 }
