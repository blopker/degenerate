// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc {const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc pass = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc._('PASS');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc none = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc._('NONE');

static const RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc fail = RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc._('FAIL');

static const List<RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByTlsVersionDmarc($value)'; } 
 }
