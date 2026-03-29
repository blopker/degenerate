// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupBySpfDkim {const RadarGetEmailSecurityTimeseriesGroupBySpfDkim._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpfDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpfDkim._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpfDkim pass = RadarGetEmailSecurityTimeseriesGroupBySpfDkim._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupBySpfDkim none = RadarGetEmailSecurityTimeseriesGroupBySpfDkim._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupBySpfDkim fail = RadarGetEmailSecurityTimeseriesGroupBySpfDkim._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpfDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpfDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpfDkim($value)'; } 
 }
