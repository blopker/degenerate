// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryBySpamDkim {const RadarGetEmailSecuritySummaryBySpamDkim._(this.value);

factory RadarGetEmailSecuritySummaryBySpamDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpamDkim._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpamDkim pass = RadarGetEmailSecuritySummaryBySpamDkim._('PASS');

static const RadarGetEmailSecuritySummaryBySpamDkim none = RadarGetEmailSecuritySummaryBySpamDkim._('NONE');

static const RadarGetEmailSecuritySummaryBySpamDkim fail = RadarGetEmailSecuritySummaryBySpamDkim._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpamDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpamDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamDkim($value)'; } 
 }
