// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily {const RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._(this.value);

factory RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._(json),
}; }

static const RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily chrome = RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._('CHROME');

static const RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily edge = RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._('EDGE');

static const RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily firefox = RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._('FIREFOX');

static const RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily safari = RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily._('SAFARI');

static const List<RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByPostQuantumBrowserFamily($value)'; } 
 }
