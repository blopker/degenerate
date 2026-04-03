// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByTlsVersionBotClass {const RadarGetHttpTimeseriesGroupByTlsVersionBotClass._(this.value);

factory RadarGetHttpTimeseriesGroupByTlsVersionBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesGroupByTlsVersionBotClass._(json),
}; }

static const RadarGetHttpTimeseriesGroupByTlsVersionBotClass likelyAutomated = RadarGetHttpTimeseriesGroupByTlsVersionBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesGroupByTlsVersionBotClass likelyHuman = RadarGetHttpTimeseriesGroupByTlsVersionBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesGroupByTlsVersionBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByTlsVersionBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByTlsVersionBotClass($value)'; } 
 }
