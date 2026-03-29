// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByIpVersionOs {const RadarGetHttpTopLocationsByIpVersionOs._(this.value);

factory RadarGetHttpTopLocationsByIpVersionOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopLocationsByIpVersionOs._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionOs windows = RadarGetHttpTopLocationsByIpVersionOs._('WINDOWS');

static const RadarGetHttpTopLocationsByIpVersionOs macosx = RadarGetHttpTopLocationsByIpVersionOs._('MACOSX');

static const RadarGetHttpTopLocationsByIpVersionOs ios = RadarGetHttpTopLocationsByIpVersionOs._('IOS');

static const RadarGetHttpTopLocationsByIpVersionOs android = RadarGetHttpTopLocationsByIpVersionOs._('ANDROID');

static const RadarGetHttpTopLocationsByIpVersionOs chromeos = RadarGetHttpTopLocationsByIpVersionOs._('CHROMEOS');

static const RadarGetHttpTopLocationsByIpVersionOs linux = RadarGetHttpTopLocationsByIpVersionOs._('LINUX');

static const RadarGetHttpTopLocationsByIpVersionOs smartTv = RadarGetHttpTopLocationsByIpVersionOs._('SMART_TV');

static const List<RadarGetHttpTopLocationsByIpVersionOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionOs($value)'; } 
 }
