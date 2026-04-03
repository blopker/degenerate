// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesOs {const RadarGetHttpTimeseriesOs._(this.value);

factory RadarGetHttpTimeseriesOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTimeseriesOs._(json),
}; }

static const RadarGetHttpTimeseriesOs windows = RadarGetHttpTimeseriesOs._('WINDOWS');

static const RadarGetHttpTimeseriesOs macosx = RadarGetHttpTimeseriesOs._('MACOSX');

static const RadarGetHttpTimeseriesOs ios = RadarGetHttpTimeseriesOs._('IOS');

static const RadarGetHttpTimeseriesOs android = RadarGetHttpTimeseriesOs._('ANDROID');

static const RadarGetHttpTimeseriesOs chromeos = RadarGetHttpTimeseriesOs._('CHROMEOS');

static const RadarGetHttpTimeseriesOs linux = RadarGetHttpTimeseriesOs._('LINUX');

static const RadarGetHttpTimeseriesOs smartTv = RadarGetHttpTimeseriesOs._('SMART_TV');

static const List<RadarGetHttpTimeseriesOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesOs($value)'; } 
 }
