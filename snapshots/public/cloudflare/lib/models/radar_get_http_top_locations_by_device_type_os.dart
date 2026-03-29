// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByDeviceTypeOs {const RadarGetHttpTopLocationsByDeviceTypeOs._(this.value);

factory RadarGetHttpTopLocationsByDeviceTypeOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopLocationsByDeviceTypeOs._(json),
}; }

static const RadarGetHttpTopLocationsByDeviceTypeOs windows = RadarGetHttpTopLocationsByDeviceTypeOs._('WINDOWS');

static const RadarGetHttpTopLocationsByDeviceTypeOs macosx = RadarGetHttpTopLocationsByDeviceTypeOs._('MACOSX');

static const RadarGetHttpTopLocationsByDeviceTypeOs ios = RadarGetHttpTopLocationsByDeviceTypeOs._('IOS');

static const RadarGetHttpTopLocationsByDeviceTypeOs android = RadarGetHttpTopLocationsByDeviceTypeOs._('ANDROID');

static const RadarGetHttpTopLocationsByDeviceTypeOs chromeos = RadarGetHttpTopLocationsByDeviceTypeOs._('CHROMEOS');

static const RadarGetHttpTopLocationsByDeviceTypeOs linux = RadarGetHttpTopLocationsByDeviceTypeOs._('LINUX');

static const RadarGetHttpTopLocationsByDeviceTypeOs smartTv = RadarGetHttpTopLocationsByDeviceTypeOs._('SMART_TV');

static const List<RadarGetHttpTopLocationsByDeviceTypeOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByDeviceTypeOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByDeviceTypeOs($value)'; } 
 }
