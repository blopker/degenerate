// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByMaliciousSpf {const RadarGetEmailSecuritySummaryByMaliciousSpf._(this.value);

factory RadarGetEmailSecuritySummaryByMaliciousSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByMaliciousSpf._(json),
}; }

static const RadarGetEmailSecuritySummaryByMaliciousSpf pass = RadarGetEmailSecuritySummaryByMaliciousSpf._('PASS');

static const RadarGetEmailSecuritySummaryByMaliciousSpf none = RadarGetEmailSecuritySummaryByMaliciousSpf._('NONE');

static const RadarGetEmailSecuritySummaryByMaliciousSpf fail = RadarGetEmailSecuritySummaryByMaliciousSpf._('FAIL');

static const List<RadarGetEmailSecuritySummaryByMaliciousSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByMaliciousSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByMaliciousSpf($value)'; } 
 }
