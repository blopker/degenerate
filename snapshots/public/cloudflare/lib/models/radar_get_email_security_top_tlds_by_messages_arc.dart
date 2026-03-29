// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTopTldsByMessagesArc {const RadarGetEmailSecurityTopTldsByMessagesArc._(this.value);

factory RadarGetEmailSecurityTopTldsByMessagesArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTopTldsByMessagesArc._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMessagesArc pass = RadarGetEmailSecurityTopTldsByMessagesArc._('PASS');

static const RadarGetEmailSecurityTopTldsByMessagesArc none = RadarGetEmailSecurityTopTldsByMessagesArc._('NONE');

static const RadarGetEmailSecurityTopTldsByMessagesArc fail = RadarGetEmailSecurityTopTldsByMessagesArc._('FAIL');

static const List<RadarGetEmailSecurityTopTldsByMessagesArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMessagesArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesArc($value)'; } 
 }
