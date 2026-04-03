// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByIpVersionBrowserFamily {const RadarGetHttpTopAsesByIpVersionBrowserFamily._(this.value);

factory RadarGetHttpTopAsesByIpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopAsesByIpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTopAsesByIpVersionBrowserFamily chrome = RadarGetHttpTopAsesByIpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTopAsesByIpVersionBrowserFamily edge = RadarGetHttpTopAsesByIpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTopAsesByIpVersionBrowserFamily firefox = RadarGetHttpTopAsesByIpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTopAsesByIpVersionBrowserFamily safari = RadarGetHttpTopAsesByIpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopAsesByIpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByIpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByIpVersionBrowserFamily($value)'; } 
 }
