// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByBotClassOs {const RadarGetHttpSummaryByBotClassOs._(this.value);

factory RadarGetHttpSummaryByBotClassOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpSummaryByBotClassOs._(json),
}; }

static const RadarGetHttpSummaryByBotClassOs windows = RadarGetHttpSummaryByBotClassOs._('WINDOWS');

static const RadarGetHttpSummaryByBotClassOs macosx = RadarGetHttpSummaryByBotClassOs._('MACOSX');

static const RadarGetHttpSummaryByBotClassOs ios = RadarGetHttpSummaryByBotClassOs._('IOS');

static const RadarGetHttpSummaryByBotClassOs android = RadarGetHttpSummaryByBotClassOs._('ANDROID');

static const RadarGetHttpSummaryByBotClassOs chromeos = RadarGetHttpSummaryByBotClassOs._('CHROMEOS');

static const RadarGetHttpSummaryByBotClassOs linux = RadarGetHttpSummaryByBotClassOs._('LINUX');

static const RadarGetHttpSummaryByBotClassOs smartTv = RadarGetHttpSummaryByBotClassOs._('SMART_TV');

static const List<RadarGetHttpSummaryByBotClassOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassOs($value)'; } 
 }
