// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpRequestsBrowserFamily {const RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByHttpRequestsBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByHttpRequestsBrowserFamily chrome = RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByHttpRequestsBrowserFamily edge = RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByHttpRequestsBrowserFamily firefox = RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByHttpRequestsBrowserFamily safari = RadarGetHttpTopLocationsByHttpRequestsBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByHttpRequestsBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpRequestsBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsBrowserFamily($value)'; } 
 }
