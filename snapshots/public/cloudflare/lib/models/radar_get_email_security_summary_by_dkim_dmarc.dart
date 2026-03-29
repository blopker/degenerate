// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByDkimDmarc {const RadarGetEmailSecuritySummaryByDkimDmarc._(this.value);

factory RadarGetEmailSecuritySummaryByDkimDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByDkimDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryByDkimDmarc pass = RadarGetEmailSecuritySummaryByDkimDmarc._('PASS');

static const RadarGetEmailSecuritySummaryByDkimDmarc none = RadarGetEmailSecuritySummaryByDkimDmarc._('NONE');

static const RadarGetEmailSecuritySummaryByDkimDmarc fail = RadarGetEmailSecuritySummaryByDkimDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByDkimDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDkimDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimDmarc($value)'; } 
 }
