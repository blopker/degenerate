// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupDmarc {const RadarGetEmailSecurityTimeseriesGroupDmarc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupDmarc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupDmarc pass = RadarGetEmailSecurityTimeseriesGroupDmarc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupDmarc none = RadarGetEmailSecurityTimeseriesGroupDmarc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupDmarc fail = RadarGetEmailSecurityTimeseriesGroupDmarc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupDmarc($value)'; } 
 }
