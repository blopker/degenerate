// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim {const RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim pass = RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim none = RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim fail = RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedDkim($value)'; } 
 }
