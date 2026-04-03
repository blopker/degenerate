// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByHttpVersionBrowserFamily {const RadarGetHttpTopAsesByHttpVersionBrowserFamily._(this.value);

factory RadarGetHttpTopAsesByHttpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopAsesByHttpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTopAsesByHttpVersionBrowserFamily chrome = RadarGetHttpTopAsesByHttpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTopAsesByHttpVersionBrowserFamily edge = RadarGetHttpTopAsesByHttpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTopAsesByHttpVersionBrowserFamily firefox = RadarGetHttpTopAsesByHttpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTopAsesByHttpVersionBrowserFamily safari = RadarGetHttpTopAsesByHttpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopAsesByHttpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpVersionBrowserFamily($value)'; } 
 }
