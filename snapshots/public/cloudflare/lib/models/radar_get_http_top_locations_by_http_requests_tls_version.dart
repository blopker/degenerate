// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpRequestsTlsVersion {const RadarGetHttpTopLocationsByHttpRequestsTlsVersion._(this.value);

factory RadarGetHttpTopLocationsByHttpRequestsTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopLocationsByHttpRequestsTlsVersion._(json),
}; }

static const RadarGetHttpTopLocationsByHttpRequestsTlsVersion tlSv10 = RadarGetHttpTopLocationsByHttpRequestsTlsVersion._('TLSv1_0');

static const RadarGetHttpTopLocationsByHttpRequestsTlsVersion tlSv11 = RadarGetHttpTopLocationsByHttpRequestsTlsVersion._('TLSv1_1');

static const RadarGetHttpTopLocationsByHttpRequestsTlsVersion tlSv12 = RadarGetHttpTopLocationsByHttpRequestsTlsVersion._('TLSv1_2');

static const RadarGetHttpTopLocationsByHttpRequestsTlsVersion tlSv13 = RadarGetHttpTopLocationsByHttpRequestsTlsVersion._('TLSv1_3');

static const RadarGetHttpTopLocationsByHttpRequestsTlsVersion tlSvQuic = RadarGetHttpTopLocationsByHttpRequestsTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopLocationsByHttpRequestsTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpRequestsTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsTlsVersion($value)'; } 
 }
