// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByBrowsersTlsVersion {const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByBrowsersTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion tlSv10 = RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._('TLSv1_0');

static const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion tlSv11 = RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._('TLSv1_1');

static const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion tlSv12 = RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._('TLSv1_2');

static const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion tlSv13 = RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._('TLSv1_3');

static const RadarGetHttpTimeseriesGroupByBrowsersTlsVersion tlSvQuic = RadarGetHttpTimeseriesGroupByBrowsersTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTimeseriesGroupByBrowsersTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBrowsersTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowsersTlsVersion($value)'; } 
 }
