// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc {const RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc pass = RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc none = RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc fail = RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedDmarc($value)'; } 
 }
