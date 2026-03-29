// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByArcDkim {const RadarGetEmailSecuritySummaryByArcDkim._(this.value);

factory RadarGetEmailSecuritySummaryByArcDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByArcDkim._(json),
}; }

static const RadarGetEmailSecuritySummaryByArcDkim pass = RadarGetEmailSecuritySummaryByArcDkim._('PASS');

static const RadarGetEmailSecuritySummaryByArcDkim none = RadarGetEmailSecuritySummaryByArcDkim._('NONE');

static const RadarGetEmailSecuritySummaryByArcDkim fail = RadarGetEmailSecuritySummaryByArcDkim._('FAIL');

static const List<RadarGetEmailSecuritySummaryByArcDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByArcDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByArcDkim($value)'; } 
 }
