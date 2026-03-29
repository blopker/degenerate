// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpVersionBrowserFamily {const RadarGetHttpTopLocationsByHttpVersionBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByHttpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionBrowserFamily chrome = RadarGetHttpTopLocationsByHttpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByHttpVersionBrowserFamily edge = RadarGetHttpTopLocationsByHttpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByHttpVersionBrowserFamily firefox = RadarGetHttpTopLocationsByHttpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByHttpVersionBrowserFamily safari = RadarGetHttpTopLocationsByHttpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByHttpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionBrowserFamily($value)'; } 
 }
