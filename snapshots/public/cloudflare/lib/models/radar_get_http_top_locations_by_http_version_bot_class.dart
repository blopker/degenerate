// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpVersionBotClass {const RadarGetHttpTopLocationsByHttpVersionBotClass._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTopLocationsByHttpVersionBotClass._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionBotClass likelyAutomated = RadarGetHttpTopLocationsByHttpVersionBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTopLocationsByHttpVersionBotClass likelyHuman = RadarGetHttpTopLocationsByHttpVersionBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTopLocationsByHttpVersionBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionBotClass($value)'; } 
 }
