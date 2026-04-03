// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily {const RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily chrome = RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily edge = RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily firefox = RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily safari = RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpVersionBrowserFamily($value)'; } 
 }
