// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpRequestsOs {const RadarGetHttpTopLocationsByHttpRequestsOs._(this.value);

factory RadarGetHttpTopLocationsByHttpRequestsOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpTopLocationsByHttpRequestsOs._(json),
}; }

static const RadarGetHttpTopLocationsByHttpRequestsOs windows = RadarGetHttpTopLocationsByHttpRequestsOs._('WINDOWS');

static const RadarGetHttpTopLocationsByHttpRequestsOs macosx = RadarGetHttpTopLocationsByHttpRequestsOs._('MACOSX');

static const RadarGetHttpTopLocationsByHttpRequestsOs ios = RadarGetHttpTopLocationsByHttpRequestsOs._('IOS');

static const RadarGetHttpTopLocationsByHttpRequestsOs android = RadarGetHttpTopLocationsByHttpRequestsOs._('ANDROID');

static const RadarGetHttpTopLocationsByHttpRequestsOs chromeos = RadarGetHttpTopLocationsByHttpRequestsOs._('CHROMEOS');

static const RadarGetHttpTopLocationsByHttpRequestsOs linux = RadarGetHttpTopLocationsByHttpRequestsOs._('LINUX');

static const RadarGetHttpTopLocationsByHttpRequestsOs smartTv = RadarGetHttpTopLocationsByHttpRequestsOs._('SMART_TV');

static const List<RadarGetHttpTopLocationsByHttpRequestsOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpRequestsOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsOs($value)'; } 
 }
