// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByIpVersionBrowserFamily {const RadarGetHttpTopLocationsByIpVersionBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByIpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByIpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionBrowserFamily chrome = RadarGetHttpTopLocationsByIpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByIpVersionBrowserFamily edge = RadarGetHttpTopLocationsByIpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByIpVersionBrowserFamily firefox = RadarGetHttpTopLocationsByIpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByIpVersionBrowserFamily safari = RadarGetHttpTopLocationsByIpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByIpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionBrowserFamily($value)'; } 
 }
