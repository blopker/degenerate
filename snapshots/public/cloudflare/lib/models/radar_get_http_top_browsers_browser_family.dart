// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopBrowsersBrowserFamily {const RadarGetHttpTopBrowsersBrowserFamily._(this.value);

factory RadarGetHttpTopBrowsersBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopBrowsersBrowserFamily._(json),
}; }

static const RadarGetHttpTopBrowsersBrowserFamily chrome = RadarGetHttpTopBrowsersBrowserFamily._('CHROME');

static const RadarGetHttpTopBrowsersBrowserFamily edge = RadarGetHttpTopBrowsersBrowserFamily._('EDGE');

static const RadarGetHttpTopBrowsersBrowserFamily firefox = RadarGetHttpTopBrowsersBrowserFamily._('FIREFOX');

static const RadarGetHttpTopBrowsersBrowserFamily safari = RadarGetHttpTopBrowsersBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopBrowsersBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersBrowserFamily($value)'; } 
 }
