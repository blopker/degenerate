// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByBotClassBrowserFamily {const RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._(this.value);

factory RadarGetHttpTimeseriesGroupByBotClassBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBotClassBrowserFamily chrome = RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._('CHROME');

static const RadarGetHttpTimeseriesGroupByBotClassBrowserFamily edge = RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._('EDGE');

static const RadarGetHttpTimeseriesGroupByBotClassBrowserFamily firefox = RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._('FIREFOX');

static const RadarGetHttpTimeseriesGroupByBotClassBrowserFamily safari = RadarGetHttpTimeseriesGroupByBotClassBrowserFamily._('SAFARI');

static const List<RadarGetHttpTimeseriesGroupByBotClassBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBotClassBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBotClassBrowserFamily($value)'; } 
 }
