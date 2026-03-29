// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupTlsVersion {const RadarGetEmailSecurityTimeseriesGroupTlsVersion._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  _ => RadarGetEmailSecurityTimeseriesGroupTlsVersion._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupTlsVersion tlSv10 = RadarGetEmailSecurityTimeseriesGroupTlsVersion._('TLSv1_0');

static const RadarGetEmailSecurityTimeseriesGroupTlsVersion tlSv11 = RadarGetEmailSecurityTimeseriesGroupTlsVersion._('TLSv1_1');

static const RadarGetEmailSecurityTimeseriesGroupTlsVersion tlSv12 = RadarGetEmailSecurityTimeseriesGroupTlsVersion._('TLSv1_2');

static const RadarGetEmailSecurityTimeseriesGroupTlsVersion tlSv13 = RadarGetEmailSecurityTimeseriesGroupTlsVersion._('TLSv1_3');

static const List<RadarGetEmailSecurityTimeseriesGroupTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupTlsVersion($value)'; } 
 }
