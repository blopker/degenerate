// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByOperatingSystemBrowserFamily {const RadarGetHttpTopAsesByOperatingSystemBrowserFamily._(this.value);

factory RadarGetHttpTopAsesByOperatingSystemBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopAsesByOperatingSystemBrowserFamily._(json),
}; }

static const RadarGetHttpTopAsesByOperatingSystemBrowserFamily chrome = RadarGetHttpTopAsesByOperatingSystemBrowserFamily._('CHROME');

static const RadarGetHttpTopAsesByOperatingSystemBrowserFamily edge = RadarGetHttpTopAsesByOperatingSystemBrowserFamily._('EDGE');

static const RadarGetHttpTopAsesByOperatingSystemBrowserFamily firefox = RadarGetHttpTopAsesByOperatingSystemBrowserFamily._('FIREFOX');

static const RadarGetHttpTopAsesByOperatingSystemBrowserFamily safari = RadarGetHttpTopAsesByOperatingSystemBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopAsesByOperatingSystemBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByOperatingSystemBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemBrowserFamily($value)'; } 
 }
