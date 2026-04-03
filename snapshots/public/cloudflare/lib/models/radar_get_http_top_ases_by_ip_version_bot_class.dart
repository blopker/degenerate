// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByIpVersionBotClass {const RadarGetHttpTopAsesByIpVersionBotClass._(this.value);

factory RadarGetHttpTopAsesByIpVersionBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTopAsesByIpVersionBotClass._(json),
}; }

static const RadarGetHttpTopAsesByIpVersionBotClass likelyAutomated = RadarGetHttpTopAsesByIpVersionBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTopAsesByIpVersionBotClass likelyHuman = RadarGetHttpTopAsesByIpVersionBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTopAsesByIpVersionBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByIpVersionBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByIpVersionBotClass($value)'; } 
 }
