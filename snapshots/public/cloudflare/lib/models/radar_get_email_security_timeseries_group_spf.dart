// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupSpf {const RadarGetEmailSecurityTimeseriesGroupSpf._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupSpf._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupSpf pass = RadarGetEmailSecurityTimeseriesGroupSpf._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupSpf none = RadarGetEmailSecurityTimeseriesGroupSpf._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupSpf fail = RadarGetEmailSecurityTimeseriesGroupSpf._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupSpf($value)'; } 
 }
