// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByTlsVersionArc {const RadarGetEmailSecuritySummaryByTlsVersionArc._(this.value);

factory RadarGetEmailSecuritySummaryByTlsVersionArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByTlsVersionArc._(json),
}; }

static const RadarGetEmailSecuritySummaryByTlsVersionArc pass = RadarGetEmailSecuritySummaryByTlsVersionArc._('PASS');

static const RadarGetEmailSecuritySummaryByTlsVersionArc none = RadarGetEmailSecuritySummaryByTlsVersionArc._('NONE');

static const RadarGetEmailSecuritySummaryByTlsVersionArc fail = RadarGetEmailSecuritySummaryByTlsVersionArc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByTlsVersionArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByTlsVersionArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByTlsVersionArc($value)'; } 
 }
