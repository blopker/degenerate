// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByBotClassTlsVersion {const RadarGetHttpTopLocationsByBotClassTlsVersion._(this.value);

factory RadarGetHttpTopLocationsByBotClassTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopLocationsByBotClassTlsVersion._(json),
}; }

static const RadarGetHttpTopLocationsByBotClassTlsVersion tlSv10 = RadarGetHttpTopLocationsByBotClassTlsVersion._('TLSv1_0');

static const RadarGetHttpTopLocationsByBotClassTlsVersion tlSv11 = RadarGetHttpTopLocationsByBotClassTlsVersion._('TLSv1_1');

static const RadarGetHttpTopLocationsByBotClassTlsVersion tlSv12 = RadarGetHttpTopLocationsByBotClassTlsVersion._('TLSv1_2');

static const RadarGetHttpTopLocationsByBotClassTlsVersion tlSv13 = RadarGetHttpTopLocationsByBotClassTlsVersion._('TLSv1_3');

static const RadarGetHttpTopLocationsByBotClassTlsVersion tlSvQuic = RadarGetHttpTopLocationsByBotClassTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopLocationsByBotClassTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBotClassTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBotClassTlsVersion($value)'; } 
 }
