// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByOperatingSystemBrowserFamily {const RadarGetHttpSummaryByOperatingSystemBrowserFamily._(this.value);

factory RadarGetHttpSummaryByOperatingSystemBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpSummaryByOperatingSystemBrowserFamily._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemBrowserFamily chrome = RadarGetHttpSummaryByOperatingSystemBrowserFamily._('CHROME');

static const RadarGetHttpSummaryByOperatingSystemBrowserFamily edge = RadarGetHttpSummaryByOperatingSystemBrowserFamily._('EDGE');

static const RadarGetHttpSummaryByOperatingSystemBrowserFamily firefox = RadarGetHttpSummaryByOperatingSystemBrowserFamily._('FIREFOX');

static const RadarGetHttpSummaryByOperatingSystemBrowserFamily safari = RadarGetHttpSummaryByOperatingSystemBrowserFamily._('SAFARI');

static const List<RadarGetHttpSummaryByOperatingSystemBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemBrowserFamily($value)'; } 
 }
