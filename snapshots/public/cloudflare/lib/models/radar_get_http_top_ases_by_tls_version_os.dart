// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByTlsVersionOs {const RadarGetHttpTopAsesByTlsVersionOs._(this.value);

factory RadarGetHttpTopAsesByTlsVersionOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopAsesByTlsVersionOs._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionOs windows = RadarGetHttpTopAsesByTlsVersionOs._('WINDOWS');

static const RadarGetHttpTopAsesByTlsVersionOs macosx = RadarGetHttpTopAsesByTlsVersionOs._('MACOSX');

static const RadarGetHttpTopAsesByTlsVersionOs ios = RadarGetHttpTopAsesByTlsVersionOs._('IOS');

static const RadarGetHttpTopAsesByTlsVersionOs android = RadarGetHttpTopAsesByTlsVersionOs._('ANDROID');

static const RadarGetHttpTopAsesByTlsVersionOs chromeos = RadarGetHttpTopAsesByTlsVersionOs._('CHROMEOS');

static const RadarGetHttpTopAsesByTlsVersionOs linux = RadarGetHttpTopAsesByTlsVersionOs._('LINUX');

static const RadarGetHttpTopAsesByTlsVersionOs smartTv = RadarGetHttpTopAsesByTlsVersionOs._('SMART_TV');

static const List<RadarGetHttpTopAsesByTlsVersionOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionOs($value)'; } 
 }
