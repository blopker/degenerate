// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupBySpamDkim {const RadarGetEmailSecurityTimeseriesGroupBySpamDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpamDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpamDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpamDkim pass = RadarGetEmailSecurityTimeseriesGroupBySpamDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpamDkim none = RadarGetEmailSecurityTimeseriesGroupBySpamDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpamDkim fail = RadarGetEmailSecurityTimeseriesGroupBySpamDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpamDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpamDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpamDkim($value)'; } 
 }
