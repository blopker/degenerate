// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopBrowsersTlsVersion {const RadarGetHttpTopBrowsersTlsVersion._(this.value);

factory RadarGetHttpTopBrowsersTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopBrowsersTlsVersion._(json),
}; }

static const RadarGetHttpTopBrowsersTlsVersion tlSv10 = RadarGetHttpTopBrowsersTlsVersion._('TLSv1_0');

static const RadarGetHttpTopBrowsersTlsVersion tlSv11 = RadarGetHttpTopBrowsersTlsVersion._('TLSv1_1');

static const RadarGetHttpTopBrowsersTlsVersion tlSv12 = RadarGetHttpTopBrowsersTlsVersion._('TLSv1_2');

static const RadarGetHttpTopBrowsersTlsVersion tlSv13 = RadarGetHttpTopBrowsersTlsVersion._('TLSv1_3');

static const RadarGetHttpTopBrowsersTlsVersion tlSvQuic = RadarGetHttpTopBrowsersTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopBrowsersTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersTlsVersion($value)'; } 
 }
