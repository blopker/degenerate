// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByTlsVersionOs {const RadarGetHttpTimeseriesGroupByTlsVersionOs._(this.value);

factory RadarGetHttpTimeseriesGroupByTlsVersionOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTimeseriesGroupByTlsVersionOs._(json),
}; }

static const RadarGetHttpTimeseriesGroupByTlsVersionOs windows = RadarGetHttpTimeseriesGroupByTlsVersionOs._('WINDOWS');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs macosx = RadarGetHttpTimeseriesGroupByTlsVersionOs._('MACOSX');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs ios = RadarGetHttpTimeseriesGroupByTlsVersionOs._('IOS');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs android = RadarGetHttpTimeseriesGroupByTlsVersionOs._('ANDROID');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs chromeos = RadarGetHttpTimeseriesGroupByTlsVersionOs._('CHROMEOS');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs linux = RadarGetHttpTimeseriesGroupByTlsVersionOs._('LINUX');

static const RadarGetHttpTimeseriesGroupByTlsVersionOs smartTv = RadarGetHttpTimeseriesGroupByTlsVersionOs._('SMART_TV');

static const List<RadarGetHttpTimeseriesGroupByTlsVersionOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByTlsVersionOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByTlsVersionOs($value)'; } 
 }
