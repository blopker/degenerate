// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopBrowserFamiliesOs {const RadarGetHttpTopBrowserFamiliesOs._(this.value);

factory RadarGetHttpTopBrowserFamiliesOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopBrowserFamiliesOs._(json),
}; }

static const RadarGetHttpTopBrowserFamiliesOs windows = RadarGetHttpTopBrowserFamiliesOs._('WINDOWS');

static const RadarGetHttpTopBrowserFamiliesOs macosx = RadarGetHttpTopBrowserFamiliesOs._('MACOSX');

static const RadarGetHttpTopBrowserFamiliesOs ios = RadarGetHttpTopBrowserFamiliesOs._('IOS');

static const RadarGetHttpTopBrowserFamiliesOs android = RadarGetHttpTopBrowserFamiliesOs._('ANDROID');

static const RadarGetHttpTopBrowserFamiliesOs chromeos = RadarGetHttpTopBrowserFamiliesOs._('CHROMEOS');

static const RadarGetHttpTopBrowserFamiliesOs linux = RadarGetHttpTopBrowserFamiliesOs._('LINUX');

static const RadarGetHttpTopBrowserFamiliesOs smartTv = RadarGetHttpTopBrowserFamiliesOs._('SMART_TV');

static const List<RadarGetHttpTopBrowserFamiliesOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowserFamiliesOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesOs($value)'; } 
 }
