// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTopTldsBySpamArc {const RadarGetEmailSecurityTopTldsBySpamArc._(this.value);

factory RadarGetEmailSecurityTopTldsBySpamArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsBySpamArc._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpamArc pass = RadarGetEmailSecurityTopTldsBySpamArc._('PASS');

static const RadarGetEmailSecurityTopTldsBySpamArc none = RadarGetEmailSecurityTopTldsBySpamArc._('NONE');

static const RadarGetEmailSecurityTopTldsBySpamArc fail = RadarGetEmailSecurityTopTldsBySpamArc._('FAIL');

static const List<RadarGetEmailSecurityTopTldsBySpamArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpamArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpamArc($value)'; } 
 }
