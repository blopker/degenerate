// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryBySpfDkim {const RadarGetEmailSecuritySummaryBySpfDkim._(this.value);

factory RadarGetEmailSecuritySummaryBySpfDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpfDkim._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpfDkim pass = RadarGetEmailSecuritySummaryBySpfDkim._('PASS');

static const RadarGetEmailSecuritySummaryBySpfDkim none = RadarGetEmailSecuritySummaryBySpfDkim._('NONE');

static const RadarGetEmailSecuritySummaryBySpfDkim fail = RadarGetEmailSecuritySummaryBySpfDkim._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpfDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpfDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfDkim($value)'; } 
 }
