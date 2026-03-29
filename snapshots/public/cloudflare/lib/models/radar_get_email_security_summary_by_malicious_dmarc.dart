// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByMaliciousDmarc {const RadarGetEmailSecuritySummaryByMaliciousDmarc._(this.value);

factory RadarGetEmailSecuritySummaryByMaliciousDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByMaliciousDmarc._(json),
}; }

static const RadarGetEmailSecuritySummaryByMaliciousDmarc pass = RadarGetEmailSecuritySummaryByMaliciousDmarc._('PASS');

static const RadarGetEmailSecuritySummaryByMaliciousDmarc none = RadarGetEmailSecuritySummaryByMaliciousDmarc._('NONE');

static const RadarGetEmailSecuritySummaryByMaliciousDmarc fail = RadarGetEmailSecuritySummaryByMaliciousDmarc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByMaliciousDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByMaliciousDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByMaliciousDmarc($value)'; } 
 }
