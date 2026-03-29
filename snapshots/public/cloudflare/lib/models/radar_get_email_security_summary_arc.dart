// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryArc {const RadarGetEmailSecuritySummaryArc._(this.value);

factory RadarGetEmailSecuritySummaryArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryArc._(json),
}; }

static const RadarGetEmailSecuritySummaryArc pass = RadarGetEmailSecuritySummaryArc._('PASS');

static const RadarGetEmailSecuritySummaryArc none = RadarGetEmailSecuritySummaryArc._('NONE');

static const RadarGetEmailSecuritySummaryArc fail = RadarGetEmailSecuritySummaryArc._('FAIL');

static const List<RadarGetEmailSecuritySummaryArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryArc($value)'; } 
 }
