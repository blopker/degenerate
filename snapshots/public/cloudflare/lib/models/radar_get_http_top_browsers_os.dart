// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopBrowsersOs {const RadarGetHttpTopBrowsersOs._(this.value);

factory RadarGetHttpTopBrowsersOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopBrowsersOs._(json),
}; }

static const RadarGetHttpTopBrowsersOs windows = RadarGetHttpTopBrowsersOs._('WINDOWS');

static const RadarGetHttpTopBrowsersOs macosx = RadarGetHttpTopBrowsersOs._('MACOSX');

static const RadarGetHttpTopBrowsersOs ios = RadarGetHttpTopBrowsersOs._('IOS');

static const RadarGetHttpTopBrowsersOs android = RadarGetHttpTopBrowsersOs._('ANDROID');

static const RadarGetHttpTopBrowsersOs chromeos = RadarGetHttpTopBrowsersOs._('CHROMEOS');

static const RadarGetHttpTopBrowsersOs linux = RadarGetHttpTopBrowsersOs._('LINUX');

static const RadarGetHttpTopBrowsersOs smartTv = RadarGetHttpTopBrowsersOs._('SMART_TV');

static const List<RadarGetHttpTopBrowsersOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersOs($value)'; } 
 }
