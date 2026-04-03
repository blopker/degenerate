// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByBotClassBrowserFamily {const RadarGetHttpTopLocationsByBotClassBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByBotClassBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByBotClassBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByBotClassBrowserFamily chrome = RadarGetHttpTopLocationsByBotClassBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByBotClassBrowserFamily edge = RadarGetHttpTopLocationsByBotClassBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByBotClassBrowserFamily firefox = RadarGetHttpTopLocationsByBotClassBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByBotClassBrowserFamily safari = RadarGetHttpTopLocationsByBotClassBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByBotClassBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBotClassBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBotClassBrowserFamily($value)'; } 
 }
