// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupBySpoofDkim {const RadarGetEmailSecurityTimeseriesGroupBySpoofDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDkim pass = RadarGetEmailSecurityTimeseriesGroupBySpoofDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDkim none = RadarGetEmailSecurityTimeseriesGroupBySpoofDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofDkim fail = RadarGetEmailSecurityTimeseriesGroupBySpoofDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofDkim($value)'; } 
 }
