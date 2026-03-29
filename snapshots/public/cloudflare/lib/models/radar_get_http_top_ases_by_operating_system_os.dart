// GENERATED CODE - DO NOT MODIFY BY HAND

/// Operating system.
final class RadarGetHttpTopAsesByOperatingSystemOs {const RadarGetHttpTopAsesByOperatingSystemOs._(this.value);

factory RadarGetHttpTopAsesByOperatingSystemOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopAsesByOperatingSystemOs._(json),
}; }

static const RadarGetHttpTopAsesByOperatingSystemOs windows = RadarGetHttpTopAsesByOperatingSystemOs._('WINDOWS');

static const RadarGetHttpTopAsesByOperatingSystemOs macosx = RadarGetHttpTopAsesByOperatingSystemOs._('MACOSX');

static const RadarGetHttpTopAsesByOperatingSystemOs ios = RadarGetHttpTopAsesByOperatingSystemOs._('IOS');

static const RadarGetHttpTopAsesByOperatingSystemOs android = RadarGetHttpTopAsesByOperatingSystemOs._('ANDROID');

static const RadarGetHttpTopAsesByOperatingSystemOs chromeos = RadarGetHttpTopAsesByOperatingSystemOs._('CHROMEOS');

static const RadarGetHttpTopAsesByOperatingSystemOs linux = RadarGetHttpTopAsesByOperatingSystemOs._('LINUX');

static const RadarGetHttpTopAsesByOperatingSystemOs smartTv = RadarGetHttpTopAsesByOperatingSystemOs._('SMART_TV');

static const List<RadarGetHttpTopAsesByOperatingSystemOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByOperatingSystemOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemOs($value)'; } 
 }
