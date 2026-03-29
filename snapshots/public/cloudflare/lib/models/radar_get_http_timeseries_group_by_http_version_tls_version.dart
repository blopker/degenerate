// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion {const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion tlSv10 = RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._('TLSv1_0');

static const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion tlSv11 = RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._('TLSv1_1');

static const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion tlSv12 = RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._('TLSv1_2');

static const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion tlSv13 = RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._('TLSv1_3');

static const RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion tlSvQuic = RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpVersionTlsVersion($value)'; } 
 }
