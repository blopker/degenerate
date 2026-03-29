// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByBrowserFamilyOs {const RadarGetHttpTopAsesByBrowserFamilyOs._(this.value);

factory RadarGetHttpTopAsesByBrowserFamilyOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopAsesByBrowserFamilyOs._(json),
}; }

static const RadarGetHttpTopAsesByBrowserFamilyOs windows = RadarGetHttpTopAsesByBrowserFamilyOs._('WINDOWS');

static const RadarGetHttpTopAsesByBrowserFamilyOs macosx = RadarGetHttpTopAsesByBrowserFamilyOs._('MACOSX');

static const RadarGetHttpTopAsesByBrowserFamilyOs ios = RadarGetHttpTopAsesByBrowserFamilyOs._('IOS');

static const RadarGetHttpTopAsesByBrowserFamilyOs android = RadarGetHttpTopAsesByBrowserFamilyOs._('ANDROID');

static const RadarGetHttpTopAsesByBrowserFamilyOs chromeos = RadarGetHttpTopAsesByBrowserFamilyOs._('CHROMEOS');

static const RadarGetHttpTopAsesByBrowserFamilyOs linux = RadarGetHttpTopAsesByBrowserFamilyOs._('LINUX');

static const RadarGetHttpTopAsesByBrowserFamilyOs smartTv = RadarGetHttpTopAsesByBrowserFamilyOs._('SMART_TV');

static const List<RadarGetHttpTopAsesByBrowserFamilyOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByBrowserFamilyOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByBrowserFamilyOs($value)'; } 
 }
