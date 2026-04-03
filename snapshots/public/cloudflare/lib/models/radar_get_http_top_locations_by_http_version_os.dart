// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpVersionOs {const RadarGetHttpTopLocationsByHttpVersionOs._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopLocationsByHttpVersionOs._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionOs windows = RadarGetHttpTopLocationsByHttpVersionOs._('WINDOWS');

static const RadarGetHttpTopLocationsByHttpVersionOs macosx = RadarGetHttpTopLocationsByHttpVersionOs._('MACOSX');

static const RadarGetHttpTopLocationsByHttpVersionOs ios = RadarGetHttpTopLocationsByHttpVersionOs._('IOS');

static const RadarGetHttpTopLocationsByHttpVersionOs android = RadarGetHttpTopLocationsByHttpVersionOs._('ANDROID');

static const RadarGetHttpTopLocationsByHttpVersionOs chromeos = RadarGetHttpTopLocationsByHttpVersionOs._('CHROMEOS');

static const RadarGetHttpTopLocationsByHttpVersionOs linux = RadarGetHttpTopLocationsByHttpVersionOs._('LINUX');

static const RadarGetHttpTopLocationsByHttpVersionOs smartTv = RadarGetHttpTopLocationsByHttpVersionOs._('SMART_TV');

static const List<RadarGetHttpTopLocationsByHttpVersionOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionOs($value)'; } 
 }
