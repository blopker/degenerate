// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByDeviceTypeBrowserFamily {const RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByDeviceTypeBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByDeviceTypeBrowserFamily chrome = RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByDeviceTypeBrowserFamily edge = RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByDeviceTypeBrowserFamily firefox = RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByDeviceTypeBrowserFamily safari = RadarGetHttpTopLocationsByDeviceTypeBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByDeviceTypeBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByDeviceTypeBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByDeviceTypeBrowserFamily($value)'; } 
 }
