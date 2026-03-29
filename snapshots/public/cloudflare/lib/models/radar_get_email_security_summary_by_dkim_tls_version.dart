// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByDkimTlsVersion {const RadarGetEmailSecuritySummaryByDkimTlsVersion._(this.value);

factory RadarGetEmailSecuritySummaryByDkimTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  _ => RadarGetEmailSecuritySummaryByDkimTlsVersion._(json),
}; }

static const RadarGetEmailSecuritySummaryByDkimTlsVersion tlSv10 = RadarGetEmailSecuritySummaryByDkimTlsVersion._('TLSv1_0');

static const RadarGetEmailSecuritySummaryByDkimTlsVersion tlSv11 = RadarGetEmailSecuritySummaryByDkimTlsVersion._('TLSv1_1');

static const RadarGetEmailSecuritySummaryByDkimTlsVersion tlSv12 = RadarGetEmailSecuritySummaryByDkimTlsVersion._('TLSv1_2');

static const RadarGetEmailSecuritySummaryByDkimTlsVersion tlSv13 = RadarGetEmailSecuritySummaryByDkimTlsVersion._('TLSv1_3');

static const List<RadarGetEmailSecuritySummaryByDkimTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDkimTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimTlsVersion($value)'; } 
 }
