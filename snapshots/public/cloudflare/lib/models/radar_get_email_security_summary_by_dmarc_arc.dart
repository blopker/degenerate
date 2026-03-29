// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByDmarcArc {const RadarGetEmailSecuritySummaryByDmarcArc._(this.value);

factory RadarGetEmailSecuritySummaryByDmarcArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryByDmarcArc._(json),
}; }

static const RadarGetEmailSecuritySummaryByDmarcArc pass = RadarGetEmailSecuritySummaryByDmarcArc._('PASS');

static const RadarGetEmailSecuritySummaryByDmarcArc none = RadarGetEmailSecuritySummaryByDmarcArc._('NONE');

static const RadarGetEmailSecuritySummaryByDmarcArc fail = RadarGetEmailSecuritySummaryByDmarcArc._('FAIL');

static const List<RadarGetEmailSecuritySummaryByDmarcArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDmarcArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDmarcArc($value)'; } 
 }
