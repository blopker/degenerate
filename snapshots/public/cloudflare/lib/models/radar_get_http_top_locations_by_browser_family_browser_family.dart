// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Browser family.
@immutable final class RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily {const RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily chrome = RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily edge = RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily firefox = RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily safari = RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBrowserFamilyBrowserFamily($value)'; } 
 }
