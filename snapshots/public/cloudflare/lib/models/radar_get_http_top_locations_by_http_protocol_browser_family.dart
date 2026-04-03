// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpProtocolBrowserFamily {const RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolBrowserFamily chrome = RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByHttpProtocolBrowserFamily edge = RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByHttpProtocolBrowserFamily firefox = RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByHttpProtocolBrowserFamily safari = RadarGetHttpTopLocationsByHttpProtocolBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByHttpProtocolBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolBrowserFamily($value)'; } 
 }
