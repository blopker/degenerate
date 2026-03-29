// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryBySpoofSpf {const RadarGetEmailSecuritySummaryBySpoofSpf._(this.value);

factory RadarGetEmailSecuritySummaryBySpoofSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecuritySummaryBySpoofSpf._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpoofSpf pass = RadarGetEmailSecuritySummaryBySpoofSpf._('PASS');

static const RadarGetEmailSecuritySummaryBySpoofSpf none = RadarGetEmailSecuritySummaryBySpoofSpf._('NONE');

static const RadarGetEmailSecuritySummaryBySpoofSpf fail = RadarGetEmailSecuritySummaryBySpoofSpf._('FAIL');

static const List<RadarGetEmailSecuritySummaryBySpoofSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpoofSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofSpf($value)'; } 
 }
